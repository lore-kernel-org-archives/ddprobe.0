Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE9C40DB34
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790139634; cv=none; b=V0GI7zFwjv86zlig85zdq/X4ltB6eloFMjGFpJyw8tp4rTSxM5L6Gy+pwKE7Ylig2RhMQtRHnK9mRKNvhB9+FOkmjBZqKO7wAO49AQJQyEC9UnXgJFebPsmkeNAVnWww9WQAS65ED0qLxKhiXO21OcZ8M+1Et+rzPrs0pv1xmKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790139634; c=relaxed/simple;
	bh=OKbK3pQz+Vvy7r7DeeMVT+Lh+5FCfhOHvcVHCzbWPRc=;
	h=To:Subject:From:Message-Id:Date; b=UB2M+kYDlHqAEL4otqeW9LMapS/MJyLPjOogHW6ubQCA6M0fnx5Y6A2tKaJtfBv/CItvVCuKCto/2i+Z72bQaEiGT6JKt5vFHTix1Sf2Vz9CFyzb8dtSR7OYcodd62wQEw42k+xiZ4Opf3wZvrTtSE+BW6DZ9ilNo8/h7GU8nkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ow4iPH5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ow4iPH5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E223EC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790139633;
	bh=OKbK3pQz+Vvy7r7DeeMVT+Lh+5FCfhOHvcVHCzbWPRc=;
	h=To:Subject:From:Date:From;
	b=Ow4iPH5D3LayH8RzABGAFf91Vo3vjtblDCbol4FqaCx9HGpvdfCPzRvz6S8wwGr4B
	 F3GLdHnNFAXw+QEkVU+Xq4H1PgGHWYxnwPa5R3WZTYKfg0N2FIJxgLeNejx5kpeih9
	 /Sj7w70pfoacOlC4gBpv3Pes8LA7FVCzg0PDaFT1sGBFX4jBMjoOIdgGbpXBv2nXHv
	 9qWnykMaIj78GAWqlYS2d6+OTeEKqphOd3xrxkjjNES3JzOuk65fCm46R3KW4MWoHm
	 tw63gQt8eIpkuu7bCv6myGSq0Dudnk/z2vIyigpVoXBUdi+wFEOTWPYvQ9Zg5VxVNx
	 6h5CYE2M+2Z3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B497DC982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179013963372.4336.11065049786340222893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0242e689149d83ae1864903d85b9d4fc2a1bee5565dc54b911138d7f5b72aab6
Date: Wed, 23 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790139633
