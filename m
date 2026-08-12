Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF37407CCC
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786578634; cv=none; b=Z0FT5X5zUS1SOVIZGnPEcQPDqhLXCmKVLuUrSnudFMbREAZIzrdWxFZcd69i5UkLWmbXpO/N9Fzcyb3JNhDVbMYvLgDfVMm3FHpOsHW8VEzrtkJBPrdRQ1xFEqgKqzu9p3WrNhGFHEAtMymr3h6Vz23b/HVqHv7V7Iap9fi9h10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786578634; c=relaxed/simple;
	bh=OyQrynpqP8SkXlv2iHDo4alUOC0lWMhedHdjbBDKWAk=;
	h=To:Subject:From:Message-Id:Date; b=NJ/BdmIsQlahMk5m2fgVxHSWH4wMfJ2/Oi8/Lxu6m5ozYd3QQ5PehxdxstI2cxRvxKMZh+FIv2hFg7H/UaXc0lHgZCoRt8B/XcDL4UQH/QJ2kA3KhfTFYED408krlLVxS0Ihz6cvvBt2WC5Wh6ZB+ROchY1LYV6ezhCREgc6hCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrUvPGob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrUvPGob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5222C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786578633;
	bh=OyQrynpqP8SkXlv2iHDo4alUOC0lWMhedHdjbBDKWAk=;
	h=To:Subject:From:Date:From;
	b=HrUvPGob+9N5McgmlQWi9krIE6GlJRu8N6Jk+gG0sWv6AenzmxPzjeoY/f/cSsi+W
	 yxnFKPmmCpTP8QaFsCKpxsnTbxU+wuix6Dh5XFWXsA3j35p+MmmQKmTHsiFDKvLjh7
	 phybeKDOQye6jV2Sy9EO75fQGzkDhrCyvAVCWqoFJRZPPePNtXjoXBWoIJ6fZXQNZC
	 1G4JJQOsZQ+5oovWD8IjKiCuRVel1s98rfAmmBze4jIsPLG4tD5T/1DwESdnLFLVkJ
	 2iPXsSjMDvOSUM+UkMnRcL92k8lFwALnpwP4cCyFtCFxqgYhZviHwFHb4BB2GUvxxw
	 2jDT7LVgrPnSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2179C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178657863371.1047.3111475993511323980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ddb6b84c34a6ae946a42ea431023d7d79120033fe1c28d8f4cbfdb82c3c8ca9
Date: Wed, 12 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786578633
