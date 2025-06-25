Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9A41F4615
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750847396; cv=none; b=HzwZUOSGvg26Po6lKuMAHACg1DWHegvPWYH4P2RBAdznT7FLe8oWRu38aQSd8qfsAgaeOHKvzkMzfXxRkZ+vFNhzNPv+o8eojBHbChqZQ3yVEot20uT2df9nAL7hSnz2naSOY4t9t/eqcwQNwKx2vlNSXNe2qT9zhNyMAdmQRV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750847396; c=relaxed/simple;
	bh=QR3BsET/31cSoYVOESHOB3WqSykCWztjqtqXeaGNHSM=;
	h=To:Subject:From:Message-Id:Date; b=PkB3uGhmVzZK1sEQj62SVxI3yZl0yw8VI7C3Qt0dRtrcQsntEu5rLejSJ+6hMUHcsGvs2t0cCgFRwmuP/XakSWTe8xZUStxMADE+wBU4m2rVzDK9iLJLpCCtEOWkbM/0rum49Jl5gjLvR3CAA2ZuFz4g3PqUBg8egDABkOmf04U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqKBo+PL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqKBo+PL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE666C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750847393;
	bh=QR3BsET/31cSoYVOESHOB3WqSykCWztjqtqXeaGNHSM=;
	h=To:Subject:From:Date:From;
	b=dqKBo+PLzfRwkjmGUooybbmy9NkgxcmScUdG63kIdai+jciJzl9ZXcVJlNzHs6nOS
	 gSM32hK1JZaZO3q1IIjmafFPE8pty39I4L50XMLTNS6oe6mihiPjQE5lTXu0jEEaAe
	 fwL/k+zpBg2tXQ8querg25BoVp3WlC7xa/XT4D0PgTrn19N4umx63MLNW7HAL43kxd
	 tEXy1ccZcD9w4Z3uowu/1lzaqQgQe0wXTmRdg/bOcvOu+TRr33DPTi5ePwTwAqEyo9
	 CLpgHIhtuHJKMIae7hWTshtbXUfMGYdzUf7FKKU/dheNroZUPVyLZT15zm2TCyg/u6
	 vhGbpVVMhyq9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B857C7EE30
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175084739362.3625.13808589857148306521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d444d61c3fd5b346c06b2aa7c331d35a69c834c292cb3dea8cd308f1c9735b4
Date: Wed, 25 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750847393
