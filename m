Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277EA29A0
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746804595; cv=none; b=EaYdFrNyE8zhPj9GBxpBNKFhg5WWA+QCS7Qyf326u1O9bC5nsR1LQmGse71BWa66XjfV442uICmUjFKbeXFTmJwGL7ugSt11wjoPjQBoHkXMxI2yjHqWex5oN8hYKUZj11DKGc/SfMtx/hphSls0TiAajUqI+4VkVy8n/CQ9hQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746804595; c=relaxed/simple;
	bh=3uapp683TMoKw3IwNgnuUaMyQMM4HYiiIcgKCvfTgHM=;
	h=To:Subject:From:Message-Id:Date; b=XIIx69EtAK4uko8jv2BwH2ocQRrV6thrT/jlPftmOUCJSDV6SOVNA8II2Kpq2lvFU2rq+YHeeEANxkqv+YVNN8X+KoIvgSTm5sXkqApsMej/8ErLO5i0ie9soVpPyBtfUATdlGupVrgI1GSdr+ixDFZO9/RhANlxi+SRZB9S5io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBtfiKb4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBtfiKb4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CC3C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746804593;
	bh=3uapp683TMoKw3IwNgnuUaMyQMM4HYiiIcgKCvfTgHM=;
	h=To:Subject:From:Date:From;
	b=WBtfiKb4pIUN41EY5HK7vG23PRiWXZNDnnaEOjK6OxQCLz9jsFS9BlcQKMGaMv1GZ
	 fIFjhYC8QiuPU2sEKIBsL3+JaroYDPuiA1NWFN7lCe3L0pEMXWQxEyTKZkgCVfhdJS
	 MFEL+Wd04JYelP4/a93koGN1yEj+cNNFYSAfrEVPiLyG5ruwp9AaqeAyXeZscesAD8
	 4Jg5jUrioehI++Ec7FgM2F3JZSoOMBziWKJVZ7ait/1EQ0ROSIWGHMXbMglj1HKiLt
	 sGwN/YS5aNHZk7kkEYQQ43vPlXIasLqXv6k3L8sU6eQMmkEQCa86LUHJYM7GP83B6x
	 ln6Bim2BsvX4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913ECC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174680459358.15678.7882865901215222499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a05beca16d6f4ee12e8ba6d2b4bd04e9d39132d0397388a2839b39cf159a5487
Date: Fri, 09 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746804593
