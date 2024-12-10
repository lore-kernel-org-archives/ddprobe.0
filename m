Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA8323DEBB
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733846754; cv=none; b=PFkDwZdnqhmnGzchCRZRmXz+caamW4GBe4f+lmVYMjMX+T1uFaVui2CIAVztGAHfSBh7ZrVEVw64v0bF9ypGqyAGh2wCGEaT8sxIE2ARJ7Tw5GmxglEDUUp2pVr11js6ruRNdrd2nMTni4cNe3X6fTiwA/MYzUx8ySKJ8opeGsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733846754; c=relaxed/simple;
	bh=ai16K43Z7PKZr/a9Xa3qAwShGW2BCFmBNFz973TBHwY=;
	h=To:Subject:From:Message-Id:Date; b=NXcYoq8zfkbdTNPcreTFwtMuXC7XbVcegKCeualwDEpt/WB3IzchgHbzfD0bU4sx07/dl3s/UArebTTynO2Ep5V49dHBRSevMLp+PP+BCvJMEHA1tCZ5M3tEjqQKRnQnSLyvi9PuoEJ/sCJ9V4eV5lXJw69Oi7IrH03USbmZTeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0oUnBRs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0oUnBRs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6CE1C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733846753;
	bh=ai16K43Z7PKZr/a9Xa3qAwShGW2BCFmBNFz973TBHwY=;
	h=To:Subject:From:Date:From;
	b=r0oUnBRsjyjO2ssM8f1mp/iz/kuGuNlWTYuJ5BGcNjUxI4IyoH0Bm7fQ6JNIOLh0P
	 UgzPDfy2399APooNCrXh3QvvE07csyH+MZZEbxRctX4kZOAuMVCPzeRGDLKeC1rIWJ
	 fKwIRHIffygQHq5qagWCcWPSkXfd6liKjHNyGsiUY0rDRMie29DD3hdjPQa3nExbN0
	 U65MqOpH7zEg/JbQp04Mda2qO0E7bHqbigRf8W7r1syxnwEyupfbQ3EMY9Dk8YA04y
	 8Am0RjN3TQZ4bgMq9LOYx+wEGT/fIbYayljgUL6qxB3JYdVQrZzBGIrAIN2iAtz/Wz
	 ifllhE+bwVeDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB93AE7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173384675369.14002.12546902162927530500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f6352e59504dc6536bff171e8e017d5975cd81a87fba2350d206e3892866571
Date: Tue, 10 Dec 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733846753
