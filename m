Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0B7176AC8
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 21:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718746163; cv=none; b=tVNuhJJrGcQo7zVK3anrGGnTaYXMh19H/b+N009VhzdYFeW4FzpkkFneRO3r7T5rkaLYckBs7fXx24l84omnOmKapky7L9ldBY+atgvSB7m2uhOLOq09HHofz3niyr0v4cfP1fyAMborLKxbbC97Po3oc66WDoILzbltDTVTZLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718746163; c=relaxed/simple;
	bh=MLQd7CbAOtIdnM2mDX2myXLeepyZbNouVs/VP9YyTlc=;
	h=To:Subject:From:Message-Id:Date; b=Xz7g6bnbtcTI/wDrfX+qWjGn8SaKV3QFfSH86QBg6iE4+IuivVXAivwBzrLQccHdd5bTrD6AqonqgwAoyCBGC+GF5jvjmsOYR9O5Uk0aYmuOrB5mGH4OFtGciRBdY7ghqRqE3A29+jMlvB7h1x8c0Wpa66Zusm4+j40/gqvdzqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGCkJw4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGCkJw4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6A5AC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 21:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718746162;
	bh=MLQd7CbAOtIdnM2mDX2myXLeepyZbNouVs/VP9YyTlc=;
	h=To:Subject:From:Date:From;
	b=mGCkJw4aXWmVTzMIDBDXa8lSLAt2XewZkWI2bXC4AmB3NgOJqUtlVInpdAK8u1iOZ
	 bLDBCSuoGkHHt0bsn4CMoWmW6Kt43binnNadhC4YGshaTiy8eYnAJFNLCSjIOe3ZMy
	 ymuqQ8Bt14abvDPuBIQxv6TrragsHnuzc9GIEcpxlBjljFc2VxqV48vRjJRYI5k7el
	 RS/qs7Ehns8tdpreFXIFQzvUSl+bh//x4JprSvcu9j65UKNX+CEUP+NsfGA7aClovp
	 Ypm26j58qsRqVcYnDeKuJ8Ock4rLLqRKP73WJ4fPBrIjtqcKRfX7LBlVz/jtIAmQFD
	 UlDsasuyA1nfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9E6C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 21:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171874616277.3670.7254344326943256254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59ecd0a550ff028e95c87771ac7401631e56a888f128279d424696fe9901609
Date: Tue, 18 Jun 2024 21:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718746162
