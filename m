Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A331EADA
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723169754; cv=none; b=lGozSnqOOuErETwXMD7HFXxYoqqxr9t3Wtst0fBlEHf8Rq7LzCMzqU0Jt9UjEEsjoH+wyo/Ty+Rokc6XKMwcF6oA53TPwMtsSXwfbHDvOQ2EVJP8IB0s+lbBWrfBgr+lh/oGRE1Zpdp/3ehHSHhVenC3supDYIddxRGX/3A15Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723169754; c=relaxed/simple;
	bh=Ws7mQzLYu8JSr89dd9KxlCaJLx2OeuZ1Wx+nSNFr+G4=;
	h=To:Subject:From:Message-Id:Date; b=WuhL4umZrDymACenWCBtAZ91kB3/tfoGCsJgBk2QDxq7Ar359voEXHXFuWti89mzFQ1mNM2ugaHQ1es7yB9eJeTYYUCv9lt5cPjYk6DJ3ywcqi0/Z6pV/PnLe3810V3M54uYqDqAsaLTyZPaLnY71xKaHYL3GKjbYrSlD/tJ/wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qs6mO+ow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qs6mO+ow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC87FC32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723169753;
	bh=Ws7mQzLYu8JSr89dd9KxlCaJLx2OeuZ1Wx+nSNFr+G4=;
	h=To:Subject:From:Date:From;
	b=qs6mO+owZbdGAy01Aa9U9ipNZ7iY+lgAIyN9cU1yBvavuNJWkImwMWnvGsX6go4Xh
	 L1CLCvYTIIaVBNtZtUyojNDuXUN59iK2bw4lO4SlB8Imat1BYgL97wX2iXRODHk8V0
	 zorQwvBytD7eOvYQEeH5wYqnKrLqGukrrMENpFEQHwCA1utvFrzBr2shavP/pjcfuA
	 NQlLfxmiCI5HthkI9Dok9EkEMPcAce5kKInppuj6w+tRrLFDZ93oCvrqVLT2ET+zBK
	 nAdnCx/PDA4ImWG4Jal38G9uXQXCXmBsd9rNPBbWjq1fzc7oMMT1YCcLVpOnzWT4f1
	 jDkCOdPr6k0/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C697C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172316975361.24323.17279863789982598123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98d94c00d9c7742f5111fce6e639de0de93668a18dc986d65c75022ffc5001a
Date: Fri, 09 Aug 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723169753
