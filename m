Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8AA230270
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758910194; cv=none; b=Oi28SdTO3hd3lb0HjN5sdS/IB/Qowy1cM5ZSLEe9D4Rf0Zun6exTWbPc99Wz51Qo9G0z4aJHn+DHkByiRU36IlBPWbjr+khUG4cW31866Q6D0gA0AU5RehaThF6LpmNQW5BwewuGkibLFYrOsfoT2ZiJBRohxB5mTQiegUvW5Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758910194; c=relaxed/simple;
	bh=hKMvmbHwrPtfLJqU9QhFDiQAge4c5tIzzDu1ZPU4CpM=;
	h=To:Subject:From:Message-Id:Date; b=dQpPaeGfRZbchtA6DpY8mheV+yAm7npER8HAZY0CTenmLobjcB9jhG+WQBGD0n+gHFkJmbCl9eAHR6yo48tDvC9pfGahXyrtkKAxePjTSWhZfqLVl0IMzFj2VtrURQET00yNU62E44+LHPdvfDFGOLpyjJ8oJfsO1/WgbR7FHSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfnFQRmy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfnFQRmy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A417FC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758910193;
	bh=hKMvmbHwrPtfLJqU9QhFDiQAge4c5tIzzDu1ZPU4CpM=;
	h=To:Subject:From:Date:From;
	b=pfnFQRmylfETsbCcTaIIbW42a9+ZkS5L8FTJPCeUo+cMBpbAp+UhYxsd0gujmFj6H
	 UEI0bRfUla8A6jRN7zAJg8Prrpp9R6fc57RJyYCBv3bEYqrQ+3vw2/lpnRnmldvC1S
	 Rw4p03+fYB/W6UE4mWLDRA7yuTelJws/L4b+60gpXg7E9vtkDuGOb2fHtFmhpVZFiR
	 1TtBiHpih1H3ZWaNhzzMeRFTidgNnlDcAfvRzwxSD5GHIhUPvpOcqX1U5Jcm5d9wN0
	 tEeRliDuqVj8o4VHNSeNaC6dVkQcBaJt3MY/78BHDfBRci4WKCqkPxslgXscesuYk1
	 El1arNogrDc0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91442CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175891019358.19982.5106719278044647928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef587a86d2ae2cf264c454414da7b47c26622693569cf95355fc9973c742dfc9
Date: Fri, 26 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758910193
