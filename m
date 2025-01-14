Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B64232422
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 15:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736868954; cv=none; b=i2+M/2CKIsYOlQVZKRLjBiBm87aGNFGj681YknbC0OmWnuM5Oa38oLiDLF1AzFrOmPOM3MF7vz8bL+Q7bL6DaH4wv52fyKDVnFF7TXcmaudZzbWjn7ZN7wrB0WGyAtOmuT4S0d4qzmqCAWc9Lw3532BZfbzZhX9N6LiR4MHEkhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736868954; c=relaxed/simple;
	bh=Hqa8F6vgCdbkIlMYUOMvPhxG1nKkx1tsW9mEUaiEN4w=;
	h=To:Subject:From:Message-Id:Date; b=Dykhs5AKvSjMDW57/txkdr2jQrtQcC3r1rgKSTa+oT8lRwvzhncSUMz699+8sZ0VqvxYaUyXwzPXxaAN9gaydBdLQ6gW1AMuIV9Qbk+OiirO8kMuM+nIAgYfYXwXc8RSaeFlroty6a10h8rKFtuzczcJpJTr8OgU3BM4vhinsvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHBlE3Ay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHBlE3Ay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E55C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736868953;
	bh=Hqa8F6vgCdbkIlMYUOMvPhxG1nKkx1tsW9mEUaiEN4w=;
	h=To:Subject:From:Date:From;
	b=JHBlE3Ayw9KXX5PxDJNLUBX/3g3Dc4wvyjxIfqweAUxdCV0UmG2GTJ5uAeGrTV4P2
	 qNagytTb/UFwwwcFf93pVXX9a4PqNgtDebzEqJ6ulBjYc5WgqVRy3asFlN/MRv4UP4
	 Xd03sY2lW178Jc26hrMP1feGIGcxVd12WAlSFIMwVwQxPBBXSCBE5pAgcC2I5pBe93
	 1OZh3hnTvnSkrkXjWk7fiom8zdBCluo6gW65v1YZmgbt1m1Rh44y9u+2sY6RBo8P3H
	 ITxA3uzpe9/IlXHyHKt13OhrvcvftsZaGvh5OTBSX4PwMbByKqHlCfgEiz9yMj1tg8
	 Ef/R/Ft+0/cvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0443E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173686895383.642.4925079587514047427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ecf31b63a2c476d49d8ca93056ffa70c359606a7bb55a90eec5ef145e35abef
Date: Tue, 14 Jan 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736868953
