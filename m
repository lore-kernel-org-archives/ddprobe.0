Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3744D25761
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725782754; cv=none; b=kW72U8K0Dc6pU89aYGy4XCDT4Tl9qc3+WVH2+8YLsU1bJ10rvZ7SSjvMHB/+SuEvtRwZx1tEDZgnzbDkqh8yacB0Ei4032Xg9ASFaFlqZP/bh7v+7uZkFES90ziC6XawD6mJ3YzIad1nV51B1yjBnDIHqCtYqlqXjndbZr60A1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725782754; c=relaxed/simple;
	bh=EDLbCsWIbofWhJAX2anileXFhUzHxJS+tGkX+bAl+aw=;
	h=To:Subject:From:Message-Id:Date; b=RWB4oAheIlb4OXmof+Uv3Wx5zGx1/9WpDVjjNLYD0zSz4aIXMrZ7R+NYgLsKlUTY+5xDPFieF7T67IiBII6t0Rne+UnvkplB6ki6Tk/TDNDR9qFyK2FvG9DDxX9k148xCWHi+HkAJMVTxT+Yuz6iulKXteFkq4mZOnbGmmjW2zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFnMDDwD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFnMDDwD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD397C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725782753;
	bh=EDLbCsWIbofWhJAX2anileXFhUzHxJS+tGkX+bAl+aw=;
	h=To:Subject:From:Date:From;
	b=vFnMDDwD7LpwHnspXO3+AkbIsEfApRk8xJzalPGkpkMibLuahWG8Ekd9u7kBYIphu
	 KV9g5nbOTkrv3pr0SM5oufzcCNaecxBOhzo6PAr6ZNqnl06AK8B3r2fY6S1RHfqbUK
	 ttYiENT7rmmx1nEzf3NXe/hgE9ougf/5MlLmirIOtb1Vqeg0ijaQ0f4P5XR5PkMwSF
	 6hglcNo73z3+90Olz6BL951gv3HadTadZytXFxCKGMVfFbKF05LNRzJXL7+GXcdLru
	 2taUkK3gXOLe3tPAM6ZM5gcsUQ2r5UQgd6B+czPMYQA+B6jUh0cqIBMyqotg/oxkEc
	 rvfaEmmjD7ePQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987F4CD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172578275360.11884.5658547195556537199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57fc67313db31b7924ea3bbdf48bf56e9d1332515bf384c62e7248ac4581e27
Date: Sun, 08 Sep 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725782753
