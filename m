Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668AE369990
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791154834; cv=none; b=EBQR062S3xwpmHZuzkffG5iTllRd1jpl6URnMawcpaFHNDzSz62EgGF4hlqWfaM054PmDsakrx0c7Kek73tVwDqiAeL6CdMHjsEb8cqaennI10X3kwB1dUFgKgaIdvyVpY5PegbLxe15C0/p1VqMNmQEqtbcLZWb0q4Pm1hAhWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791154834; c=relaxed/simple;
	bh=/qjw31BaDbcdK8MbDkjT5zZu/+h/sL0VFQRPwpk+pkc=;
	h=To:Subject:From:Message-Id:Date; b=qxOlJ/mVw/hJt5VMc7107CYCKX72Gd5UCPLpufn63nm1NpyNx5x0iplWbZoSJCbSB3o9kJMkLBWFakJLdqvyf3+g8pHVNd6YOIAJBTPf9MLqQsfcDbDHDkFQvTPLaogKwyQQY5sz1xF9H6TLLBZaxaEAv8ItCzz5r3Z0cRBe5/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPwi/D50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPwi/D50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FF3C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791154833;
	bh=/qjw31BaDbcdK8MbDkjT5zZu/+h/sL0VFQRPwpk+pkc=;
	h=To:Subject:From:Date:From;
	b=DPwi/D50pPDPesWQFvMv56RKtPmUBb2/XoHU5U/G+A7Vh/bDsfolY+LTGft5WrVfk
	 wEI++CVDGS/4zjATTw9gQe/SOeCxtax3xrKfNnLNzdZV5HhBLe9TAV0w1xYpi2vpkE
	 wD8xd8105r6T++kJN0LWo2x0PBUI1mmnyHxVvg1xEuJ4dEgRTFs5A7+GeOfuO4tunx
	 3MRpncBK5nCMWBoNezRxkeEgJIWfkgUrvSoLP9zlaMebpqB9kIOVR0Mr9V/sp8wXof
	 chXGeZBB13I66RemwIsgMkNT9OxSl4IFDEWAaQ35DnN7eGhN6B2G9DiP5Yd0wD9SzB
	 6hKads68NYyYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2842CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179115483369.3892.16974257075632362250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c389dc0dae94b5ae887b63e2385c8233dff01f5bf64e5f472466101f81095988
Date: Sun, 04 Oct 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791154833
