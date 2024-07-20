Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB732F46
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721470554; cv=none; b=IEC97chWjWH1T/JEHqEroAdM2Smur0Jx/gxjvLsXatD8tRqfHIwr36BTPhmKZDQ7Ozsx01o1H0uwNwAmfy+B0tyxxeOk407fSeWD1lWxKNbcmEPXI+n8GvSrPiz+IM1QVdThcVVBaUciIqbMPAhysN4Fd+849l2xK+xxv5HOOvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721470554; c=relaxed/simple;
	bh=LK4hMvHVj1PE9hCGGB7JVNVTDag7VmxVju42TUks2RA=;
	h=To:Subject:From:Message-Id:Date; b=i9vX+EC+/oaXEJEXpfohd0lSIqel6nr2pyoA7hT+JK7XVyBfOFEQcmbv9riTy/FOJfX86uyCbobHxIkcYkGb06fSGv3DqXDzZy2JIQQOrAMPzcnN7Ik2wJsBcghSWNiQQOx8x9i80hCuSdTAut5vtXtpItjr4ta/TJIkMPNtajQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEp3XPSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEp3XPSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC133C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721470553;
	bh=LK4hMvHVj1PE9hCGGB7JVNVTDag7VmxVju42TUks2RA=;
	h=To:Subject:From:Date:From;
	b=SEp3XPSE+j3wZL6JJ6EKHcdRgp6dykjQdTAXVUlyonIYCuAm3f2sYifzWe3ifWGMd
	 Y8yIjAwXVPX/Kbb1zPbvcSgkPwGx9/qoxYTcR5Yf3Vx8pzskA1gskI1pQBFyYd9Ki/
	 eQVpL6HQL62a8olRd5oqP6kL4dPXMRWWOfNUz71pZyluYWmAalN/GDHmskc1dmxNtH
	 nk7fUZ4cRFbL9ISAOizJ9jvGfmRBeXmRPVPLgYxcxc6BEc6lQeNJhUt4gFtGnj613I
	 GGSNZby/OoCfVsPfCeeDpM90nYROI7zmsKQGaYFAFRNZvMnlvDKcaMLsw1RtyWPot0
	 ts1jF1f8bKbLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F0AC3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172147055361.32563.16182544696837017404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9eeb05574364930221d9c3a5a76f9f00a52c5d87cb89985bf99339249c777e3
Date: Sat, 20 Jul 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721470553
