Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275F41C36
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725342954; cv=none; b=Tf6LzvtlAvfIi2vpUvtIJoqpiddINmp+B6sonf32iSw4SlypuIvBuGv/o1c8YazM0eRDZubGCxz6vv+4FYBUB5KQ79dqp3HdszawREllt1WvWyba7Dh0mcP0zv9KC1BgzyIhqhzrKqVpWodukENGeOC7SAfH5TZSGUhojKPYMVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725342954; c=relaxed/simple;
	bh=s1+YbLLGvb77rmTOCJ+0ABykY0JofkqxYU9Lhd50nVg=;
	h=To:Subject:From:Message-Id:Date; b=UFo8pvpfMJzlDhgssYbP+jwAJ4L/M0r5I96D4mQG6NFn2fksCbeGKUVSkgPb6sKg6glbP9jkMHqlNqljZ9JGoF0beLPIkse9THriAio4ebjoDSK2pBdobcNsNv/YbC1DlufRNwBTZ67DnIQmM2r6HwfvgI3AbVIN1B0dwLXObI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGidh7KP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGidh7KP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E60C4CEC5
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725342953;
	bh=s1+YbLLGvb77rmTOCJ+0ABykY0JofkqxYU9Lhd50nVg=;
	h=To:Subject:From:Date:From;
	b=rGidh7KPGiWWZuFyA8SgKWMPtKRLYAhShbVKrzcjtPjapC4YAnENJp3kgqI5Zxd+1
	 6ns+Bn4zh/2XGhodaiYw1wfsWaEiycFdUzmu7wbTuccUIW+dSAt3Z+D+wegKhvGBgC
	 Jd6Mdft5u0C0PbqNiHxFEYoBAwmQLhLjUmpNjFEll1W0KDjBRb0ULrd+O/LC3rnmOh
	 Gj9TC8wMLTcVxmnN1F6cUfEWctxFTdiCQS5DH2WzPOgER9mvQBCYdubrLHhuSJENR/
	 Ma+Na3NdxoNUvSTulQyycsdaTohCGKG4D8veK0zrUR4WwBr2782fB0Nglme8jTwhXH
	 TDFZnWeiqqHdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93158CD342C
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172534295359.32437.10054355436047107517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c7857b4c679980c32c8a41017fa46dfc28b58f793b067a39f2902436487011f
Date: Tue, 03 Sep 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725342953
