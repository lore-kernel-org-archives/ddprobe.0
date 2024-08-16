Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221201BDABA
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723833354; cv=none; b=XuKqKVZSj/BN1RiGGTnC5k3fKiZ4JiC6nqGbzDlk3LXVRIpsqq511RXaV74OOKi5jrsJ8LsvbiERrXhbgSHS7dB1zpZUS9/cZ6ik8sDJ//d4O5Z4m3a7UsnZzHyJU1YvvWNNrcap5MdXx1d1szDyj7leSQVYwS6ghKxZqBXKZw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723833354; c=relaxed/simple;
	bh=B08pC5WUbxlivBFHzzXfCuzRf9xOi6wzO4yo6ydW7YE=;
	h=To:Subject:From:Message-Id:Date; b=VhXFDw4E2iNZBqtuWLDpkaj086neLTgQm7B1HLiDuU5EfmVwTOQBJWbXVVMl1vRi/F54qnhwyPOpima+xE+NonBhdjDSiRT4Hlsf1janqEW/reHtQ7gGLwV67W5KExSwelnbF7N5R9kJW30AwiqDqioMO0LN0ve45FF3rzqNFFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuDACCaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuDACCaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3F2C32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723833353;
	bh=B08pC5WUbxlivBFHzzXfCuzRf9xOi6wzO4yo6ydW7YE=;
	h=To:Subject:From:Date:From;
	b=KuDACCaG9/NG0CSIbttwGluVAQ6dFMlM9UOPJp9XUVs8Ua9XRnXDoCegqffT5pSJY
	 7GQgcF6J1ZrtlB/MzGoMfd2Acqbv1kXssgzuVTEYhrF7pvQQ2+TqgClqhuleePmDup
	 FlG6h7EDmL2nsCbEbhEAqxv1wRzB5ogFP3Z4l010KIjEjjhM8/muEHOoS7s077y6kd
	 bng/z/nEicx8qjS55hCemoUvLwSSeG5YqPV5NzHl8dxYUZRvuVX6x+VnC7yvN9saI7
	 6Yfe2xwD4z+Prmzq9ng9iJqJvTxP4ppuKzF2/mwf6qzj9hzovrYtmRCZOiilRycqm0
	 R04QL8l/DY4vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D1AC3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172383335360.15769.425058595011702711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eecee21d0b9727e9b1cece3283e0c7b293254489da3d5f4d72b085931abbd79
Date: Fri, 16 Aug 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723833353
