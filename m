Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C49E34BA44
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758984595; cv=none; b=U65IaZHBo8Y6jDknBVxfou/q39mDd+RU16xFdGS1W/gqSNIxbLIUcRc45OntyCiRjgaGwiCkKmkSXk//0T55tyBgRKDe/QJuohHLIJf0yffO1OrwgH/T5mpZYgy2K0FgQqT22QwTG1mRgTa/yXG+IecXBQrylx7YAkl34KA8wH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758984595; c=relaxed/simple;
	bh=SPETMBPznI/cnUC1Zlm3d+famMhSspgYIF9VH5m6s0Y=;
	h=To:Subject:From:Message-Id:Date; b=Vp8twThu2AMMBqLO3FdiJ/nV+El0EFxxa/Gq1mAEtGrJbXWnA+1Pa20qptGEHzjRPskcfMbM2ErY/h4hfEDHesH7feAOgMwpoImUdcEjLtYqbZgt483yZdgZQLjpluN9HjhvjzCQApjlv0aQehe6YDp4lTiP+sb08FvnhTU8qHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdzlJhSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdzlJhSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC8FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758984593;
	bh=SPETMBPznI/cnUC1Zlm3d+famMhSspgYIF9VH5m6s0Y=;
	h=To:Subject:From:Date:From;
	b=DdzlJhSCpjPfOwYuKjsUrt1tp5JdsgXoekxE056nRHQtRq7y5WEfKayOZ1qP4SS2Q
	 ZpIwkQJBhvpifYfUCv7l8h/KKiEb4S6gVdKZXm7v8nJlRPvWExvF56qe/lSYdtofNu
	 rl2ZV4gmh6MHcBvPhhsOKUd4MQLcDjvUNc3LL8gzfml5MnDhLiOU0nsOlSnbkbT5AI
	 UQ1NiLE8gbJacqR5XYWxPMIu4p11R12vy2En7JkBXbOowE1xslY8z7orgogK8zPu0j
	 OdKX6STHl/RU83wupAJsfKZseGBLTb2q3ze9xYGNJqCLPU06F/dcqfAHi8V/ewVpFI
	 rDhnDo4lNbYcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9792ACAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175898459358.14378.14013369463226813519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46274ff5494c67ccaf6853d5ff2b8a0438d9c5f4f6771544cb29fb396c4a5d9b
Date: Sat, 27 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758984593
