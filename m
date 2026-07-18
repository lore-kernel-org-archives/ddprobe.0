Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690802BCF45
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784387914; cv=none; b=uB4gDWM7w11tqgDKmYeqEw4DHSuvK5DWhargf2+4Z0d+FGOkwzi0kK8BKfLvk8D7m+DaKxwcy+n589Z9D4SypSubbIZBsTFoNUWd/2ergW+g4kVehoF/R932zIIjTVkIWoGpiiGOl3drahtu2n/8884PyzXkWjNs1TbY2dPWwZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784387914; c=relaxed/simple;
	bh=HxdWR5E6OH7wx8LqgyKA1Sfyk1hHhvfNYyf+Ts9UYJs=;
	h=To:Subject:From:Message-Id:Date; b=TJEG9EjLlF/1+ImswsiSvPaydqn3oAr40EBPZoDApvdaz1FiGskoNPjDD5YSoIUpvouOwDlnt+dKpAfpQ0/UK8dC/qZzTsoDSm60tPmaQQBWPvsTwESbzXq5eLzFguIx3TC+PuuHNV+q7E5i/FDePMy5uBw/UKlp47t1ff4UmFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KF/AND1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KF/AND1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E87FCC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784387913;
	bh=HxdWR5E6OH7wx8LqgyKA1Sfyk1hHhvfNYyf+Ts9UYJs=;
	h=To:Subject:From:Date:From;
	b=KF/AND1iiCj3mQg8nKZ7Xj/DaiYRovfnKfg9WwsOl0VbAotGKzr4GUgG/0XPr/Dkm
	 gz+tM4+Brdper9RHHHfSF3QPZSPrVta1zT/bNDigfPkEynelcg3vH8NWU6UbnP999O
	 QjrO8i+Bb5QktlNg99hyKdGqrbulI+SnyDJ4ePg7Krxxz0BKaFs12+odgc/bqkLiK7
	 oOzG5jYoLuP48BCBO6JO11QYWbfrtKpULKegltrPBNr1rqEW0Auo9QDkK7iUQoGKO8
	 ehXJWW3bWkY93GDbCu/n2DcqYvae4CO+1OWYsVIvJNMR6fGUXm2Ys6hhSJ0D9NBWhn
	 foBGx7UtoSwFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2C8C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178438791368.5425.18146682275063796098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dfd65ed6ade621cd26e3e8d76d3dd0216a37eec8dbf598594f1fa149f113bc4
Date: Sat, 18 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784387913
