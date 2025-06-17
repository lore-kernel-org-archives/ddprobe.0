Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B83F28ECE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750150194; cv=none; b=ZH2BFImdmuMdfqEaUNZQux08FZ+Y9/Uug5Rvualz1e2Xb+Lz9NOzb86ZHA5hh5+uatjRpZpHk1q4FvcP0Y/KedBRB2KwngTA+v2SuE16ct8cClmTupcn0LHHn1OUasXq007itU2p6XriEGJGB/q0cLoaXYX+Cg12njg1RnsRad4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750150194; c=relaxed/simple;
	bh=iEahlvGTKQigOxRSGDjz4cXJKxDlD7JxJr5Nsd7nICg=;
	h=To:Subject:From:Message-Id:Date; b=mLJAJLA8skbDeGCkql59I9ckS7Hh25yXRgVAcxRqTQqy+wl0q+EmW/EZ5cs8k1XigLTTRc0xVHN/e/vtChpzZSLsGcHoSRk4S1qdIrNgXydXXFO68jJ9VZzlSBWpJVFJDqalaKZ42BL0ya3zmhxTKxRJgHgk1viWud9EvqEggKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIpWfnc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIpWfnc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0746C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750150193;
	bh=iEahlvGTKQigOxRSGDjz4cXJKxDlD7JxJr5Nsd7nICg=;
	h=To:Subject:From:Date:From;
	b=WIpWfnc8HlfDr2mkosvYeztjRF4mfHmwubbrG6oREU1QI2gw27EN7NXf+q/mWdApn
	 zV16xoQSc1ZzMmLHBCxNm+9AObzOrt4MA/PbI9nmtlxGP4gty1DUYwBEpimz9dUIae
	 /o7ozd2mnRQHWpHgwEnq/87eTbhT2aTL0ofO+C8SVmCeve4u+1HSEoRinh4+v6Sf0M
	 /+Dwzy4Smmjk9aqLgfFbSVJVwid/kPMV1GtZqhhbBuQr47acZiZxfmVVwXOOFaGlV5
	 yKrgCHSRMpD3gMhApVQiY6g/nx6fLSA7uT2dLoHFOwpLDdiUCY+YeP2ZweTIaL4Iqf
	 3xJOGKVmNb6Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908EBC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175015019358.27702.6053224706817392070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a77e74891af6efc3158b75ec49eb4caf6c4295da880263f4536de82451627e0
Date: Tue, 17 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750150193
