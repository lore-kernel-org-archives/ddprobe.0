Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD8B1B86C7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 00:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778718034; cv=none; b=lJRuTju39QZrC+oigfwLEi9+mJVfLl1v46+i1FX7OTr+3x2/AdhyQWmLOBypNyG3CU4b3djQ4K7UCOSs7a4EbRsjXPgtE6Ie1q9k7IgAnerYPt1Qj4pTJ/fdzD6CVw1p6u+tDBvX6UUaNIdTe1SB54KywAzG1YFsp+Wt+w4lOJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778718034; c=relaxed/simple;
	bh=e3Mhk1SPIQW6hF2iHabj1uIzOeVVd91Eg23FQaPwPWk=;
	h=To:Subject:From:Message-Id:Date; b=OtISWKXZi+UtOSkKrOOgkKNM+dbDoEX9K8o4Zo/XYnHIWa6LCA1JRi138nPfcyAJoBJIKYhRyFNB9HDVi2EoSQefpBZ0gBLyADDKfFnJx5j/nWw2CigHPbVTnq2LIIEgs3u9ow8FZv2tauo5SOw7XJ64ObsEl8iBcfp9b2UAOyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ih21Dv5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ih21Dv5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1391C19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778718033;
	bh=e3Mhk1SPIQW6hF2iHabj1uIzOeVVd91Eg23FQaPwPWk=;
	h=To:Subject:From:Date:From;
	b=Ih21Dv5ORff03dke5xt/k2sqUU8Y7hA9pVcLKDyNvFnLDcCQLZFiaIdq9um4MsX1O
	 IkRPZRUZM7tHzw/gYKgEpv4WkbdP0BPXN4fkL2wAte3E6V22dcc/prJd8atEBJxxHk
	 8V4fBIkZOogxenDQTqHP5ipThP5S0HDu35RG5C8AqJ10oa1WzY3Af3q9IUGTyCSwO4
	 vtU65rOEa5MPPvVLVnVnJZkdrHASddHK2NaN/sDQcnPSHDiGfvwk98FUj+w8RzBAme
	 /pw+PdI8ioYVyBUTiT3odgiIHe1ixYccXn0HX+JWjbUorDbfDPdNoi9MYpJ/bGVPAf
	 Nqx2f8wc2Ngjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB26CD4F21
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177871803369.6371.14416797951879092579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a72eb38506d85b1f16fd77e51c120cdf754d1b4fe13b169373ddc61bc48f3f
Date: Thu, 14 May 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778718033
