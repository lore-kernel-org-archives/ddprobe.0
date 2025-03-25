Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC4325B67C
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742920194; cv=none; b=jW6amsP7J7Jnxef/LQcxRitV49TA3N3hGWc36l+kW7IWmGyyNsaLMcCDkTriqr3DxK5bc/mi5iaMD+pokXOfN5IjoaAwtBqC90jt2UnCzMRxJ4NIb7Rsg/EDBOYaHb/7FyeUZADjorIW7q0M//o4NHACPrv1nIidb/lm0vkaP+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742920194; c=relaxed/simple;
	bh=lnqRxEteiIeh04pUqU0NwYdHaQMBdPn46OBKPO0sz7s=;
	h=To:Subject:From:Message-Id:Date; b=U3I3Tr+8MA2t1V6aP/DDf05y+VORM49oU1AP558IqkOWl2PVbXggvBW5GJuyAwQw965y1AiOogpGKh1haMqCpEDF0rvugt/Z3f4dJHlUoip8EpM9d5I2Nr5BeuZcmaSGRETia19QTMp3fb9kdAlzlglivLQthZdGAEds4h1ubU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZzCiiYr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZzCiiYr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E1FC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742920193;
	bh=lnqRxEteiIeh04pUqU0NwYdHaQMBdPn46OBKPO0sz7s=;
	h=To:Subject:From:Date:From;
	b=BZzCiiYrin0w5ds/7CMO9XtNo3FXxqSNuR7ZXKS+tFsWAopCOGNM7/VDjnPeL2Ysd
	 bck67jplWCqwD2UJrClaIN0ssyiCkmKDF+YMic9AK/2StVJQmtpC6Uq0zSUY7hSK2z
	 BikZoreb21mDU3nu9cNlRtEgxhfitOuDE+byrVN737ClRFM4ETOfBzhMb6bd1ztUtX
	 ujf7FdlxbX3cxcUVrTU5bdzHj9EZt5jKLSIYNyW/LKViF+FhElOxbNgr8NXZyUDmh+
	 nQnit7nqrtaLHdlYRRqESeTw4Yg6GslJZtBScLSRgU+UdKd264qoUJK/YJhjJeitTa
	 4AUvb4CsW7auw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DDFC3600B
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174292019360.29821.12622914705214472973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0075f780777cccc5b3f4212773afabbab8ae18f6b93cef5a93109c44f28bb15
Date: Tue, 25 Mar 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742920193
