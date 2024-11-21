Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D25313C3D6
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732170954; cv=none; b=rbPJVYCbooaf4fUMW7THqDywIuOJwaUJP5g3gtUwRHWHAL64WwQCJRKKO4F1M/kcZKOIFzv1VKT4xhNMbSiHm6xq4ZpnRw6oeB1zciT2q9R7j/GuPBNWrRdavYmJfZ1VzeKYMhjxcvyfPdhXOROZ41i/5S1g5Mlv3HLei3TNTnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732170954; c=relaxed/simple;
	bh=hDSUoRysSQy7WtTU1fjX6roqo6L5af/0IDS5Qd/aJwU=;
	h=To:Subject:From:Message-Id:Date; b=istHcyYzPE1QDzomkuDpYCqQNlHMnSvi0HaYcERfzlvRjj5o/OivlbROH11Xj8MXjPDVv2137fqe/8w6jRVIArJQozRhGP0PJur9tFN3mvQucYLBvTt0GuyAB0FJ5jkfbQxLi3Y0n9BmgMuK9ked+Wvrg7gbffVPhJKqg1KD0Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYixqpKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYixqpKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8102C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732170953;
	bh=hDSUoRysSQy7WtTU1fjX6roqo6L5af/0IDS5Qd/aJwU=;
	h=To:Subject:From:Date:From;
	b=YYixqpKKcSWNFGMJLZhqGiZxkvcbXn/a6ZW63dtBL5iCHT1an/jNkNnan6QCcupdb
	 mdc7M8ifRJGC3Ow1dV9M/hDvsXhR+NcLvwr9IfFgLR1xtKzhZ66lju12t0tSQEV796
	 zfrVSLQtsUe9qdPj8qEnE8szu9rMoMLzmHKp2xdvWCXW/uDjlFSc79KmjMWf1+NH4G
	 oo7Bl0HEiKliHsimJEbTq3AkPYRjAxwbM/6LTjcnwkn6BmOG+WNmHtNZuV9NHWPgzu
	 LKs17wKBKShEjSjGFepwDcZQ4s09CD24e6SNqdvgHi+KTlhJPAwRn8/miSrnd6cf9O
	 E3WCPPD84J2Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9178FD75BC2
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173217095358.3904.9765616080483438306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb78bdb8cf432f2866aa520fc14f1eff5b54ec5fe9ee1863043f43ad53f24e3
Date: Thu, 21 Nov 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732170953
