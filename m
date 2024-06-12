Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB82146017
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 11:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718191103; cv=none; b=kBQyu2lm8Qy8i5zxmRlIGqkoZnY/jBwEf4ZK3+T3yycrBTrN2sDrFteJX8K6U0h6yWpeYAxXStTy/66ctyNjcF69JfytMJWLBqdTbwPC1eBeVrVPLq47pc37vTGgsL6gRJee2QPpC9ItSd9HIEHj1n+Gj+e37NyFXmVgU70gixk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718191103; c=relaxed/simple;
	bh=IIlvJKB8jk3kBwKxwt8rrtqPJjWf3u2xginCOoTW+2M=;
	h=To:Subject:From:Message-Id:Date; b=rSja+UFfMzDyvDRHPwKLJSxJ4QUBABPUyBN4whWbdAIuT0wctmPpmPKyT4ezUy1UufXKNlaopy2ANjnKVE2zUNuLTZKzPG8ULl/5t0SvEdqeesHZtqU2k28vYs/GSTAd6P+0TmVVKabIsuNai9739frQkc3rqk67asA00++/t/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdD+VqXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdD+VqXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7944C3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 11:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718191102;
	bh=IIlvJKB8jk3kBwKxwt8rrtqPJjWf3u2xginCOoTW+2M=;
	h=To:Subject:From:Date:From;
	b=SdD+VqXkXMpDn24o1iBpB5lo3o/Xr9XO96AOena2c7mLYCRn99ohQYEYc6HyfkAOP
	 S4wZmTx3+CsdflzatpzE5Unmy9KEcN/xLwYf/OGXnXCKHjHhE5WAiC3/lSRi/BJzlh
	 CGA7mbXbceDdaTy18/7ECwd0ZBibG/AWtNbunCAHzNfKd+NomKXiye2SJaG8DuPZKs
	 UNYn1UUzUOgWmSvzdXQk+EjVln+IcqoM4XVy7Pm09unWuDomytYsM1L58BPUblixO6
	 8K9L+sqYW5xnKh0qj8gLIT7lWJW1ueS5fhVuzARltMAONg/pWiJCY/OP0sb/W1vVsf
	 vcOtjcGeIAo9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFFE7C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 11:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171819110283.18247.8882518754587008083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961ffe4eda66faa2c6060d2494b5a4cc21b5f2299473968745ca2391c408600e
Date: Wed, 12 Jun 2024 11:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718191102
