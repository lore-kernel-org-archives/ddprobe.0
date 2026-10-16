Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7723D6690
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792181434; cv=none; b=NqxC4JmQQgXsScnyOi2U/qKiIwTx2XVNsvUjFc0zSPbhQzB7Kwmn/b2k0cLfib8TM3Ijtmt0TAyfkK9TEZ6relEJ1TlGerQ9nvlccje6DTpm1p14vaLvib/9A1uM0P4htJUCdoxhbGKjH0doIH/3ytoTpF/+PiouQRjDarTh6LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792181434; c=relaxed/simple;
	bh=ktOVVDsDuxOexLzuDLru+Kd9B597ldNU0f7NJyeQJjw=;
	h=To:Subject:From:Message-Id:Date; b=hApPAGIaQOX1Xmuf8fd+9VjxvSjvq4jS2+O6WUW1AyyJG1euIop/1On5RECjID0fkpI4ELo8Lk1RZ5De2ckM+oAIqDcujlGxj48LMDipnbBdFTAZifg5QFaAKmZpy7qM+PPScrGY1y0ugSc/3WVwBw0njOnnyeZm70Ui2i4vcgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swD1gbUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swD1gbUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8633C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792181433;
	bh=ktOVVDsDuxOexLzuDLru+Kd9B597ldNU0f7NJyeQJjw=;
	h=To:Subject:From:Date:From;
	b=swD1gbUW+GbTL1gjm216Dn7aA9G1xciNEn9TEkHxoKpa4fQxsN9KnHhAmt25qtBVd
	 z66HzNOzx95hElRk3tum5JxBUNwBa0fblCAUiupnyeIRcEaCnFhud4/fFWHsfwwjvv
	 Y2qc1VM7Y9BmtelZRuTcVdhq8zu0NdkNSl8nbx32FDOYcmv42dZJ+4ENAep7Y9kUwl
	 pQGhcerQ/SNRCQEnsp8tJeq36YnceviehW8TxFr9O2lDTvB2ParVZQSswBmFqi+xXc
	 c/QMHfO7slYkQeSpWgIP2Uc4xexVFNMnGIKYdnO/QyQyqemSFa0IjrrFjthGbXJMJD
	 KAicl0iGzrJ7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B268BCCF2C3
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179218143371.32677.13940686583199591132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e14f02a9e680ecf92d42c902343e7472df0f4e2b4da8a313668cf6ef332f574
Date: Fri, 16 Oct 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792181433
