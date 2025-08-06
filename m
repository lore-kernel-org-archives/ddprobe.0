Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E3172613
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754449794; cv=none; b=NfNwvwa2Re42UATMhDNYu5GQ+sBq4tc5GB+GsumaEy1kEKVnaxTNs2U67ppFkex+W3C0YXuWE2WjZCxn1WnGgYigTgv2+cJpfW4AVbdbvp1+lm5ER2ABVTzMB8wmHHju3caxVzqYjoJs9+H1QdMv17yPE+Eylldqvcq30KH2y9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754449794; c=relaxed/simple;
	bh=oha2NGSMDLeyEVUcIaier+04Bn+ITewKIBHYAsGhoAQ=;
	h=To:Subject:From:Message-Id:Date; b=o7LcKC2z9+jfR5nNZVbgTyJLnSjQHvIwR5OK/V4Xy+5SLTrLQQzgCN70EFLhXGboUv73MMeomP3hgDKH93Ysr7IdSy73NzC7SDplQrTikGLL/L6sH4CXC2eMj3Ap0AeZUjDaqe7TR7jLV5davFaimx5YganxteqyAubd4R6eLbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUo3Dc9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUo3Dc9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1137C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754449793;
	bh=oha2NGSMDLeyEVUcIaier+04Bn+ITewKIBHYAsGhoAQ=;
	h=To:Subject:From:Date:From;
	b=YUo3Dc9ryO8Hj94zYuNH5Z3PKHg1RnV/JCSC873mSCOgaTsW2y0AguhcgwG13DS2y
	 aL+7zAX0JTd7LogArUBKpl/qJmCyqqTZZ/Z2lrm2YLPHX8F5XdBi6Gn68Sn2G4LUoN
	 nC8ugTiDPjjdAJa/CVxdAsij4eoVe5x149nCyQABuj6CaqvF6jBzEOteOr7izZyi+O
	 iH85cvFcpdqouFplCMJ+n9Xf/5e4i/ELU54qgGQU79SDcRliFmsg4FZsX+dJ+0wawg
	 ZlnW9BoIlWDZB/IHHVrg4NUsvNnl1SmNe7p2CNSC6WN0ewj4xicnWTaKIlMW8P8d9k
	 +XdGjLax20ecw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8BDC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175444979357.31822.10617537523539659047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27fe23e71062edb8cad11ef9923ef888ae8dc3040832a2ad62c7e1d18f115e16
Date: Wed, 06 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754449793
