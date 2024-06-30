Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CFB22094
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 19:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719775463; cv=none; b=iekOYdzGVUjwd3XQDSTC/JXbiJq3XNvc4hKI2Fh4MLD3VAMBgt78EH1vTUFxPsglyduGoCSNwCc4pLXxI5At/sa1eB992pBrBmZWrioU6d1aUPTX4I+eZCqy62Uf9yxgGBKU1brIzmivUZQ8TVqedvcCSekurRJbf4+nOJo+aCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719775463; c=relaxed/simple;
	bh=+/my7ZM+qS0DAKhAOFviKz7uH99xRF2DzngMzJxN2Ak=;
	h=To:Subject:From:Message-Id:Date; b=T57tD7IVj+33ptuUImjHRfl6QOMTrBz0ndVgZfLqbtawAem898pTy8LWzm/IeBesiDualDKHJzDCMJgXirhOhsKSpcPpwq51ATTHCx2fgZmKm2CGyGVH7nkXI/l9jtaSh3gLebZeHbjO4I4MERxfFCMlyCyA6ubBI2FhXEUZ4dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHONLz+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHONLz+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E01D9C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 19:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719775462;
	bh=+/my7ZM+qS0DAKhAOFviKz7uH99xRF2DzngMzJxN2Ak=;
	h=To:Subject:From:Date:From;
	b=pHONLz+xqRDlzcLEpLSIfLl5AgaayOtgtHgK84jt7A92kHOAcM21YbxMLKSKg7FcI
	 t23M/IyWjH/qliNbOu4YnGE+eeoRNCgnHNO9aVZu7vIfId3hDOsVRIyB2g2+O+d96m
	 MwJf679QOzM/3bWZTE/FDxmm9SEUc5BCD9WBw92w/KcDIYlS+aF/KHuGC2/NE3OVo0
	 PLvXeMMSViSU0OcvEr4m7NgaMNIfYa0oTC98x5V/rJ1j4tg4LOuP13sZErWPTVHxWf
	 ak4piJjcVyGRdMWFRVfQ+PZEPTkLVUJIxy2Rd3GtgdGWhfc7t4fnv18KQPrHjFSHOD
	 //+xQzWK0wQdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C877EC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 19:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171977546280.15929.16748474744159365226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c181cc6774b6faaaf0e2f7cc88bbe0734db736ca1d8ea14fb7660478f377f50c
Date: Sun, 30 Jun 2024 19:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719775462
