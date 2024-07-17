Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527AA6FB6
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 03:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721188523; cv=none; b=c/tUUd13Lseq3rPoMblG6fZMX+BxwrrGAx1QL7Dsmm0SpY0Mz7/qIn40nfTBrNzxFXbdWrX1YZkAnG0gHvU2Kxk9tz3HdYKsghPI6cM/NDi66HoQwKnuH63AOE8AFRPDbMZn1B2iD6ArX97RZ8IiI28RCedwkc/6s3fpJ4/lIxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721188523; c=relaxed/simple;
	bh=z9BkRqZmwYix6kc4KxhYvJcOa5G+GfeJrPcY9aIBuN8=;
	h=To:Subject:From:Message-Id:Date; b=sf8oehb3zzYEkTNyVlXL/Mwe/PeN/sIOA56uI1p+6nbSHASJRcL/o3Z7ID45sRk4SWY9dj4tDy5zrHewWGPlQInHkEdwRA1/RyOtJCt5YjpmRB+BY3XNoXnCiDxItKBvZwwNFCVahJ+yex5kESTCkKf0b8W3cWtXRJYfkh86uro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNCjHm11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNCjHm11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6C0C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 03:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721188522;
	bh=z9BkRqZmwYix6kc4KxhYvJcOa5G+GfeJrPcY9aIBuN8=;
	h=To:Subject:From:Date:From;
	b=NNCjHm111FqFToprrqvI68elc5Cbv5AiTKRa8y5lNZyuBJ7lBaylfJbjRRqypYcA6
	 gtACGUzO7AL0wHrmgcvnobIa4QBBSa6hb+oThF0+EP81tCCcAQ+2iuWuNI7qiCWF0K
	 +BbVaJTbJUlMa82w6FolhcgVNKbyyxgl0etY7oKilCoYbU7HxOAq3FZyqrIO0kwX2I
	 ADjfswCIc90bS5le+p+eeMIOBNFIpLkadHBmka5Uk4fGORpOvYbELC27AvEONJClKu
	 XaBN8PpyQTp5ubiB1FUd3K6ufG/5pwYjy2oHcp5j4gdAAtSkoud7B5bZ6/DDUXXZVh
	 TwlOn6FTr0iwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D34C3DA4B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 03:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172118852279.25610.11663270288089785387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63075e06ec68ee138ac240c58381ddd7d9cbe5276d3673646714f3c341af39ad
Date: Wed, 17 Jul 2024 03:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721188522
