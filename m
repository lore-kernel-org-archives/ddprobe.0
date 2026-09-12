Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3834941A503
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789208434; cv=none; b=bF18bDixhl11rvYto7AWlzdZ9WmiP0RFFc3pklKWKdsa+Tc4aARxqe+AcmfjFK22M8Zo8Rs9NQrHaKNSy0+GskEFfWdiCFQP7WESNgEtA4QD4qR7LwFS8npSuVAwvtXVa76aoBLB5eVrmDwmEcffnvqtSh3jCBvjCSZAyUQcp1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789208434; c=relaxed/simple;
	bh=kWqwSpGHrDana5fFIy8x/Rw5wohQbDXtrVDnchcrb54=;
	h=To:Subject:From:Message-Id:Date; b=UwKCi9rIgQ5cBJ2/rlpvQMIy2FjMrU83J7Y2HtbymR6s3FauJvJx0IDkekIEE+bNydKPIbpqzP+Fa5JBD7ibYCoZXYe+RR6jhma27lbmsJK3q4bbvhFTcqxPq7GnstazjSzGQf7KbuFsW+KVbVlwxGWushAwR4MOE4MRokF1Mdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6DBpRZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6DBpRZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7F5C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789208433;
	bh=kWqwSpGHrDana5fFIy8x/Rw5wohQbDXtrVDnchcrb54=;
	h=To:Subject:From:Date:From;
	b=l6DBpRZpGwLoDXrdfuK+PbhD+q9eqcF95CbnKEO+XEl1uorOy1zv/kYQz/8IJSFB7
	 USPSoDUUj6gZChum5mvc48i20roBw0JTRlksWu1QoODqq0OCKZW5zTqoZ/umQVZc7d
	 xuuOwbO/kCsJBFbvuFNS1TZc/l0r46iyy2tEoB219a+hZzZ7G+3mrM7tUs7+RPxF1M
	 Ht0yqe4Gddfdn7DzZtrntQqy7m9CW4fz2pRlsGjraGmTsfL+EFHqD/kEx26gfrl/I7
	 J8G13oiQSPVhwG5B+70/PqjDslRUCu8lYhDqm/i61CHgKSE0K2mtqNdagi2qLzESib
	 WtI4CKBBf3TXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D3FC79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178920843368.20175.18440067414643221706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db9d070962322342639fb6c24bdbfce69b8ac2b605bce715dcb7867395412f10
Date: Sat, 12 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789208433
