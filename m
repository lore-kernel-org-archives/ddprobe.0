Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269A618B46C
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735419354; cv=none; b=FfMvCt513fgXTx9GsWUmN86szUq4fgzM3CtMCoQqEVb37nlbAV35btL+qqSSENdd/385qbssuITPpaTq8KA8MkBHJ2bVzNPUFVIOLApXlx16i/yyhJsCWZWHTW4UYC473d8vcbdb4lC78+gvpiiu0OymFAFnzpSzlOG6TiAYxpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735419354; c=relaxed/simple;
	bh=vjSWMx230WTTHb0nfb1THaSJ4pM3RwRZwTCX3GkRhtM=;
	h=To:Subject:From:Message-Id:Date; b=NqdkIuVHNWyWH5Of0X+OJ1/Z2DwNshksHnKZRa7qnawhgF/ZbpUdAUUflqp8ky3htE11qO7pL5yperR4jv9CdP6LLCcqntxVexxTCtZBRD+cNo/XtekrSWIxzwbiy1pocKA4XfynUENGr1FDwS6lTVW/Fc1Zfw/DoGM/LeXCZZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQ2IY3Mh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQ2IY3Mh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D22C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735419353;
	bh=vjSWMx230WTTHb0nfb1THaSJ4pM3RwRZwTCX3GkRhtM=;
	h=To:Subject:From:Date:From;
	b=rQ2IY3MhGtaCnon5lQri/hEufsfp2yyFp6qlAPUC9EMD1nOTTRibdQ7ncPMI20HKP
	 Ie7w9EIf03y1chOoDNeUx38E5kVVWTSnHNn6Lg3aD74xUu+1hhYGcr/dZwhMCWi325
	 6qhu8fvTMVB4wA7TMW8nT8mus/ZftDgcuV8in3z222socfV0MG76HiNMa7UE51k9Mh
	 Nr91eC9zkvaQvVUpKmxVqg1tXD6ZiTKHi0Bu+b7ZwTpUq0yWdq6sCWq6IKNob/ld0h
	 RW8AYHqIS5d8dhHqVCC0tR/j1dh3OoOpXXdgHKRknVvwNAAC7KfiT1nGmg3d+CUpEa
	 cS9S1pNDbxQAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C272E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173541935362.8571.13769876384560584089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0ed5f48271c66d3e7a1baa8924b0dbfaf66b8c1324e6f049bf1c3e119aaac4
Date: Sat, 28 Dec 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735419353
