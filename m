Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C15E19E99A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738086354; cv=none; b=Z2siPFBT1P/mWqv7rWRUa5j3Yv5MNMeF9vdd0gwLu7PbLI1D9leG+xlSAEJ/EOOsJ+y/vn+SxdLnWqxrY8uNpdsdkKea2gINQQI+kPKETbqTCTetHuNJ6pEV+F29uoY4G/RuSOKST6yYICEPAytBAozq8k1BmXmqcv9MV1bZg/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738086354; c=relaxed/simple;
	bh=tJ75B8ErF+xzNSjlROS5c9VD+WeEG5Vnv2Q5sb//zgM=;
	h=To:Subject:From:Message-Id:Date; b=Rtn1TP6fr2X/XNCC0iIu/bvbxl23KZwlVKHXaADeB3eCQW+2W42A5Jr8Pv+UqP4xf1FUJc7FZRx5FoVs+XRFYOr0nBYAqmmJV7YB/EfULEICNG1jW4VBahKuFpbawHbajFe+6Ir0ns3/9vPZ+bJtEqH/8xzmv2L6mfDblpUYo/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejLfQh+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejLfQh+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3CAC4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738086353;
	bh=tJ75B8ErF+xzNSjlROS5c9VD+WeEG5Vnv2Q5sb//zgM=;
	h=To:Subject:From:Date:From;
	b=ejLfQh+05wxkj2Ud1WXPJ/Dtt3eVNrUI7XaTuQLfsv3bZuZo+OnL7eavYV2/leLRC
	 X8Ept1I6BOq5EY7HDxahq42MZ1RVpDBS8WnfUkqjk2jAXsnCindFjTAlbKR1X00XZy
	 UntFC/ifBfeUlnJcs4CPs3PQnXQ6KC+IDoxqOJyyvUjFOJm2IW0eg0eAb8jthH3J4k
	 44cXHf2klhKkna0xq01B+dzWvDiILCXC9gtiO6PGRePhz6CgWNvmrSTqnjsNWeKf3b
	 qapeKAALGiJnOHj3nWYvzfOJji4GGKPuBa9TidWtKeiaSZYNX5mPy8cseZ6d1z3csN
	 vjmzeJWiXE70A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B4FC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173808635361.14079.14603038254789563755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2148a0fe5bfea1b1a42740864f55345244a86415c2b21631e76902b7444555d9
Date: Tue, 28 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738086353
