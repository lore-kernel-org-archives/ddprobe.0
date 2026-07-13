Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F19323EAB4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 11:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783942714; cv=none; b=lIi1iKecbwY77dhEzD1GrjQscpAwzodl1DHfZbbxL6rm97ldqNjE8ezGtag1ikErzH/GrPWkXzcy+wioD7/JfuAfdqOd0PhUJVtGb7NAH+bkR9eAytkMnz4iWbu0UUMzrlqejGRxfwuprs0wmpXO98dR4yjDoIroqxV9aHO/A6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783942714; c=relaxed/simple;
	bh=3gjrpBNQ8inol6e6b+620ULrQ7JPgOoVDvR6OiEGePc=;
	h=To:Subject:From:Message-Id:Date; b=lAZ1ZUAGAOzCqdaadhlCgYzkaIhLZQFlj8GdJn20xQrwNBn9v1fy5vs9fvDUvSwDKWvCS34vfcPdj1BbfY1H71hGgQdAwdjeZ5uYNu6fE6Kb6Op4R5xz8RQKDaw1iYIydCYRDyHPEUCTy2jSlNlsDDFF9jCR8ItMcj1gZyCf4nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvFqgNsC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvFqgNsC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF76C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783942713;
	bh=3gjrpBNQ8inol6e6b+620ULrQ7JPgOoVDvR6OiEGePc=;
	h=To:Subject:From:Date:From;
	b=JvFqgNsC19wzLcYyIML2qHo2nsvDT2YaGU2b8oIXAaaidKqkvoj19Tp8EENWJiidm
	 w3u1RE+Sa7gBwaej/G+Z5VGGfLS4eFpvXjfsCL/5/EBDP/JN/aZoOo1Wc5UOgbq18A
	 7RgeLfKyKq5vOqTyCouKJqO/o26zjAUt8UyxXe6Okt3bMfwOMtjlDc4jvPS5bDL0sX
	 xoEfYkfp10rY3xozcTZLJHXknfb3StDjRPkbBuImbfbSSatoywjgvis3p7wVQEjDec
	 QAvoh18b/7bS4YtpgeEdVX4uqwgiY3LwsGiGg62AS4/B5KrLmIF6AYLRhyF4VjO3Cw
	 zf6IioibEBNdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DC3C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178394271368.10371.6687333909507669698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7241d6263142ae935a6e6b2ef97d54e18011846d4e8102523b1a91f30330bcfd
Date: Mon, 13 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783942713
