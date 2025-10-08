Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E201C3BFC
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759914594; cv=none; b=KX7o4t9rGiFadY26V1WzpT8PDIQMo5kj4cAmnNRWmG29znp5ynbsZ8Tj3AvsgKpWRD8uCp1PCgVAvDuNduMXDuzsmJCnDt/csfeL67gkBDtr2dUWmWlmWwTmPs2jsrAZvqaFU89ISxHBnA9rnOolBIHoALB3zWV0/AcB+0trE/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759914594; c=relaxed/simple;
	bh=12ZdkJ3r0SxeaMnlGyNASjkfbJPh61WuvbX6Nn5IDOo=;
	h=To:Subject:From:Message-Id:Date; b=JtRGGQkQXXYRNL2hoRJ7cHYr7eH2hVPUZTo658kj66AVDiCc3vZGfE+LevwHCeW5+zH72GolUbpWM4erP7gTwwDz4kXDj7C8Nq4EWmrW00YQ3Y0VrUlAApgpiE2cu7cUsNMBIAHeso3BE8jJ+MgZADFJ9fJkEYIDToihPIQ1j6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vcg58SIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vcg58SIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88E1C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759914593;
	bh=12ZdkJ3r0SxeaMnlGyNASjkfbJPh61WuvbX6Nn5IDOo=;
	h=To:Subject:From:Date:From;
	b=Vcg58SIRB8hw9atVT400v+V0LbwMy7HIUjPr1NpDmebgnHzB1CTr2y2Ec7gooMh4f
	 pwVXk4/hh+DkKbIZstDCbofYu1HWQ5ObDCWq6WSypVtS17HJ0bZqV3HPbGaSw8XPdY
	 bQBTFuiNp9qSID5iqyWBEoHabXUqriTBXqJHFmFjq14aNQQXpdcxb9x8s/8gPBkEzS
	 L1uVvC3S57BpfKsdfwK9ICpasLEvq8ehpzvEF9pZiauFnZUQG+rM2bPrvuBswt1UHO
	 jrk2L8H6eBvE7YoMGEWkk6Q88s6CvcY5Fvq0KBAl/fTAwx8NtkHpx2gKacgKAg7WYS
	 GroD7eSKWkljg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933CBCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175991459359.8616.15963628261126932279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fda0bc5555e84c919eb332777f99a906d144f03a34191db979840e113e55f6a
Date: Wed, 08 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759914593
