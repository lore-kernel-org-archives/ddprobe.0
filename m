Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153BD329F09
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757581194; cv=none; b=OycynG9qMNKQONUBzH9vcZE7osU1YTsy891PUJesd/clg9Z5eJbV4Klu3NdIk3QrdJ8O1+4QXqHO6Ojdlfv/3OWqLlqQIFM+wxZG445crGkPYoLxY6Bslu9D/4yem1zp1pNxxnBB54oeubtkWnDfz16SoPUwxUWWv9KP1tp4b3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757581194; c=relaxed/simple;
	bh=6nhfU881Fj3kFFIc1jSwtl2mShDmwv/NcliCesLk/kc=;
	h=To:Subject:From:Message-Id:Date; b=mLqorRf4S2VcKO3E5y5GY5z6AFmcNkNSLy+o6eBSCHgNUZD7vRS9hp4KhgFazHEoHERbvrvYQdYdOR8VuClMjuFclQ6r6RiVRimu2/eY+Ed7H6d/R4C6NoKGVKV5748PNF+sjnUq3Db8dyqVRFGDX/Dz42SFuyb5ItVWGk3rZx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3Hy7gis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3Hy7gis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1561C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757581193;
	bh=6nhfU881Fj3kFFIc1jSwtl2mShDmwv/NcliCesLk/kc=;
	h=To:Subject:From:Date:From;
	b=l3Hy7gisohtYQlYj1EBiSdF3KYmVbAUd9Bb8KapsgNDrEjnA9kiYnATq5UQ69PP08
	 Du24tPpB66kfH8I3AAZ73HWE59vj5X2Xekgm/+NENme1E2PkBzIz42f82LFHETf7EP
	 k9GKVUO2ndi75X+R90Vv6/0dSICMB3zEBmQEturoRlBvs6noROWzlL1hcYoLw1dKZ9
	 pKvB7E8MirTD5O3Avrl0+la80nQkGFltCnme9no5lIcizk1tV2/Vcszg4xY/MFQKkn
	 P55BPSJh2b7Wef7bMNaLW+vMypy04TKg0FhY1bzhEVcohe8oWdHEkRG59aSh+6QZPG
	 r4yKNfMNFLf1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B9CAC592
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175758119357.17523.10380619850925441520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d54d748ced62984d65c1f80edc53116fe6d54777b2268f8912db5f1980aaf85
Date: Thu, 11 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757581193
