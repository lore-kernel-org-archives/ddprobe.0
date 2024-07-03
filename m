Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E02713F45B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 09:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720000523; cv=none; b=XcxbnRcnLtEaBHQQSKg7+93gzGALojk/1/2CSVeEI82HrFSSSVx+PfhqCYek0WGuYN1s4VQ1/3yc2fx3ccLJjAAH6zVy96KYVcwwCyJpGTjofOkpnCC5Nj52erbQ8xVeV1rXWCciQli4ZoqUgnlXCip3PLpeXBNdxiWUSKJPDj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720000523; c=relaxed/simple;
	bh=yhHunnEGc7xejDUnQRzmxyGvdh4URPn7iwzyo2gE8+c=;
	h=To:Subject:From:Message-Id:Date; b=RoR+u4S2kb5hnLNx9AfPsQy0Le79Y86UkyjvHTfa1lJF936NN2XMjLBRTwbfN4cFyxOD9FrNGjVUIlcAVF2GRNxLU27/CbMgDnti5jN4AiEFLC921La/fBrIHpmLtkjhlc1U5ylUUld4npr6KcnMHc+3WvUzOycwZfJtjz4H0NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcuG1My3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcuG1My3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6CFCC4AF0C
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 09:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720000522;
	bh=yhHunnEGc7xejDUnQRzmxyGvdh4URPn7iwzyo2gE8+c=;
	h=To:Subject:From:Date:From;
	b=bcuG1My3aK3AA5Kmh9JqspXwvjGRGGgYI6HNYUV3o/++q/SeedwZJdSc32m8PGf5O
	 iTi+akf3M4VOETMo7JZvGCOCquhDOiduK++bLrXUFFhOncCE6PMsMxufXNDkYswEkL
	 x8HuzD6uINdS+NkaQ0MiiYaux+u5BGxwxoopuiQNAVwgaGcIl51inHRrjzIxraFm0O
	 RucqoUharqRq4lLRBsCaEsWI9CkjPk3fnvol7xf+a2YY6uv13w1sIHTZSYECS9mZxH
	 7UzbK80v1sKRbepC82qOERCtG9Q1OUyOCornMAVHmLRPYBPScCaSO8914JLWqEcGUz
	 K+Yi6jF3sTPog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE876C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 09:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172000052281.27845.14743660898325344160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08485871aa15a5e8a1d171e6aeee95effaba1fe20ca406642aadf765bcad7f24
Date: Wed, 03 Jul 2024 09:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720000522
