Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B93DA50
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735431354; cv=none; b=Xuy+u+8PPAVOG6HolA1K39e9KjeJdFwN4Oi3j/qkghrLDb9uVeOHJAuLEOIq3pgN/LjBQdUeHVL5QvbYdpEOkljIPomyKrQL4uU0KQqljssShT+wTWsJEYbFp7DhRHzA9bnXctl6taYcKdHXrLjDle57ebolzEw4fVyTXF1r7GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735431354; c=relaxed/simple;
	bh=SKjXNlkHJhCJMolYdLVvLS3CtGxeOdZAXphMbi1zaAU=;
	h=To:Subject:From:Message-Id:Date; b=U5Ps+R8kjvC5E+w7DKMfDpVSXxiwsaRBXuETT/VQqMT5hNTUmWyjl4+FXIOlNJsezsE9y670GUpLoUxMsO6ApLUwewriqOuAvqd8nic9DU0dG7/O+vYlwyt9PyXThBzLES4uylqFN8E3M1t6QAiEOaOQK9UYHD/2WCODYjVGxIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGZUU43M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGZUU43M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B391BC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735431353;
	bh=SKjXNlkHJhCJMolYdLVvLS3CtGxeOdZAXphMbi1zaAU=;
	h=To:Subject:From:Date:From;
	b=uGZUU43MA8ad39uujr/mHy2Z8ijnxpD1g7JaEL3zM+kx3RMgDb8YAfpjcIac6gc9y
	 1B1nJEKWsBj0vM1Ey9YHjAeRMshVDid6ruvYOHROZfHoiseSH3o4DKGWp6xzJ9MoZx
	 WdMfIIiWuHi5VHfdMj6zOLNn4IJmV2c8t4xtxZkXDE/vNgzbN+334YO9K1gdVwOW5f
	 1wH4uHUSRDECCJ3LnEQHjaEWvAjQnK7AVhBknfNMYOJp2qOUitqw5EMYAVJdt9qURT
	 hxmja7vuJ9iIAlMTUp5M4Ors5unwpxcylxW1VIpnlW1ij/RVe6PbkZRNfoUf5uy4YD
	 rvtZ75Q8NNrIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E34BE77188
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173543135361.8573.16238495021868290840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b759b9df67273560529063b05b37d961540af32257a2cc70045399147ead5bde
Date: Sun, 29 Dec 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735431353
