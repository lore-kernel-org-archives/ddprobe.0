Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3468F287242
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755689394; cv=none; b=IrXOijxfOp97av3qLvmChy1u1aN1hX3JWkXV1YIxuLc0mjuVwxz2XGNyRcizptgtWKY+ZcFnv/fdmL5D+S6kG19kGcphzuEK2BAEMfNm2RcnAmXkQuK4WiYSHZtrbNCZR1YEk9UcZdENf36Al2r2B+qIk6/d1IuwGUOVGIOd9pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755689394; c=relaxed/simple;
	bh=gBvYnjESERDAB3x7XmJi/51WvxxFKx9kKAAc1b8CURA=;
	h=To:Subject:From:Message-Id:Date; b=Fau6ReFYfk8kdgVurRLd9LOXSKSgZPvG4hxFKWB20JRfkgXoXOjeBd+qHAd3bxCzcm4VkFpILv8nKYF+ArnGiZs6m46cqXhTVOApwDFVzws2seB36U9xcvtg5LLiC5jL1LyMm3CLyjAPEa3ADwIeCxP79P3AOvNFWfo9ps7uPtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPl1pHKN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPl1pHKN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4201C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755689393;
	bh=gBvYnjESERDAB3x7XmJi/51WvxxFKx9kKAAc1b8CURA=;
	h=To:Subject:From:Date:From;
	b=jPl1pHKNGCCg6j2VzTjDNk7gaFqmy80REJWzwTyPk8PyVFLtiDplkYFF1rZWQRcCA
	 fLof8ER91MFR/6jC13mFUYoasnOKVV86jozJdp27lUjeirNzzBLD5BTBAaZZGdN8U/
	 kJHCDzr3Gp943v0j/IQergNSTvXq8y3UiboAJ/rlgeG6wmT5AMcxL+tdZ8vaM0TL2D
	 zqjRE1Oyrq5tMqAOclcc0Nct/R5zhb0iK5MQB343MpYrD6US50B28p5zPyiCwbolif
	 SSinFHo1wuOZSB0jK10uLDSPJA0BaXoPa8E89hMUo7m6ZVAxzEyuMFVu90O+yqEiwC
	 i8V71u+LI4T4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC1CCA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175568939358.13040.9372577034886482190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9856b029f87c9ac254c7663f5093e64f347cf1cd57108161fbb840e93c8c5c89
Date: Wed, 20 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755689393
