Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1446328A1CE
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751060394; cv=none; b=XPA9c+Ty94l8GhRX0+aWCFv7LhCG2sZ1Hhm0Rmjs4SJxEEy2MWn1+XAzEwCdSsvHIgoiIQDbk49Bw15ZOBSMn5poEWvDBN9PUAJkQ0E0wcHHfQaFlvcXxb3Xd6UwRa7JgevHtv2FjLY47RMeSAdS9jVsrAPx2D6VvRXfo+z0usE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751060394; c=relaxed/simple;
	bh=QLVGES3BlIh6ntfGImEi7PSDfI3687NrvbbyUV4GxIQ=;
	h=To:Subject:From:Message-Id:Date; b=ryyvMz0SNpnLLNQze8QEev3x9OdV2mzBlMidlGy+zQnaMpHNwW1iWTXtKVAOmxpE8l4ukNUmVJPVUZ5bTy299Z21fVYg94SKUVAdYNDuBlNtHysIzXwxeJXyl2JtMwnWW0CCzW+m2NkuXYJUUiWdIiJXvAd54iXQIQuGkMR/OKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nF47HcUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nF47HcUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A103AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751060393;
	bh=QLVGES3BlIh6ntfGImEi7PSDfI3687NrvbbyUV4GxIQ=;
	h=To:Subject:From:Date:From;
	b=nF47HcUj23Uux7Az0fR5TX63Ia1MGykmWTE4qKq34934te6zkpqBG3+SQuwU2WMuk
	 BeYPWxSyg+YP7GiSc3yu72CJaaIE10OWTW/aZA1VDCOj5827DXgrnoJUisPIwDumrk
	 mw95m9hWvpsH5cxOYuD8UaxHY/nE5xznD6EFtUzyq3YZibXeUfh1JfpcCFD2hpg1M+
	 KwKy201VkXf61a5TG52FD0A2FjIYr7tj9OxuzVaO+tRjXT2w70G3N4PvXQppbjhCMv
	 X1s2ertlRHmcI9XtLYXj/dV4cMvJ4fCU/iwDPYhYe4maBAw/oXbtSYgcvUP2/4h9GY
	 yr/n42y1tB9PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE47C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175106039358.21821.4608891193100352223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb87411e101b4a14bd9987cb1c60ca95d2f74c9d30bed51b78b77db09fd59f9
Date: Fri, 27 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751060393
