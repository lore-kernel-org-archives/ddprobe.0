Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D921E4BE
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721576754; cv=none; b=lV/sHeORYWtbFst+kBtlWAZH8z7XsHwplYFmy23GtUcKvSz6BokHVrhr/EmnnR7uIaEP+3wl2CwNn08PcyWXE88ikWFu6SDB9Ps6fp8RWvb+0XqDDcZPpyoqP3e2Kc6kpBr0kFQD2d1zcTQ7nU7DFpN6BCGusKqYn+lFlYsX3+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721576754; c=relaxed/simple;
	bh=rqL9nW+a6ygkf5d5STJO88V6qupRuDTnaE27Yy8Z/oc=;
	h=To:Subject:From:Message-Id:Date; b=Mkl3002Tv0lVWvfYD8qUO8jnmGWDWcuDYQ9HRHN3Z3p+GwnafGKS3gtwGNZkYL+CeUSNJmm/EIV5ckLBaMUw4vFRSGu5Rg7W4rDHE8lddpNxgTbJN2zcCLmzqPN9GadlbuFNEKibOd1IdEZc3nTFvtlnL12KycZz1T5Lf/enAGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XN2q/0/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XN2q/0/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A316BC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721576753;
	bh=rqL9nW+a6ygkf5d5STJO88V6qupRuDTnaE27Yy8Z/oc=;
	h=To:Subject:From:Date:From;
	b=XN2q/0/7ObkxyDMZ55gPNOmbFjuqYKGxCTbxHjCHTHjfWN+tHfxqDj6h706gwoVjN
	 awjN7cIO/GQRZfnecL91yO7SNfNiymrGCn1IglTtyXb++a67+UpMKOkp1DyAw2Y9nm
	 85uEy3Xv1TnKGzlQlRBNFlKK4ZnCZpEkZ+GGxm5KkaXl6ga2WSdDJ4iOxeRzjwmMfZ
	 wNaCu2TorASm0djY32tntsG15ZwKe6/TC/P2ft9LKL3sgcSs3FkM2qkziSRS5LA44p
	 xVQQjGMln6CwDew/SLmiNTdF2+t0Vyrv36WWenZP36JOxiyzkdloWmVWXRNo4hFjK/
	 9YlO6EnQdhybA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A3DC3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172157675359.29521.13610924173635781226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f914c478e10ef7658415f9742cb54cdadb977b0bd57b36da6098953d6cf2d3f2
Date: Sun, 21 Jul 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721576753
