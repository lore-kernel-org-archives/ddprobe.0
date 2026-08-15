Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F2E3D9557
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786778434; cv=none; b=iTuZ4iK728t8JfH3HNL4mw15x1vdM8yLdPeWiWzW3uep8+OPbgvwbtvpIsp7QQKLWzq7NixdHtiFG7n0HurhLeHG202A1jl9WgXvuvcM2NoATvRVazZ4RtnymigbCkJ+AmsORqL8J3ownNM7hnkBWWWwyQf2b15AmheEwvvCfdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786778434; c=relaxed/simple;
	bh=fRUU/XSYmax9M1/s/1EdNfSazLgrCWGl8qf64a3t010=;
	h=To:Subject:From:Message-Id:Date; b=ivcAdDdwF1NkWwnMNybGa08diftYVY0F3qiSj2QVmIGNgXPL302G+c4g/EmpcizI9y8ukPy3lnma4C4m6np4/N2l0kxjDVmNwp93VfG3cNNiJKV0tlFZG+ylBj1XGGUFvq9+BhU24IX/bSkF6wrB4aKIhe91yZ2kDjsIyfUEIEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brVE/B48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brVE/B48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4ADFC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786778433;
	bh=fRUU/XSYmax9M1/s/1EdNfSazLgrCWGl8qf64a3t010=;
	h=To:Subject:From:Date:From;
	b=brVE/B48SXuL9MSmRxH2DYqhIqDeeTHjDvcIJyGpfQDNRySEzdXjAkDpYeKXhATew
	 ccXcs4VbapjeAYzNRn1YtAg/Xn59Boxd68ZE7bOP002qrnWLShL5fdhjU64gSFoTuY
	 dWT1OIlMgJd8wpxiMej9txF6I2T20piOfoB15l+KjHFgslE+xFUb5U3VHMMLrIxvxv
	 olSN0bajgzgRpBIwL2p6V2GMQivqNKVq0ZZmFq1J/DvMi8KyhNGMzu1MBwX+C6hIiR
	 mTIJWRvrWYXeOOe3aigYKEGl1QNR41fAm/dw+QbGVZsIgYTc3t3eHnn7mGAV8994la
	 Yzi1OhG9GChyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FD8C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178677843368.24695.5629170471518602680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4f5eb4bf21f441f34edd8fc56a8c336ae225a63dcd4ee21d4f85c3d80b4b276
Date: Sat, 15 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786778433
