Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA221F9F73
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756412393; cv=none; b=DMA0dVwbjXHEuGiLfkhNyYv5iV6tRknzVqzA5Gy190hgSdiB9Piw4Ym774JDCfaTaAtY13tM0GtR+VsZ9IDTS64IDaebrVSU3x9iEbCfDBJqQTb6MMeFBijSpNyDYHSOoaKYqpLsYy+4L63ASG1KIhpPYoXOlUKVJKryRyhCrfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756412393; c=relaxed/simple;
	bh=zOqX4RV6BRAnmJ2KsEGUrPFjQBiYHEUK+djvqu2rd74=;
	h=To:Subject:From:Message-Id:Date; b=K13F8QSJlkV3EZ2o7eZr2RzulP5/gfDDTSBEm94m6SBcwRoG4v2ca6TMzsT4m+VCb3xjS6Wvw4BQ0B0MYqVgXIloIudgArXd8Sbuv47KCSvL7D+flMB25s2M+DXaKOvAFBCEVdftH7W8i7iUuSmDXoSpaAPQUNxfeqprrEsmcZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvPX3yZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvPX3yZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC607C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756412393;
	bh=zOqX4RV6BRAnmJ2KsEGUrPFjQBiYHEUK+djvqu2rd74=;
	h=To:Subject:From:Date:From;
	b=TvPX3yZQ+KIR8ix/xb1uVoLVflEvw8LnAp56IPtEmTKnJ0G4w9fSB/34tLBM1shmZ
	 6oWahxB4FmjERBFiG0GXgvhG3SV6nQ1nubgUCiL/jAJadAvv4nXnFzaHEYBfyhTjFZ
	 Ta77z18A7r4FubBEDz3wc2hRfRqBk16MJHR7ZjQqcGw6Y1wl2JvU2nsTGMMKbly+g7
	 /+gPQwcFIqa3S2YfuAoOPm0P6bOTV6biLShzM1y7z3fLxHvt5HTKnSEeN3SzuMvDPj
	 WhGXBb66gElMA30tEDryJVtlSi3bxTHEGDivnt+BOUxItW3+V/KKpi0CMsz8Jzn3TT
	 C0tfx801PF6cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD45C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175641239362.20755.9343247371234013758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2093e37fbc007dd03005336cd1a8c8323806ec6ee6485e748e727481f0176ba
Date: Thu, 28 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756412393
