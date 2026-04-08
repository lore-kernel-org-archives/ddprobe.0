Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB7D3D3D03
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 14:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775660134; cv=none; b=dw3q+DZDuN6WiwETuP2uByecsH29gdFQAJwjtT0uNVWQyUODa/nY1uvRlpWcsrp6JPKcz+l7iCX50ckgUM3kClKB9ZL/XWcKNWVqeUczC78kuQY8wawC53Cby6hRKb3jPGpPggDEw0ncYfsHU3S/aTguMV5OgMovZxOPYbqdeUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775660134; c=relaxed/simple;
	bh=Y6O2XG84iHbsTlZFG/dc65lToGxGSkDyTcdjZzKvmec=;
	h=To:Subject:From:Message-Id:Date; b=AHolCIuH7lgcCSckyz8tNaULUoMm3A0UVnTEn90GYLM9BTEJbFCZx7QB480wTAKKVtbDrzb67JNWAYgeTZaXhs3MBbe+vsr/8dDw/E57OIyGiGM3IUAfmiiOjYmDvoHrpGruEuya5TiXD7/QLTi0aD2aS41J2aDb/u2yKGaBTvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+eaijj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+eaijj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF193C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 14:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775660133;
	bh=Y6O2XG84iHbsTlZFG/dc65lToGxGSkDyTcdjZzKvmec=;
	h=To:Subject:From:Date:From;
	b=m+eaijj5q4jtQts66xIShzkSfzvrLh1dFD+NbW6ZEzqbub2w7UId+XUt+cYakRXRf
	 mJwg6V41/plZGIV68mEHU1N7ich8PlqAt6I5FUhsYUujnuN/fCtFFDaYDWISW+d2RI
	 sCY747lSe0fuyCsQhGB+ZQKzZDX0YqTIYKPo+QkGse8gCsvRI6xlyHVMPiCqqUWOLO
	 +DDS3oOG1M4t/7TTaWLYW36ELzWlidneyf9dC/NfYNT/Lb6vIlAaC0MPdShWMCm4Az
	 hcMTwPobRhlxFkwFhSLV4ujcCI0Zcit0XHSkIPo658IFGAATNEYfB/oawOliS4da1k
	 nGy1bP3FebjUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6B010F9945
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 14:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177566013368.30140.14867539578105753013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2677b0403216105c1ea7faf3f313c2670d19d2783b700606f8e0b829acaaa5d
Date: Wed, 08 Apr 2026 14:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775660133
