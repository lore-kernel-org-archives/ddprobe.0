Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A1239D6EC
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777446454; cv=none; b=sUIDgjH6fYDKUVhRwQdAlQFk7vt00dyUSBlrrUoOOeAWmD0xSxKQAEdK+NJKROw8i9C1gakyoGyuLmcfShuV0ukgLIFkpu5qVlcPt8b0oDbAYp4PeHc7PdCDvdDX3j7+2xACSDBDp3MVYHxcJRdlovEyGD90dfUvvNit6iWc9p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777446454; c=relaxed/simple;
	bh=AJVxcOOiHMmkWzOK9EBgRvDYsHaO3tnrojfd5d1GpMg=;
	h=To:Subject:From:Message-Id:Date; b=PN1b9Oi3qdh0emzx7EN9Yi/pXxMG5yQijKGywA+NPVCMc6/S3dXvR4nXKZRip0WoSDctUYW6qzvglgkM3o21thfcnOsKxANGe7TNbkC1gRDRuMX0myu4BPKkrKH/IfWf5+dBRHe/o6c2poZYYFlXpbl3wZbNv6OIkER5m9/JJYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDWcu4wx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDWcu4wx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84E6C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777446453;
	bh=AJVxcOOiHMmkWzOK9EBgRvDYsHaO3tnrojfd5d1GpMg=;
	h=To:Subject:From:Date:From;
	b=KDWcu4wxXRGtoOPq6ps3GFNG1DjdD8Mqe6XL0OMUVwlcZ4M9S8kqYl6txeTWdfrRR
	 OQC+rhSDcOQ7ACmTDfA6DmYfBckxbbf+ZPIynYPseqpDYGwPGbpbCHDkos3Lm5Ufn9
	 vzPRXCKcKukj36el/Alv0lUNKJuUdm+ujUzYS2A8jNb9Gk0jy89MS97+AsHgcIqk7P
	 SA2ifL8N6MuOccXAtYTiG1N8caJJWnt/aQOcy770ePG9iWC6UWkzaqkY7rdFlcBcv5
	 Z8qNtwsbkDQJwecGqEwYoFMUkDTZ1Gs8zltvluIOnVTu3EKFJMqbytVCxZF/VVQsuK
	 vlQBpTv1w6z3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CA1FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177744645368.27159.1529826376398457908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a3fbfcd18539b29932cb38b3002b8c0ed87e5727f0d6a73548b1f0984e93816
Date: Wed, 29 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777446453
