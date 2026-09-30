Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579CE4DEC26
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790792434; cv=none; b=sjTScoh3D3zRMQeM5Bm7yb/N6uwCh1ZMJXqJMOyquzpUoYMHYvF8SBkzkndbaeO5zujjxnU0iLeloIacSnQPh1/W4sc3aUuU+739+cpz51BYXHoFqceBKPgPyyCo93FiO6cQDGeEZwX0du8pnpHMDBAA7XNV4eJQK23mHBbnGgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790792434; c=relaxed/simple;
	bh=ubYxdFt2XPls6tAdoOneG8fjrO3r9/OZG0q3VQ/F38E=;
	h=To:Subject:From:Message-Id:Date; b=i1eI0hTRmQvM/B5SMT4woVA5NigqWaPQRfvh+lOE3zam69OhYFJ2rFXHYubHpkN780MbDOo+4138bMbwVElLPvwjwSjdIcG21S5l2OD5s4ANgLurYCMjiVsg7osdzWp9XzuYbZCO6u/XdHVeO4HM2hi369Zg+3oF+rDtxkdlB78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1RJ7q4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1RJ7q4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4337C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790792433;
	bh=ubYxdFt2XPls6tAdoOneG8fjrO3r9/OZG0q3VQ/F38E=;
	h=To:Subject:From:Date:From;
	b=W1RJ7q4Kqr00YSy1/SN2m0soYrKSleE1YMd9ZpzSZDxLKMmTyZvjkX00e4ckfJiMZ
	 +C6lvtKKGlhCpEm3QCCT6cKYtIj9urH1B3TEnAJ+Ui/Qv4M+nFBKfdYQ9I5IvJnhjw
	 MAU8hmv53r6Pg6UA41ufv+9QDbLV4gEs/ChQUYZzy/aDDUQ0xleKEBZafCs+56UFDs
	 lL0jJhs6dsWaraJKoskQ96Dldb6PGoHZp3z1c6f/ipLJNzDyVZXKJYTtKvlha2xAeM
	 Sl6BJoA8aj6FbZGO4cIePbaHEvC91eih09wJgn9GbZjDjczQoHxD68ApBkuzTy3JTs
	 DxxciZ9WzVD6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16A0CA5FC4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179079243371.30135.16160692310831825665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8747ea6fe6366c4c74c610ac233e301b8593035a480d62f6b7cf06648d009f5c
Date: Wed, 30 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790792433
