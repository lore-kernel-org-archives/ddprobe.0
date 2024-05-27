Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56528155C81
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 18:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716835463; cv=none; b=td/RFb9/pASKCKgSazLU/mNVhgKeE+6R5+fZ9J74ItBaohRGNOSfLcHUt2HqI2J3Mu2q9AUytbd8yTdbOcxREamS1+kh5LSwlDOuc2WrhL5joMH+U9UaLCGjyUaPHlY9WD50SA+FW+LyajX7JwtYfasv0b66jZUOvAQT8gPUyQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716835463; c=relaxed/simple;
	bh=mlCbigJsDSA2zPUBVGnYiHdKzsV3p/91eIKjWMCqbv8=;
	h=To:Subject:From:Message-Id:Date; b=CqIEJNQLZAoKW9PEcbhrodUe3LYjdOJvAK0R+UMxPf5M3i+9Fv922z4dd/s/JNTsm2ZrOLezRtm1/lC1SeRzvNVKK8F0t8nyjitsn5epaCSPXnyh8Mv3LIL8bWmuJQIt8rzU359MGAX7SzQBsH6PldLhR+r9BprSNu3AEubllQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUzBUb0C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUzBUb0C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8949C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 18:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716835462;
	bh=mlCbigJsDSA2zPUBVGnYiHdKzsV3p/91eIKjWMCqbv8=;
	h=To:Subject:From:Date:From;
	b=dUzBUb0Ca2zzhxx5wDkRaKbJ7fbPhRCdHhBPcPvpyA1ct32p6ASoPDUvU8xa8RB+i
	 vIVK7SMzKOWvJvXTt+S4GNFb1VdTb/lzPe15sH5RCHTZqc00LEF5YzjbFCCzWxkujB
	 Qw1wOsxlq4PN/KAE04bYfxEXTpOKztRvy7yeDubGx8ZvUX2eVA/jvjiBaYvCmc4APe
	 4Nf+/EZhr8CPSKTsxPF/a3A6knqSm4EB4+moLC8CHMNJvgsKaNX/BbNE3tEfizd5KS
	 bZAPlN4t8WmX6vkvsiyP3kl8GMRGszhso4TH0O6I/sJfZkoNk7OKVvYQjvIpTJZwAy
	 5v51HCDTmM1cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C55AAC25B78
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 18:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171683546279.10645.10224584187451389227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8259a44e1411aaaf693fbca7b73d2bb3dc7a9cf3f0d4de50a6d1eb3810c5d4b5
Date: Mon, 27 May 2024 18:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716835462
