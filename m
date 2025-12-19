Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6FA25EFBE
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766109234; cv=none; b=I/EWyfWyiUKdlkAU+3uPNFmbJk6i4bVA/eiXILXYsjJGeK3Jq1ddP1A081SxOSrkwy2fnzbwHiRJqT7jWDX6gGV9WicEgJcRg0M0rV5620J6p0dRkSMobL/SXUKt7yI6GtX3pnAyvs2anxZXv2Cgykvp9QoMQkhf0/y8g3DlMhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766109234; c=relaxed/simple;
	bh=9mo+JN574fWjyumoM08q+EIMdGNjPquzH+lw4RH+/0c=;
	h=To:Subject:From:Message-Id:Date; b=tIeX5QCmdi+TdVCkVUK2ZUMnHDNKeeavGpNvNZ+dOQSFkD9t950ZN6i6bWxVqPrU/tJf5DYpvbp/gGF4xhotFJjF9oRwgo/iAss7/QOv1fnmGf1lr6Q5MR/CDnjf7BCz0x5OJCG5QJsg+ibeM/nwDkYz1SkRX/lIxfNq2DWq9XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMK1EBVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMK1EBVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B6DC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766109233;
	bh=9mo+JN574fWjyumoM08q+EIMdGNjPquzH+lw4RH+/0c=;
	h=To:Subject:From:Date:From;
	b=JMK1EBVJ76P/oq3PPDTbUnMpEiIQ3uxteWpyX4W1SlcsJ+JV1+fWusUUTfF7f9Ko1
	 rhiWmW4zKWPnQpmjxQ/78AmdY6TmmHRqFDxkmDq0lkMW/KWMhdjncSQdjYgqPRr3gh
	 t4f2w0qN0MyuYm1fImZFVOlWCVjrqzW+vpIELx4uOiTqzevVXRMPsvTOQMUDCV8ri1
	 ZOWARMAbIeCx0nooJ30ehZnHufR54T17WoGKRli6IIMnxlayNykRSsMGxKOpOR7N5V
	 Dql+f5vamg4rSx3/qivLQj7qNFPHXfx/P5E2qS5WwrA3NwPIsWSPsfFrg1hF8QLm2K
	 zna9hIcEXZ4cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950BCD711CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176610923357.25335.14236201267641020346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8cc93ce8ba01b71a29814c6161dd0be36b3d337b166d8d4ed6b84bb385fb196
Date: Fri, 19 Dec 2025 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766109233
