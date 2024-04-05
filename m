Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206222D022
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712356697; cv=none; b=fkDRttUBncjZ1wdSNNByvkB2Dp+Xcke2BELOZjStgWqrVN1pJYdG6eD1eyYBo+rbZW0wg5VpFc4tm84E9rqfuTqRDnJ865MfD8W+xdM6OX6P4EVuuPmPfqaFjEOxGqg8v/cINJgKCTqT9CfgMPmpdnecATwerf7i137YWj4GKMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712356697; c=relaxed/simple;
	bh=i4Zfv3V3dGG4Y+mICLz3DG7x0NWe5J1CS8IVSxpjSJQ=;
	h=To:Subject:From:Message-Id:Date; b=Zsx9nq/8kAWXLpR19qbOrSL3fahj0zQ3FzbjE405+dOONolXS1nLQDDamHyGgvIoXpsYCVdbR/yA+UGrUe5GVFT/E30Ov+exm8Ar1GUDDvz7hW4JxEOPuhppAztipm8U6eBERS4FFm66aCCWnlC/xpgPtk6J6EFDEMpkj5gmHXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+erTyd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+erTyd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AAAFC433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712356696;
	bh=i4Zfv3V3dGG4Y+mICLz3DG7x0NWe5J1CS8IVSxpjSJQ=;
	h=To:Subject:From:Date:From;
	b=U+erTyd3F60BB+R+vTyGu7JntuMTx6gQW+AM+97pikXX+JChO6QG/oiJxOAIdwify
	 P6ig12XMDSV+CRg3mXjJLpex0euIoGLXmn5A55a32Jt9AhEKhgt+j/VPLVPCBr/Q4M
	 vF38gxj+ZdBX6/SASDjxvOPfaSEudHRGzQzBaH4CJnz0JFGG45DK9TjrfyA/+D8Hk0
	 AK0obeKpsQU8ApzrGH3FIKBogK+xFeO+VAt/I9DZe8y7sGT6Py/zNeRdkmZIvlPjdQ
	 hyRwfHoa96OawJllTNwbDz72p1AI415XI4I34kLDjTMbuh8kEcF0O6McPtXGQJG9vo
	 msbprDYC6P2Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E92C3A59D
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171235669640.4420.16804415461428650868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c1a5546c977fe07cc068a505a5981c52840c352b7c20dde7568bdb67a8da4c
Date: Fri, 05 Apr 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712356696
