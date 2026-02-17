Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D0936F437
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771349094; cv=none; b=oFqOYm9KkKemscdgrJnu+BTb8rJVcvoysD14kQiYDKdn2LLgMIh3VcgLBcSN1viu5X4PdEGlOZKvPsmTyy9uLmQt42YZpqsYRUJGKYJQi168D+d8jPdN9JnXzHwf7/++Q34rfQHdG1YOUquZG+d4ouxBI97QHJg6um8dKQlVitk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771349094; c=relaxed/simple;
	bh=R37h0sG5sW7x2CtVYTleGiXXreZBj0GKc5pUT6wvdlQ=;
	h=To:Subject:From:Message-Id:Date; b=mU2/D4pqmuHzshP82Guv+3Q99VCbteVGayHppXkQ3ZPmitxcX7Yzmg4+1pNz5KdCmb7PmWRm56ndV0RLttnllkn0RgcLzRwt3NBHU77OL1MfQHFbeS472gBPQSQihSNnZ6NvzeA2Ma9gGCPtFPLmfVlasWx1EFzf/VSr31wSqXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5YPwR2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5YPwR2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B57C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771349093;
	bh=R37h0sG5sW7x2CtVYTleGiXXreZBj0GKc5pUT6wvdlQ=;
	h=To:Subject:From:Date:From;
	b=h5YPwR2TXktoYZTTf8Zk19MrVJqAvW66ovVsgg72jVeag3STV5PrvlClBNSQRa+rd
	 /KTjxGFwj303zHc2/vUWTDxQLzShJMjeC2fsao1HY/JyMDZlKmdiIJslSls6N2IqlP
	 tjstt4kLcHb5qljgJ6Qwm5uLkN9FsKVXlgANcYCrSQWsEG011pNPIlJJ4JuWOTlC3y
	 j6i6oXDAqqGnngGrRab1z0me43aS3MypsS2ulD235AhC6/CmIasdXHFYdd+gCCZyQc
	 n+K8LVsoyLw+jLZT2Aufek4l4poCOxILvAuL3IZlX/l1v/CXjwW5bh67pSgzcG6KhB
	 R3GJl9Ufh90oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4212E9A020
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177134909366.9411.11744663224587668875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ea7b6b74924507096083a5b6968318d77020afbb92b4f3b5e2809902e831c5
Date: Tue, 17 Feb 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771349093
