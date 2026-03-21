Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BE2396D10
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774108494; cv=none; b=MFeH6t/ArlK4oJaI+bKT38s2nDXSTHxWV9XLf/W/EY+aiqADht6vQH/wQt5T2dpGHPAk5ivjqVcvWh50T+LP1wUD+fiacJuUy4LhrkAJUBs02uvVwSimGnsbjTtlOHVNWPknR30t1uH4H/tb1ZnINraU6h3pDFYkLIQTAVQ1c1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774108494; c=relaxed/simple;
	bh=p7CJHDTOA5bFeGUoUEVFNn8QS0fSbRYEj6f8A0ZweWo=;
	h=To:Subject:From:Message-Id:Date; b=IuLmLcFjbRCIJ+cltpJpFiPJS8lH1yn6cIJrPj9Zk5SbLTEXQ2RZ2JfV9AqpTYVxdupixcIGqGovz3Uzv5RgPj4wkUujVcwKVYbQdoU8/jn07aWf1vGSUN6uSSfeKn+KQfU7fpY1SNcHOWeAPQWdIXy96GCZOGrKG0hOWht3oaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DnT6Ko3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DnT6Ko3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F482C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774108493;
	bh=p7CJHDTOA5bFeGUoUEVFNn8QS0fSbRYEj6f8A0ZweWo=;
	h=To:Subject:From:Date:From;
	b=DnT6Ko3lm4E56uYkRRj7aptkeTYA2DhS2qRMR0Ywow+Q33Pt4ZTS9kpwXxjAGiLmp
	 8KjuwuOJ9pz70FX6tRq7phD4zHjN0M9Y1oaLUyew1kOWTxsa0j+NTrFpib0+m/Nhy1
	 jtDauztQejNFxLl/JTHn66cETlaiEjx2kwdq7rxokmPjWfiNn7vc302j/aYZLyn1ZU
	 Eq/ZC21X9XxkNIkW+LqVA/88vejyo9Z6i210wWa4zxwpK4IZWEnniJEwhES9kBmSJH
	 V5DBtivFkmhBMnWKGFdHYy64MG49e6h+DdmGgkGWwbhFkXd06IJuP3C8IhMRBz2nwI
	 MkyGPtEkWn7dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912121094489
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177410849357.3407.2009674444227781633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6dfb46e109fd532f73078db2a95ea2c96c7a84c6efe77b75419ba87aa54ad8c
Date: Sat, 21 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774108493
