Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A62094A5C30
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791312034; cv=none; b=XstCwQkqhs0blxm2xt/XZFssqCbp2o/ELWyasgAKy4AcnzAnMWftXTgtuEFK2cWrIfdyXXOv/2nY3X5wHkYFb8QmuryzRvL3g0i089jj4xKutGkVPVxqZphApAk7ci0i0X1/Zmp0LQOYxa5q/VdUsxA+wzaE9o/RgVIb84Qb6Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791312034; c=relaxed/simple;
	bh=kxTwD+6H5UicptXPezHnDfOUaSaL1poWRdvXmwhEDrM=;
	h=To:Subject:From:Message-Id:Date; b=D2qjIWqoYY8H8VPKTMH8SqY2+Jr42ybTPH/JoAZSqqaIRSgigDSAfB0mPyP9RxujqnxPZNOmpb0z9f8tHJyhY54CXXkbvt4gLXbfvIdZLorBd87e+y0Ckh9GSNxZtY+TE86K9YMUjNeHtbCeZ3RzkR5xU9wavqTLbGj7o0Et9uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXkDVqU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXkDVqU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE16C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791312033;
	bh=kxTwD+6H5UicptXPezHnDfOUaSaL1poWRdvXmwhEDrM=;
	h=To:Subject:From:Date:From;
	b=RXkDVqU2n3sdjfj/ubw251zxkYdM7CYa5UDMsopjqsU0EggnREF2l+nnaNtCy8ir4
	 b4MUeHSzM25HxQmtViBk6+t5Mpq7kp/5H9vm72bxf5+b/x5r8EzDk/bhp8ShierGzl
	 mmvn+cfM33WE2d/S5cLNBEduZrhgR3HsFDldyCoh0k7ZeN+PM8oqN670ORigr/SxjT
	 lv20Anmo892CbxAtO9ZcS/E211oHtoNC8j4iatePZqcHpuW/AO42Dvi3LwpQ40QoHd
	 c3UmZ5rjQVHZaVrfw3xQeEAHNNdB2YsGboGTQCKbB1pR+R+FO51wj+XnaQNwRkh8AE
	 mGfhTaGra71Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA508CA5FFF
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179131203368.5157.10493583859009800431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92e98ef341bb43fd28a90df5d275659be33a960b3c991172f613e7f673bd84e9
Date: Tue, 06 Oct 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791312033
