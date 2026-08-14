Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D85E3E3169
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786743634; cv=none; b=eNZ/UwDhKwYcm4mENq5RkzUNpJuVS9urk+kN+t6TrB7FdyYuksz6JKeY6FsthoP5HJTiOO2oZ/1/Xxofbj1Xyp5MJy8+9URYZ6uvp3KYzPHNsDQ7YTLZsbx6Jqo2MvZJnmHuZ4LFFSwE6ledxVk8ARY3AFptgbKj9/HzczTQRBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786743634; c=relaxed/simple;
	bh=eCQZyOkWeg8qhkjTfktQvET/NqASyCbxrrPjFuSFFCg=;
	h=To:Subject:From:Message-Id:Date; b=Sm0AIx+WVAmt9G+2siGIiS3LNRyS5Mr/bn2xfWTRZggYnIonflacpd9I7wwKksJF4qxIfQFAcbcsA2rBE9g62VSc37kjewRXAJTCP+FiWIGve1TaZEoeXWKY6n0T2myI80OvMW4g0S4wuKwJHpf95Awak0M1N4NnauEoTixO4Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PzLz0Ma4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PzLz0Ma4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68AFC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786743633;
	bh=eCQZyOkWeg8qhkjTfktQvET/NqASyCbxrrPjFuSFFCg=;
	h=To:Subject:From:Date:From;
	b=PzLz0Ma4OcrH5E68dmyAoNYRJ0lKq+XVJFGfhUKXLBSCN+Pz02/8EfN261gwk/ioh
	 24zLxecjThRMaWotwnrB0lse4gXifwSSwnzh25a8aNBsHd8Pz6HjNyqWXALC1h5Ubg
	 /8wYTTo0irzFfr79s18Kuk6pjYFckeV9zZGFBj4qOY5SwIe4JgL825PuZm8huR0bJV
	 ckjLA23hRoV/5PLKX/uzf172PpJ5uV8tcvOB886XEKfye4e4jbGLBw9aUyYPRvdmWk
	 2pJzOBBltaHFRgBJXouqFNjaNRkPAcLziVdZga/YePQokr3OFPJ21D5emuWYCi5wjA
	 YiiiR4Mmi7Ivg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E77C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178674363368.8569.12808717335986484367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d6a5c1a68223a557b8d7dc88752b19f54231d99e7b5735d41e8aaf00817f5f
Date: Fri, 14 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786743633
