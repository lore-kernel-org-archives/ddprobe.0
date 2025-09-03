Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F64529B8F5
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756916994; cv=none; b=VGm/ryJao8N/xSOtwb0IkR0SFIH8hfJ/zbWntHJp0qzWZhlpingvDH6NW1/KwQbEdb+FK3k/fUlIRvYztRd/HbQOC3e5R9U3qG649CzKDX48QM0TJl/HgKHhd9NB046lZWhW1D+9gjQoe4HoEGhRZdBwmg280bV0gOiRWWhUFTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756916994; c=relaxed/simple;
	bh=yLDTps7B9hJ44p6qVAmv0kyXfyxdtM6TRzl084hYfp0=;
	h=To:Subject:From:Message-Id:Date; b=DAuEz76Urx6+avCIlO4Jx4hq+e91Stm1Sh3+DAOjCqk9XN9rF0pPfrA05ynZzioxJdEwW0A4kRafsaV41i2QZAsfaRG1+AQZzcfvo+s9VCQVO0vTfImztvik0cpoOuNGhr+v4i0Tvr0gIrHwUsKrL3GL5n9igIv0DGC1Mzz/NsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJxu7/Fj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJxu7/Fj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EC9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756916993;
	bh=yLDTps7B9hJ44p6qVAmv0kyXfyxdtM6TRzl084hYfp0=;
	h=To:Subject:From:Date:From;
	b=dJxu7/Fjqygb6/mpo63IAA+Ia/08Dfe9E+a8YyVvvYnE4ZQVDk04ICVN2BdamFhgF
	 chKfxeS8OaHqoQRd6LTOaN5ElwcKKnSeGOlow7f6Ort+pb1+dOxFIISdlrsuELDA+z
	 dq5DTM75IMafjBJ+IzK42Xd5OGGvHRyRiuBLeVCvHZuB5Cf/DpPwirporJW0eFBw5v
	 Zv24HVZjIn/sDFNC1MPAMfTcbOEU4deIKaxaU9nNfaizAuZmmmHRUgRHNykJVA6opc
	 QcfEEkvn9SKefjFyNmiymHPkTn3TMzUm+tHiUxO9b919SAFQa4oHkPtmMVyWZpnMeL
	 kCBo2WG92lZaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91875CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175691699358.12690.16379211582639527874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b514d765dbb658f53fe65b386092f66a8ec5349eea0d30f8c7625cf2df24dd
Date: Wed, 03 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756916993
