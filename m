Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C52014A09C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737523554; cv=none; b=EQjpCSbq9ZbPy+x7THOUJM++NYTfOKYwIvg+W/3q4sj/7oUYrETkaE3tn9sATEiRxu8eE3KK60cMsxp54YfSjWF7RatbWlJPEuuUijzyZxqrBc/TW2PSlkp5cZ/IBaLPaJBesQ+sYkyJZkXLEbrXeAGzt4Xuls9Q7GsGeInSooc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737523554; c=relaxed/simple;
	bh=YCDheJYUgDd7MgPsvldh1Nr8c4Bjx5xHf3E1E/TxuIo=;
	h=To:Subject:From:Message-Id:Date; b=Wg5IQyoN0aKOGvCgORolz6n9olOKc2LLOJ5dFT5vmpfUUDxe6qkRhqsrj47avYpEVwBig5EWSjO9QwKL27r3a8MDkwj4/A49DhMD4VxunueYeNCg4cZeLC0xr1oM02SPhI2FHrBYKgS4XIUTnLPXvy/DAbdjBFOGzy6zdGA9n20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/IC570x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/IC570x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBD4C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737523553;
	bh=YCDheJYUgDd7MgPsvldh1Nr8c4Bjx5xHf3E1E/TxuIo=;
	h=To:Subject:From:Date:From;
	b=k/IC570x9n4cX5fiPw1nrsTD/7Yc1DXfTGic0RyPT9XXA9ttW24tFcyMnEngkveJe
	 fE9jHOP1Dve/1nptpPvW4Ra0gKIT6bnTUYA4NsD3q5Bx/T1xpI+2QZO0RaYI6UcM0q
	 UzjBJ4cwbUJ1pW+atTgbybzxjnK89ipn/7BO/3GRnWfG6o7Xm7Ltcg+rXE5Rxn4Y4b
	 erN4+JKhXOiW9eWDksz5RVXu9tOESKnmDymPBfxTGyuomr1/pN1a3JOSTvV0Xcl5gs
	 SV5ADEkIljxDBPO+m23nSzAHR6N1uj55iQCw466lMEBLFxP3buFYILbU2GVSMk6QJS
	 nBP2lqVvq/0pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916AFC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173752355358.21603.3351710171870809420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b68010452b7c3da3673bbbbb3f74799df0a167840cd00bb9ae5e35b1dcd95f5d
Date: Wed, 22 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737523553
