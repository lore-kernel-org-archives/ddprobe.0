Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE8D2E762C
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771604094; cv=none; b=fLh5XBKoKvqi0r6nAojE7XII2pho8jQWx1KzwVxlWBKYLat+4HBfbGVCiqNFoItxFit0NlS/WiDSnAcH4WqQeUIqFRudKSvJmYL0xjRtJVCfCldErnGzQQt7d13FIdvZoI/+w+hb2nBuqNXVgc5YiMnBiywLgaByloOOV24iACo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771604094; c=relaxed/simple;
	bh=X1drj4JGYeg98KkCvjv088NuhRZPIoDK8ilaVl0rlYM=;
	h=To:Subject:From:Message-Id:Date; b=tsyByFqC3Bsk864TvqagdiPlL6y4MfyyAT//3N4+bE+hf+l8LMsIWbT8MTicrzDWfXJrFP9aswVHt+sbv1ksEhrOOWGo2rwhd7jUO+4jp6Or0X/PXVboNX0AneCOHBuBP7dm1PkWRNJxt59MJu2XEL3d9r/D0DEFHwm80WqeY84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2N55jBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2N55jBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1AB4C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771604093;
	bh=X1drj4JGYeg98KkCvjv088NuhRZPIoDK8ilaVl0rlYM=;
	h=To:Subject:From:Date:From;
	b=K2N55jBBN9w2z1Uu7q84nMhLM+rYuMaw2zi5fXhp6tylxckFNMJpJu6In7LXX9Iur
	 bhxzqrz7fQRo4SPE5JlV7fTormgOmwyG6dtvnA+XJsRwTQj9KhjaiReQQfOehWoKDw
	 R64UiN2gVu9WxoLsgGKCJG8aaR6+cYGDrQjDyVY3mzsi4QTQKVZdsV08LncUrf7tCz
	 bFOSZiXdo0SwZF4ABfSlDH6HvfQP7G6bDa2ctat/YojvRMkV56BV2ngP8MH3T1831U
	 2x/7ImeN/Ch9JBOFnkrB0j1f8WuCRhk7gTnVXO8o5FiO86U6eV8yiEflBVT4RPBEkH
	 6a0m7ZvvCghYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8F4C5ACD1
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177160409361.29414.1087102942767907764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e05b715ce5439bd1022be3cbabe25e51b48a870193de9a0b209e742247074be2
Date: Fri, 20 Feb 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771604093
