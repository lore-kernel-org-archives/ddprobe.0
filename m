Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB49F548E8
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712630897; cv=none; b=lYfk+Zr5w8gTExGBuWrdLBKJuL+h2CZFFdW0Gq2fk+hR7WUOt2VdKzUuVeTKmCgqZxNTOqi9MXxEhENym9SweaxmrfiG78C+JODDqTQZgp7XSyZPt1avppOhBCZcG4kC2u9801JCkHjMdr6YBlOz4uUf/K0a5X148lD+Ih/pWEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712630897; c=relaxed/simple;
	bh=eEO94Nzzz4RJZS9JjXx5HoaKS3ltlSXYkTeIMEbjYLE=;
	h=To:Subject:From:Message-Id:Date; b=P+nLXkI0JbC5g/xDQyuFG6AlAeOne30utYup2nroKzWt4f+hzv5prvru6uSNk3tLPw57w25gZI1kmHiSubQatJyDDeDynvzjpYxbq6OQnoSC1RwtOQGSdZ1DWQn8rVHxw0rtmkr6oP/xEmTCKYfW5NpZ9A/NxRaotKEYu/1B2ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olsi6QwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olsi6QwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AC1AC433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712630896;
	bh=eEO94Nzzz4RJZS9JjXx5HoaKS3ltlSXYkTeIMEbjYLE=;
	h=To:Subject:From:Date:From;
	b=olsi6QwRY0ipQy2HNkgyqM96aany/PfLjlwA590YvvsIYaK4uDKq3+pJr9J3nDGRM
	 /pKmpIblPImfcK17lPRxObh/Aofx+x2PohqDopMDJrlXtq19+8ucNVsGMj4JTsOZjT
	 le7oub3XS7ckBtbo8zN4BJjHYhhS6zV6VJMbExdtBjsu9LVyEJqXsIEXLwt2LhauVQ
	 G/JchIgL74Vb4Mm0EVEXBwOUAdkMCask5FjYPV3B+Znc3vdyNCFnxZ28U3Yik1FPKP
	 GebuWqdEYLQYodhZFTz3gEuCS+syAeoiZM3/tX9kUGAsEjEbb3b44tROkbKtV+DsG3
	 nm1wGXz2rcBFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F39C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171263089639.31951.18170170035745431945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ceb309f51f0a4e8610b8fb07a600dab5d289e4b582484f6d03cc4138149a18a
Date: Tue, 09 Apr 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712630896
