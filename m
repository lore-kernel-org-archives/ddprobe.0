Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57AE35250
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 21:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715893343; cv=none; b=nfmflJ8Hn1JBJj4KpWhFzmQod3kwgGTpWt4G9DVrolMVxr81OnETUgHHJJ5ZRUhn/4MD6b87FaMuGz3+VTFrBmDHI9Hp+qGk+AW1y61rCCyFbGhRB5Bp6nNBKn9JTD+U+Ua2rXMsy9455Fm050ObfffIE2McYyveQ9n38eLDvxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715893343; c=relaxed/simple;
	bh=Z3oq0k6dOOITPAMNUisbh2lJ+WgGUiCzGknWawYfO70=;
	h=To:Subject:From:Message-Id:Date; b=UdkloZDHcl9xSj7QO5p3ioMe8t8EbN2LTM7C8zvHGFqNaZliaRyOYmGmZLlS+Q6vIpiX7Ez5trrBGJ7I78IRd8OpSviHGntwFUMDKMKRMXydl1yn60oWVWJcyywgZyHzJtQlrpM5tdBz6zbWJDZjBpum2HX3CaQHCNj1hkNA9gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqrvP4Jm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqrvP4Jm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0249C113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 21:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715893342;
	bh=Z3oq0k6dOOITPAMNUisbh2lJ+WgGUiCzGknWawYfO70=;
	h=To:Subject:From:Date:From;
	b=HqrvP4Jmrf12buUry0zH4HoT51YZAgPhvrrKWtxlweX4OAGnII9R5jYJ19HF5MpOq
	 tquCw9wLq1o3u9VByBR6Izv3aSt2k/I4LEePNlCdQpG/GHOcFa422ClwQEpBlm8EtE
	 rtvA2ebvWBARzeeCF3SC/puCu6wyVmGhvdTCBLH2Xeo6ZNpKEVJEj9Tl5mbc0SshP8
	 E/CSiHsCJK/9DJFhlqObuuLAR47LOSTP0QgwlIvsQ5LpuNOCyuP+wTW4RJEOlB8a7L
	 EKLhSMDpqWLCJEhgrfd4E60ynnyUvGmwkjqHkerYHRZQ3wbvHYf7GeIAkSIZs9dO0U
	 bP2gTT4D3MSqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1575C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 21:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171589334281.13170.13372205507935878509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a0184bf4a80b3d42af1e7d6229ed150afdaf4f173dacb85f29694dfa3896ef
Date: Thu, 16 May 2024 21:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715893342
