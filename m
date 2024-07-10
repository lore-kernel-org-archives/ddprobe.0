Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516B91B809
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 15:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720625784; cv=none; b=PB2aWFk3H8PSieOWDcwlaMYp2iio9B4pZQDboGADqkPzPtat5d1E6JQNXyncsO/aniFNM81R3m1AIpmQYTSAncfU2asrMDnfSz3SbN/DMJhu0sxiE84mpe/WDj+KpToSEzGPrlBj4naVly/VwksK2XYo4wpsp4i5HUW56aGTuqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720625784; c=relaxed/simple;
	bh=LfYIsFf9znsi87P10zxtK4cR+lKrEYMKDWxwplBrwpQ=;
	h=To:Subject:From:Message-Id:Date; b=FAlHX/A/EBNOvli6WP3LUKwml30xKEhpV8zMOL3534zD3WZppMfoIIE6qv2GGBMPLd0hU4jndShW6ZwxP9nxQqxI+l+lfNhA2Bm9ixULLPoKrNTmgyDnlwltc/UrB3qBfBqptJ3s54sthi0AZkKoOEMH3yhL2elEjaqwO9aRPPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jam/TWKq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jam/TWKq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4412C4AF0E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 15:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720625783;
	bh=LfYIsFf9znsi87P10zxtK4cR+lKrEYMKDWxwplBrwpQ=;
	h=To:Subject:From:Date:From;
	b=Jam/TWKqUmxewOVUJOVAj3YUGgVaxctbN6hOhd6d9HMp5OKJwWaJJw9JWNpux1qzU
	 ls848FZ/Tcg8a7oqlkNNQ1UUyGe1j19HrH8t74bo8QDx9B5tMeE08uqgAHxlgxaMvz
	 EkxKsi0lJa36BCqkeaeP3hUwXfj8dyMFRKDtGWnzev4c5WZrPOpYNVMps5f5piKjxu
	 sg92E1jV9v2sK6/w8J+QGoxhrGDnNz3aJoNYT4IOSHzw1lKMJJonCyzx2G+XNz0NCQ
	 /IBScQQuwZ/dnSAjsh7AVqRZt7Ft2ELdnwAPqCcf00gBp0cQH/+Zjz2DoGinB8otUN
	 joiI1suH6FzLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2429C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 15:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172062578278.25785.11977285224196818733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc4d38b799c98a07cd29ce7af7d0da6b724c234c9beb6454ff34c248217474d5
Date: Wed, 10 Jul 2024 15:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720625782
