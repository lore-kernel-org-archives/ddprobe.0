Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F1472624
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753285794; cv=none; b=IQ27K495Y4Rm6myXL1/EpxYdOfZObrPqab9ekOppd38wGGk1aUvKXk4DlqRPmbm3aYTIOu2zUitn90GbmCfpsnJzu074RQq7rBAqs06OFKE9RZNdZm9ZnIlcrPGqUKzg5p3dAJRtoI4If1D+uoyb0RWOmEckuBj+5u17tkh/ORs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753285794; c=relaxed/simple;
	bh=46NcF2KJ7X6EJfp1reIB6QxL+0ewHv+RYgjuwBvGAwM=;
	h=To:Subject:From:Message-Id:Date; b=GiusojdGiB1FyaaaX9TsgRTbIvoG16SdMRF+ckiefhVUf9wsEzNRTGhxhY6pI2fP37tjXOvZAaMbsL6nMx0vFUxss9zoJJ+n8kLy0v1gVTks7df7STy1/yP8bLEUkU/hxQYiJ2+RHRpTwSVCtULqlzlVxq0tuEqaI/kHV1ngfmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jpuakq2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jpuakq2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5316C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753285793;
	bh=46NcF2KJ7X6EJfp1reIB6QxL+0ewHv+RYgjuwBvGAwM=;
	h=To:Subject:From:Date:From;
	b=Jpuakq2JWgWg+x90XizZm1KgoXeozqH+ihm6A5zioNV+5Pyp6Jn3rAYq0GMPFvbVx
	 03aOAzqtvir5zHSVGuFk/E0H5TJM3lND4h/R+DIUslxyoA4kz6YTOoeBScmbKzedIa
	 hslcge9TFaMIGvYimXq27ZggLh0+AWxpaMFR84Vz9v7x0wRqcFuf+1PutFmZ8IQZwX
	 8S9qbHVsk5EbawbBkIcUwQGCzq9KQYJlRk5EqspLumbQPPnNuSMBj4jimDFt9v19Ag
	 eynuMZrqKvxuaHrwX35cJKXZcQhAuxoxwohfBC5Kbbg0ChiLfwOZzapdaPSvIA5ozP
	 15zyqTvpaw+vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934E8C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175328579359.15731.4508202482614643091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be0026f245b711b4a2d0b089f27209eee33c5d3e36d42d9e9e902d9d42f962b
Date: Wed, 23 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753285793
