Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229F21DFF0
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750667394; cv=none; b=CM9xGV0yduxZw+3bD1deczZbFHQjEO7Nc3ClwuewnOFUz39XsbyXZem+8XC74YHN3Hj/CDptKDiM3n0007cnrr2VRfxoRuucrp3jMvKF2C6j4dbgCa1TYdEcMOGMGF+u5MfTE41ttjqErga0IoVbt9RyoE3HMq7o0SwUgJlwvLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750667394; c=relaxed/simple;
	bh=od0v1h0/gf8NHaLsKXwviMaVY2ATVBjf9SDlAOU8kzA=;
	h=To:Subject:From:Message-Id:Date; b=S6vT8Oku1iAxx8APiYqO/LUsp3xAVIIe8c+vSG6A19qYtoip0oaWgo1ewxuKlIX/xQo7I6aOroi4ObE2MA0cXeImhX/ZXlzg1LtE80iytiJeyUgjuwIaVJYOpxqSWfsyPByOIYU1L8VSgNwpWxEnXoJchevl83X9EjBjvrFsOc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwVZ2Pr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwVZ2Pr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3E8C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750667393;
	bh=od0v1h0/gf8NHaLsKXwviMaVY2ATVBjf9SDlAOU8kzA=;
	h=To:Subject:From:Date:From;
	b=mwVZ2Pr/Kez7GUgt/t9J6XJP+brmlcqGJokhnFDxpcevR46lkdXywlDDcPpw6Pq82
	 UMtR+hyInZ6Je5U+MRioomXg5Mqatoc/US60bknwharjntCBw1jNnOLCPBDzkpH1qk
	 fa6RG/ED5VoTRRqRqi6iLQlrEttqolRSdJZuFnXsD/oTm7PQ5WZPQCC5edZL3qjeaF
	 r14HIoZ0NpDBjKfFdPRu5i6iJ7kH+AzKpdnPZVnqaJ7rmPBouVh/r6BCtVhq9ozDmL
	 yZauqXR7M+56VkvXszN3HarjI7Nzkhp5Ei7Cjy7aYBNhjiU6B50cebDeib49IG2SlL
	 aFhRIBvLlSCAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC52C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175066739357.31467.5218364419385331634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 900ea4a71633b1011eb676f3c73423b331cdf0c558b6b4333dc114c0c803e995
Date: Mon, 23 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750667393
