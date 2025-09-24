Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347BA44C63
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758701394; cv=none; b=O7nnBb/99k3mTe3MaXJhQaz/2f0sVzJ36MNzhz0WoSxhA+elvjvdloIUXPkiZIJWjSUTo5J/XfP/K6iBU/ZO55itjXMI1xEE4Odo9aCLx1tsk45ikQq6udmbxqoRaeHPeTch6LWHjGm4nfqmL+OA8W5b3SlWA8ajxJMBkLhJ7BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758701394; c=relaxed/simple;
	bh=/haKLRyfxuV81+DvqzEZAlSAD4Rd0U9VAPhtrLViWOA=;
	h=To:Subject:From:Message-Id:Date; b=cuHDTRkX7Cqga9zdVtXAqtiKoUj4mnvSEsAzfhXbjc2uKXQb+ZF7NVllUQBC9VAUqbRSOTCqEAHC5AkRCOY1JBk6rEoghSNfFNZtDAMDh0Hj29uNsg/NKD9/5zAF2Y6X09Lk5L3IWay8IwACrpyfJ9+ygfm374tp1vqaGmrIv/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9Vet+89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9Vet+89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B884FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758701393;
	bh=/haKLRyfxuV81+DvqzEZAlSAD4Rd0U9VAPhtrLViWOA=;
	h=To:Subject:From:Date:From;
	b=d9Vet+89vugn0vm13MfTvX3cKkrNxvHTZ3V1eS3Bdw4VSWLps5SQLYbTSz44S/7zm
	 MlpYnockepPnyTFZvThh3CNaC79byjGPPe+dWHA6rQXG3G+NDxL2xVJW361XF5psuC
	 1eMzEbtbKYqZ7AoZ9AWZhRfo16zO9PH0WMv4QvlO6xeSgBXu8JJzcP0Aw3Y5O9xXRU
	 QZ91f/kHucIb7SXJE0q9xsA6YyxUMADN0riSQr1My3mh9lCWLT76jxwE9DFev4k285
	 c5gObFVshD/oTAF96/XSJQSfRkqgQbV5fCetOoEI8+rcm4DaX0KUS1GHPHm/Sp3asC
	 9+LyikZeZYBJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5ABCAC5A7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175870139362.10279.7351387290254422743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6373a7c5fed7d0240537932a41355c340911d4cd89cbfe14cef77ba6187092f5
Date: Wed, 24 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758701393
