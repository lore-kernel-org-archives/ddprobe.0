Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377B31FBC8E
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 17:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782581914; cv=none; b=BAuUcbi+5/8MO/sTPkEXHMOJnaCE6pXOIgYJ+MEIlb6yuMZPL82BcfbvHqn/ESkAPbFgWQSbz+nz5bzSLL7ws0bonq61U1v74vPBERHFDpthWTS1dYNBdUD23kEtfHaWNKuiey5rZ/p/8U2SBoPFpVi1JAUyhodH9mNB5T1Ec9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782581914; c=relaxed/simple;
	bh=Tkl+5eiAqe9EDp2ai39soGSTYRD2b/N41etJU2VEekY=;
	h=To:Subject:From:Message-Id:Date; b=ZKIuzcCS+rTY+IPcrMTdJykfBpyo/rwj4ZgC/qb+W0TPVYg+qNHYZ10VWveXr1hl2d0hAwUIJlZcAoOE/LnQDa+jJPqoIWckE0NxZu0h0v8ryB0Op0oX+pJ6+3BWY+6JlPAfs57Oqe0Eqz0r+Zex6Ni77MOZfk6Gi+mfl41tFmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WV1QM0/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WV1QM0/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD18C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782581913;
	bh=Tkl+5eiAqe9EDp2ai39soGSTYRD2b/N41etJU2VEekY=;
	h=To:Subject:From:Date:From;
	b=WV1QM0/ZWsb9Y/zwJwZ9/4qJhrufBvtID1G120MwkAtkVhg9tYVle740yQp1o+7h4
	 XltREzYLRf4O1djIjNyFrt1IHlim7PdNpshhpWd0nOyNqTnDoTAe4tyuR1/lMVh7bI
	 vud8lCZQ/bkk3PeCofZX/+CO15tSKW6nL5bVvjQ4XzNuv7tvqQpN1h+BJrIP9NGhEt
	 F5iEIKPiNh9LmnpXi21NBT/Txw3M79P8VwT68fHPB+5/wT1aK1fKfY5E027IEUPIqx
	 yYqYwax/y/KiFP+QWJpgbo+r/nHJULFSePz6/T+tfzcwgq/nKBTRCLJby4TO/Uq0Fh
	 C1z5s6yINBuXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB5FC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178258191369.28070.1272923798003364724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 234e495bb2d4b10616d5747cdf7439c62268ecb8e302e5b8645fa0c6427d826b
Date: Sat, 27 Jun 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782581913
