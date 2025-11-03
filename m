Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F7623EA96
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762147194; cv=none; b=aMXzfTDK2ieGgZiIP+GJ3R6NGOPTr+93MbTmyAnUyqh9iJEK85RYnfNNZlTUjVAO4tPSKxMLF6MQSUr8PKitx96ZY0K4ms37ZZAo7J0sQSO78CssEu3u5mZeuNne15x/YSCPm0Ha9rAJHYUaaOAj2+DSqybA/wHTePri7WrOaHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762147194; c=relaxed/simple;
	bh=P2roXMxlgVKoWhGxKbbh0X4dt0r8OlDIOy0Y3F3ndYA=;
	h=To:Subject:From:Message-Id:Date; b=Eirvd8DbPPe0N46rHIn8lIo48spYUqbUzNrndVQdV9t6P5T4rJKkF8094RFMCfegy+MpXGdUP2DfyikzIB7gJ1FytQaT8oA7uIkNPqCweMMH9R0TYR94NAmLPG0JSSsuBNs/imr3EkArUMvhY7ZUT9tHv+4JT5CVlcTjZXfEt6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cn02fIE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cn02fIE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA829C4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762147193;
	bh=P2roXMxlgVKoWhGxKbbh0X4dt0r8OlDIOy0Y3F3ndYA=;
	h=To:Subject:From:Date:From;
	b=cn02fIE/MBMX0LxuOow8UuNaa/wzj02sk3g+4KFM80XNU+CnCqj6FsY8aUSSnCelZ
	 Ps5JYpp93FrqsgxBsrH46EPgnO+vlpBXJxDnRlEkUcgzqfgVX+jO1FTjZCQmDkCFWV
	 oQOsco0VrvAl2WmHXbFd1e9rWj5dzgR3whh9M0Ch1jN1qpqmGDqm3fSBeU22K/DZnT
	 Y69XAerPOloeNtSB+WNbZgryZhR5hffbI+U90IHmq191e+dhcrcQi5hYuX7+fBmDM5
	 C9VFuWSBJNHoBscxNwlvgTRsnpIMlHULamqK04BQgK9xsyvpPvDvCPuW+sHdVjzTQi
	 YR+DQysoj/94w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94933CCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176214719358.15992.17985072564536736514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b2db803188e3e31b997a96f14b568dbbf8d205cc2b099e18bc54d328881140
Date: Mon, 03 Nov 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762147193
