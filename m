Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B0117C77
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753402194; cv=none; b=eZbPtmYXGT41ARyZIMICT5x+EG8jxiuavtJp3fjAzy4cVXbyipakKfxLgUzkdpwuRuz9iuTssa/2cXASFnsIBOLjvMCjPfz/dtg0t1UGL9q7oeDYawl/MBKFkje5kWpijsj+JRBYa2rvntnEviEMWao3CZoKnwqb5r8QQ7CU1jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753402194; c=relaxed/simple;
	bh=1pXi8Dl3vKLJZl5M1msLTZScIIwdflJvOg1MzEfQQrw=;
	h=To:Subject:From:Message-Id:Date; b=mJO/qklzkwyfVOdypltiJ0h5eqnz0aBqQh8gUuJl8mKKOQtb9qOerToTMmpjIfSyWrzNFxZWYD+avlEl3qSEcYB9RG6s1NYtW3zBAgYeVPrl5oWLGRYJ9ImJvp2sE2NQ48FK/nU+MtmVnbzwiNPein3TPp8fsshciubqjVn+ekk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dc8ub3Tj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dc8ub3Tj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F58C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753402193;
	bh=1pXi8Dl3vKLJZl5M1msLTZScIIwdflJvOg1MzEfQQrw=;
	h=To:Subject:From:Date:From;
	b=Dc8ub3TjmOh9ZspiE0BWXAHVrUt/D+Re3gsb3E1TzQTai2mfrTGg/VKyJOcvZG3Ad
	 brfEk1D5SKVcSCJAfpFw0Vh9sk0D95JyXaaD1yoRUuE3DCb37Ww83shby2h++YWtMk
	 7LKDHbcvhvJyomrgeAR3LFvLF0EZRqnIs/C00+l2XHkohO3oi0IJDKWTzg1ra1UrR+
	 bcc5KmVnmwGnTVYI1UnRxYsoEu6jmtTL3d2JA5QUgDL/xj4EykE848ycL9uhhLXaB9
	 J2wPcKwyVXQpodfSw4HmBAVx0BKXm73O2ogDrLDvf140rG2Tn3zhLCeIn/C1cg1lI1
	 uHl6+PI0FWSlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92505C83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175340219358.31925.9955911231918857886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86061d0572b6d0515d6a6b948234d1a55b4a1ea5d9386952d84f9bbd27ee393
Date: Fri, 25 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753402193
