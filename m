Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52991389E1E
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767866034; cv=none; b=OAJbYIAop5BaEB1g88mA7YwMq/GF8inHid7ACe9g/KO/71hpB4r2c8BXcpTBoq6vaZPHZogFl8x2x4Tv4LH0A/2KMfsl0JeMNIdscihGcOBGVnTKO417fYJPuaH/NGYV/H/yU1XIqWL93RHKvOZri1oMxAXU6z5FLuEkCuYkTXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767866034; c=relaxed/simple;
	bh=VSPjnEzxuM30c5haPY4NKWrR8gwKT8zTH2gpCvKZB4g=;
	h=To:Subject:From:Message-Id:Date; b=EA/w20YvBoANrrO9PXTrzH82WqL5MhLBM3lw7HFaz8/TxQKNtFeD9f5DRxF3xC2WeItchyoL4Teih7cZH2ksWjovU2yjMTyB/dN0aCxPiuyr3tKGRMRGFLtV5nmZE/gMIsj8QiXPZqaQZe1GsqdDbJLZU/YjzN/P1v1aG5k5aYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZyR11wu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZyR11wu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC43C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767866033;
	bh=VSPjnEzxuM30c5haPY4NKWrR8gwKT8zTH2gpCvKZB4g=;
	h=To:Subject:From:Date:From;
	b=PZyR11wuF9SXiLrQhzGUMllscGhAParl/Y4rm1LyJMxXvyMuyBFBdkfWNekLnxZlH
	 w3sOJ5Obao64oTjGqe8rl2KV5mX1fDkEn80oFbPE9waNXZqoPmfu2vYJdtiUWl+WTu
	 WQZCmagrWATQ2PcyO/o41WbxN9OmF/dxokK3hxjXqT4BPDEYPn2ctUmw04P5Tjiceu
	 j9B9Xakbzailc3XFKp7pkm6cBYLoCWhEdD2cht7ilCzRbOsKmlb8cAk7uu4KmVwCIB
	 uo7f3YcL2RJ7FLR64W2GX/absDhSB2ZSSuqkFoFPBV45HKGjdlW/jYfTS2G3GvCZCb
	 0dgCQNuC7g2UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5AECF6AB9
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176786603357.6032.3977531202706188441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e77facb487745f15dceca6254851ebceab7af27e1f3de697b3afdcc410c0caf
Date: Thu, 08 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767866033
