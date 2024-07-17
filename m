Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555301CD3D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 20:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721248523; cv=none; b=BoRmhm+3b7RH4jpWLys1ddVNlCIIxbAuSWeV9BqBkVyYKnKYhtfrlW2rolEZ3oztv1VFbiBoaUdo7iDTA9ItSl1xAAeySIZ9Tj5WqZX9unzcvyzMYjHmx/ob4Ji4ZZVstxyrtj+/hy/LYJOBvVbjGCBbFh2Mcj24PQriXAOtTPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721248523; c=relaxed/simple;
	bh=CCjimSNPlwr2YiKg0JPSCnflarGS8zllgHUj9v0Bnk0=;
	h=To:Subject:From:Message-Id:Date; b=gtHh+vMGpR5c8tQ7wN6TllMmxR77y4G3qZfQui7kBPH7tdqP1V/p6tdhPEGUOOPK8nEGJu+c+D0qPFJ5SRM3/GoJSSL5YbHiZ7KhmT9Xxy2yHQXwoYwP+DBej3C9qT1f1lyNn2KjCslMvVbeA1c2fwkC3kSCbqrhWWZKDHKGOJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8a7Fcid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8a7Fcid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D1FC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 20:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721248522;
	bh=CCjimSNPlwr2YiKg0JPSCnflarGS8zllgHUj9v0Bnk0=;
	h=To:Subject:From:Date:From;
	b=F8a7FcidXf4HD11OEGOE29FPrRfVVigL2aACCUiqC3I5OTIROVjAwE/Jw2YpsNKsz
	 o3YerXn+r6jQF7QwGziqx2vmJ7B16xW8KrnmFAR95VQse2eM7sxeIHQ7v9KWPsVRG4
	 /0j9va/yGiI5d6faIa85GcwePbP41DKUdxseWrMKC9M05Iq6m8AGoDY9ikEI6FqnnE
	 KEFG42vNsXi0KLAE9u3B/uCdyG586ebJ0CA4eTNhWfwNJ2eaxWXsI/0PcTcQIfADMu
	 v7dcw/s3xA1cQkzN06/2k0fr/VWETyat2jLVzV7JZSItpCS5HY7yLfMy5bZkrG4eIF
	 1k0MWH/1fJjKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C437DC3DA5D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 20:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172124852279.30760.15475414567426998625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e89c8f58981e1872df067f10180d1aead1329853c3c279fc086364ae6531cc
Date: Wed, 17 Jul 2024 20:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721248522
