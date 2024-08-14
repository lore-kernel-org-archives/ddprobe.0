Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289A31448FD
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723637754; cv=none; b=XXLGpfi4fU29jbWzvG2yiDMxvyT0Zl1aRZggRVorOhclQaczoY1T2pX+7fQwuvfDTnTbr35dTgOjSEVT/ruMg3/SpeZSutgB6plPJ+DThkY2ZWmQ+ey6fCffHAJlKyn4KirYlojALC/g+DDcr+QsSkHhXqw2EcnMHe1zvOffWjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723637754; c=relaxed/simple;
	bh=1pHFdGm026/kl/RT8b8O0+H/E1pj4q1QmkRsJ9lAFuQ=;
	h=To:Subject:From:Message-Id:Date; b=T9y8B/dNm/Awz+GO477vWPJt7MczM2rbNCqIr8vpg3EUmPKtkPo/fHvSKgD/TjOjiJdlD1IE5q4M+aXzumlV2YHThD1IbcFGG7s4TKm7+QPmrS4eJc2cAmDRieRdxlKPpri2pLmnorWL5e+8fnmQ6fejNHqdOuH8GDpBbcwaN6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkTuECG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkTuECG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A7CC32786
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723637753;
	bh=1pHFdGm026/kl/RT8b8O0+H/E1pj4q1QmkRsJ9lAFuQ=;
	h=To:Subject:From:Date:From;
	b=AkTuECG6ZCze4fmOSYQ6zrT5cfbR9nvFRVNYBYaxCsMdQZ/6Ny7TJsFJpM+EZQlmo
	 Q9MI3QnOfVCLL29y+tsfGwcKBM3Ep1Wu99f+IKN9DdQHMwf974rvNBLImReZF27LSY
	 g6FQFWU+Rn9pVuyIPZwUgnUv+k0koKRFNTCALl/UzW7vhitXO4uK1C3c1SHa6xqflx
	 Nafer/QfvgTrUQmneYse8pIfiPfwJnDaeE4t7BvUZa0VdBtmbLGzn9pHiw/vtpvreR
	 C0RRBP4KifdBWtZCt1EgjBxRa/5oibHAnj1bLPBkntAGISMbjoStLTkxXOSbWT3+o6
	 puhf6cVHuqNUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B11C52D7B
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172363775360.32069.16567610310181896945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8497fb82ae72623d30b8e104a8764a747890e8b9d34faa8864693c0a40f79c8b
Date: Wed, 14 Aug 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723637753
