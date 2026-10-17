Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AFB36EA98
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792207834; cv=none; b=r2UjhndkEiRW7gaMGlCepopU461yzKOtkYrkg6uerGKV39GjaC4wRIP+rfXJfO2Sb8r1mPBfG0UbZ4UYMH74INS9CH6AhFyng+S9aYDqJn8SAXSO6ujojFU+jZwMVdcebRicL8dxIEkJS5uon/afmpFlGXSa9F919tQpItysa/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792207834; c=relaxed/simple;
	bh=CYHbJkCS/BQy9jSSyW1qrmBkG7S4aoUEu1VRvwa3jcA=;
	h=To:Subject:From:Message-Id:Date; b=RBbxfD237FDn2xQDXXt7QvVtUasR/zqeaUWi5rRB7JS+fGnRZmm5kOdSQ4cSzyYeurZleqeMPIDwqQm7kfZk/tUh0cL50CCJzIVs9a1/yVnNnFjNgGVl/mueXS3be5S5aIAiHIZChSvnEblfCBFlWK52HvocCmBVerKaKfgPPSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swDJ17G/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swDJ17G/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBAA5C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792207833;
	bh=CYHbJkCS/BQy9jSSyW1qrmBkG7S4aoUEu1VRvwa3jcA=;
	h=To:Subject:From:Date:From;
	b=swDJ17G/FMq6EEKT2X6jrIGQYUQ8Fl6WULNDVy8wPEtng076NThc98j0bc03ATvG7
	 QtrJeZTly9gPHlWXpfj9sj9yLrXGC72cCCFbH1hlmvzA+AdWlt0BUnhWIuCBGClSSJ
	 mBIN4EpA6KptnzzB5za7h0YXQzrN0yQE3gyWGmd+ANLC1eM54FSNCYhhLnOJloufbS
	 XtnzSsBnUoBSEDlx14xsZTdqXWrb90wDKNRoGRd+0uWsDUl1rMM/8sU/H4oP+Dips+
	 IsmHY/cyHRkv0b1OKgh8IEaQSdw21UgKUaALhr0k/pkbTiOrV5Wlepe4Xt7TrtTKrg
	 V0D608dOup7IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4974CCA463
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179220783370.6261.4829930204177882848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc876e60f6ae1b3bc9114f7d1f2879db938baf1456100147f18408e65da7983f
Date: Sat, 17 Oct 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792207833
