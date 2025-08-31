Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F831E0DFE
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756655394; cv=none; b=bpR+7OspWTdaBNck0B4BTHRF+lb5UFfBeIdp4AUTv1Y8WBnQ2sc28iU2HZIh+mKvYpDI9kGmW3PUGi2HfRxIWogiNLoBg1qYo5bgq5RPRC9ujTI2y01HhcexBZEIof/YUkJodKs3q8XOnBa7lfVA+REBmnbqk262ujVkr0rf9rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756655394; c=relaxed/simple;
	bh=eLNjwu80CbmUxmN95hCZTYVFH0YefZSxb/XOQ7MmDs4=;
	h=To:Subject:From:Message-Id:Date; b=s9f1Q2xRPjVB+r6vmGIvD+v2gk+C4H74bVRfgzh5VfISrAjzH1Y6DOpyNX4Jh66yxwjV98BsN+snzeWRiS3PlUNGgEWS4TblRGDqghVBl8zdTLVMoaNDYML7W6z7q40vueHsTZkYWSC9jyas3VtLJRF43LtrqZPcSXlsWNb8QX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCC+5JqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCC+5JqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3322C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756655393;
	bh=eLNjwu80CbmUxmN95hCZTYVFH0YefZSxb/XOQ7MmDs4=;
	h=To:Subject:From:Date:From;
	b=eCC+5JqLsjcGD4tfUUat4bNpv6wvkmlyOMrMBKBQcd+9E7FCI3JCTaG3t7b8DwFH2
	 JAlWEugAjWJB+HsIvnzfcFxd0iX1DpzmdZytqPcjMh6n7kcj5OP+kikqZ7KeFKsBhr
	 d0wZ/5nxIZPJTrkPKtuIxlXzudZ+5hGo923X9VduU1RgsEGy+lfrxS43nbiX4gBDyj
	 Lxh70GRLUJ+m67pviT1uNWTsdF4iFCzs3iCvRUedG3FJJ4gZ1ccAPdHfvcZImvrflF
	 mbmXjej0MFyeO7+T2Ce1T5q2FSEttXXWUzNF2QcgQId3STtgfEMI1IcFAyzp0zF10K
	 JwD1Hb9ssnVQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9142CCA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175665539357.25042.3412170970799240784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f66a3d9853928c46aba6a05b2caada18f2179aea087a16bb34934540b7bfad
Date: Sun, 31 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756655393
