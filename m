Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497A21FF7A5
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738710355; cv=none; b=rLe3toiogeVW6Uvdz+j2dvQKLvirkE9O/VcedZ9W2jW9K7Ps3esaSIbu4YyrgO4kdxJmZEVf7iuNImLzgMCapREcLN1DD/iA6Akko26kS9AlsHCfuFJZswglROmrjHxPcQ6xrVWKZ6hDPpDhrI55ezXxHQBpwdb1Bnj7inaghQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738710355; c=relaxed/simple;
	bh=JApU3w3VC2ksmG7BdSfyUmBah0VlcyY/H9j4YtRXHX4=;
	h=To:Subject:From:Message-Id:Date; b=Pz6eUJ+WLcu7xvQmfpxDN7tcflH60oUMDuywdvKwKuYp3u2svJCcqJlqyzdX4f23sRMNxTfSrVvITjkxSRBcn82NuzKkO71zu6owiK/srNi3RBpnIAlGTjg9QNlFJFkxrhfe8TfB6doKLEflWLl1GyKPaJ5cr6/dn7cQdVsqIvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ef44BFMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ef44BFMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B6CC4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738710353;
	bh=JApU3w3VC2ksmG7BdSfyUmBah0VlcyY/H9j4YtRXHX4=;
	h=To:Subject:From:Date:From;
	b=Ef44BFMnR9JTQaFXr9vSU+uAQBB2RvULfg02zXlbLnAUgw6MsxNdH+khsfw+EvnD7
	 H2SxsFU+tnvGY2yts1qmeWASRbD/qn0NGmf9Usvpo0Nk2dARQCctDvfAGwABIWA3iS
	 IVV7KfL+uvCfYiTW98sBCsHtZHZpxvLIo0prmLkZNg3y9BZh9gkTBJVsRP5QeT+ELq
	 JKwgTGBKNjLLUd1p2kA1mDvFEvkt0/1JeK78N9zGXumMmdUr+oXFiuWMGR2b3SgFz6
	 T47icxvU8ko2+uJ1bKMZ/NK8+xGDst04dJA59m7XaKxdJjWLRj0/75BxoJNdp8eCzB
	 YKQwJLRGp+PpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B17DC02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173871035362.29658.12540042332944687624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8352e246b99d184f9ee38532c46d3611eb6aa77ec922f1bc130749501fc31b95
Date: Tue, 04 Feb 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738710353
