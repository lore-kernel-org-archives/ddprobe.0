Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354A8344DB5
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789297234; cv=none; b=ax38r86JtmqgMY7mqJJ/42k31o/yVJY6jvNrSmED0wH94O3rp3k8fgwVwv17iPiUa6d+Jz1WYve7LYZzQhDV01ZqVk2ax3uJ7wb6Pw7ZeNoDtXVwiFI4sGgA/jc0/q6/pPZQR06BtQtTMFMtRjTb1nAuvPcYutUhibZux+A0zRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789297234; c=relaxed/simple;
	bh=zTdL6dR9kprMlE2Tmr1GfPnkh8v6lPxvg73C45MWSRg=;
	h=To:Subject:From:Message-Id:Date; b=pqMkQH9RV8tUUux4K4QIC6vS6cPZJKlffzMUYPYUau95j7/OUdIQk8qVKqJATeFwYw+LoD2VdJupFo/yLpJVigv/K4dpD/QbcPY3hi8kpPjUcnBSl/h5Nu7EsVFFu50kbwc3HXvjqeMFy7uvl6WMmloSPvhcnpDOtfVwbA7lhCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwvAGjpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwvAGjpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BEAC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789297233;
	bh=zTdL6dR9kprMlE2Tmr1GfPnkh8v6lPxvg73C45MWSRg=;
	h=To:Subject:From:Date:From;
	b=nwvAGjpDa5q4GSEQxR1mc3hj4qj6WXmblJZzv+Dk8w1f5uZ5J2mpqtpeeIi9oTAIl
	 yQyEqVMR3zL0EWUbpAEUPlyfRRagQSnMjH4ptjzk6apFjgU7zIup/M5p0MDCq1LBUP
	 Qxkakhas2bCpPxAR8ty/o8ecalG9ZSzZ8ADNgyz1eSq7A/LX7H8YPYgEclYHskCF+l
	 SQASJ+orXFLLKhRSGLC8reYLLJ4Fi5IoFrHfJSMI3d4sCLKmc+nVky2P6CLo4PzaIe
	 uohSi2/pZBlV+9vWOlfNhSdlzfIXfaA7DTHu1TdpV4oczvv4zrPS4tDT5o/ziHkf+5
	 WM3p4VCPBLkSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4E4C88E5A
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178929723368.10362.371961456421331109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef9f42687b705c9bc387fefa745f9cc20a48915e4707044cd7bed6abda04bc3
Date: Sun, 13 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789297233
