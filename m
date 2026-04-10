Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1783E38757D
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775863654; cv=none; b=JszNQjgQUDxEFQDyEOX9C+oqVEs4mh8XRnEkv7HkY97Mku03DRbz+1cnZN+UqWP5D8hmMpqTUsxaFT1vmHDHG9XhvwDh+1OovkUPIpXUhUISErK6J7PWQvhwm8r+aNjh54E5BE0LLeeWt+A4gVXwCjdo3ZJkETkcBAdSiMDrunw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775863654; c=relaxed/simple;
	bh=FVRvmYxUGWD2p6fAaffZfOgZuJtGRB4icW9dlkCIEss=;
	h=To:Subject:From:Message-Id:Date; b=kQYXml6Tn2oWpq0eAQMv5lWBn8I4d/gp0uGFqT7u5LH/7V+FRMLQ1HK4X0nXutZ4b7OZpBLm4/qkP7zXg8uz/8grSpc9SMdzj/2rW+iFGLbuxqL6tmTiuagA1nkcBanmbMgeskNw1tLtWnv4+EDYr+zObz9hIsFL14VY5k789xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwD4YYvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwD4YYvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE891C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775863653;
	bh=FVRvmYxUGWD2p6fAaffZfOgZuJtGRB4icW9dlkCIEss=;
	h=To:Subject:From:Date:From;
	b=MwD4YYvVchmoVGYtKI/9wdQypzL4RtHALgGpE7wBNVWtNvz5fMyU0DnBmqkBeSNmB
	 m3FZhcJjWD6pldGeu4N5Jn2WXMvPsmIXr3e7MTNX/u4MlELOGuH6WakmTrQRS8IyRm
	 CUL0fdup54mvw/+7rmvvj2KNAmwEumy/SA6RQiItx8JhWqiwfGbarHsQ3wbJsry9Ps
	 vq+//H9OJYJpjMm7xbmee8R3VK0FVAq4IbmbRrlTgEiAQ0wipK/01dDFCZSjF3DIFb
	 rE5Z2DSfmIg+omhB6mNpXmSPhYVsgEc3QZP8sk4cYOw3a68xYPZY2lKogchqfiuSRS
	 i3zGEBL71ZAsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB091F45A0D
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177586365369.31098.9507758000162840616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed73658f6202a9e03f647acc3e060f709577436c57aa30dff8b4669fa8176e6a
Date: Fri, 10 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775863653
