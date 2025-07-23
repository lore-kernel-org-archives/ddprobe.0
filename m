Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218432E54DB
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753271394; cv=none; b=V6ZeioVXVbqaSUWQ9woSpYpvj9GhSricD0ft+1JUGiKrxRYH3r63APjFaEre1j4AuENeU8Lur1ss+YzZ+0yBvcXbZFmdW8TXVastv9aJlkLrDP7egdzXcUyNwUGnqG7hZxZrylZNz2mpBMTPC1X9XoWNoOUvnMIRSpcsaX1/8sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753271394; c=relaxed/simple;
	bh=yw6970MKNFNMB5ziO1sUGABXg9MweWLIz6L1J0KQHPw=;
	h=To:Subject:From:Message-Id:Date; b=YI5aAsPEOFRJZVumd5snA2JWSWLKuP9ma+rSTSipSKMPDC22Y1ae6k+ZSgszSL1pvSj1n6f+gzviqCP08rGmHXgvzNrZh8h/teEHO7TeE//CevsyufK/zaOitXQijYCn/ZMBfkY7haq3cKbEEja9TyO7TRp3+zF4tp6xBYJDgDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIO0F37B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIO0F37B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69BFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753271393;
	bh=yw6970MKNFNMB5ziO1sUGABXg9MweWLIz6L1J0KQHPw=;
	h=To:Subject:From:Date:From;
	b=NIO0F37B3cn3uPpPuVeXaHctatO2eIOZt75XB1vZrEmvfbLQqRaMPo/otWf2wMg0a
	 eCi+0dsfkWneJhyKpn+wrpIenDbrw68t9YWwy9zPCWD/k6ZI7Udmt/aJYX3FVahxdN
	 jV1IvsodxKBLLtvLDBlpRR3UIBU2RLcUmthmjwDtxnuQQUdVOqgxGaGrymyGN4crD/
	 YwLiw79CmPa0Da66tKH2BAYQ+MJb2wfI/09jUoZ5moAUkkyza3O9VqugzKe6v+Bz6F
	 /q/CmEinLYeHZHVTB3X3veKtihEgIyW1EztI92wQKKV2Z3Rm8P+ZYzet6kl5zAM9kK
	 v36NWYBOc7h5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF14C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175327139362.7359.14643361921754102083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd766ee81d4ccd7ba9aead649ec286040711528ac91d22af3de619190441b0a
Date: Wed, 23 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753271393
