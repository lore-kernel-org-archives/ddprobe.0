Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4C631AABF
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777668454; cv=none; b=HqwPGWeMT0XtwW90DRsJpjYIKxrBKJNv0kvG8S/7PN4XqqN1N7h5JJJ25xo8MHxs9CtqDfGHiDTtCvvOk4c2c0kaiKkVWEfKTnYQkWu2bGeWK2BnPPMGNUFnYVrx5soeG8NB5U2WC5xIDrRkK7q8K5n9kxZVfNOPtMVJG4rZpww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777668454; c=relaxed/simple;
	bh=bXr7C8iWekiq8RPcqtx2rJaIRMjxQwuWzkw34l2dLuQ=;
	h=To:Subject:From:Message-Id:Date; b=fGTgIqw6Pa7OMLOWHn35lA5nDcjx+XqKfBiF1HnSH5J3TU8jvGgW+DEqXQlNFDfL31hseKoVHtuDzSzrh5krfgdiPFGqXIRhX+R91GnMyrRGAVBfMcT62HF6wCqmewn2Hu33cQrAoEvNvdJZ9ii6Qb4NA9bz801/xq2l2neOU2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccjIgkxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccjIgkxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1705C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777668453;
	bh=bXr7C8iWekiq8RPcqtx2rJaIRMjxQwuWzkw34l2dLuQ=;
	h=To:Subject:From:Date:From;
	b=ccjIgkxwX9Shg+YeMamUIlzKvN7Z/sAWE+8I5vT9bNJwxNU0Q1vrk3ARmE3w5MzpX
	 1AUKlaI9CBfSH2RHmWqdaQvTfKmthWCYapfwXiizyTSwf+bcktGxF71KJkJjYJ5/hy
	 H0Lr+mlm+TcACV7HgPjjb4dItwMcIlsv1SbrCUPmc9OGwuNfe99aez36xy2cHqiMKF
	 +ZAlKquySO8slvi0XZK/Y98rWkPZHyc0tOJkA0OhzJEfQfqYLBEoNmqDRAv72Ryyh/
	 NXWFUVL1FG7IopVFLbUo0SIErGK7d6138f6DXwyYa38xQob6jR7WPOwKsKyglEtY+Z
	 YQSDbdCK4eJCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA22CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177766845368.25723.7047021636106990649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64c5091cd404fa4f6ac3a47127af22760523cb8d16e7e0b21f2729823c4e5074
Date: Fri, 01 May 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777668453
