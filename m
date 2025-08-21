Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B409345757
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755782994; cv=none; b=TbPncACc2cwMN9BCpkLv05ssxNHtGls3sF00cPHhU0UKeWraPo5hxvMmMyCCciaMfzUXMCEilWNOCYmTv2+0RP5JX7D6yuRCS9f12WoBZZctCNXgye6nfYw6BflRxsRcukqJpULkzMr5OCLtLSRkNvn2kz+pr2MW3ODEx2cXuRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755782994; c=relaxed/simple;
	bh=u1MHdZRBuE05RZnSF2SAq2fLjL0o0Gz/ZwfVI8od0pA=;
	h=To:Subject:From:Message-Id:Date; b=q8tgEdA4tkVRz+73Q17u8qlId66FVtj8D+WuCNrfoWuMxrrsjAcivyPNEV1dAWppvPSA9LmLlhoKPItAMiqLP8cpZMO4pud8eq0f8p8hn0FPiXxZxOKH650coUpDeDGofW3k3dbuf1d3FUeyMa5EIy/MRrg5bb3Q0JHg3+WhWZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEZf4X7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEZf4X7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2582C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755782993;
	bh=u1MHdZRBuE05RZnSF2SAq2fLjL0o0Gz/ZwfVI8od0pA=;
	h=To:Subject:From:Date:From;
	b=NEZf4X7BP4rkU33Q11K3MoOAO6UPhOuiziaduKE9IrStqCMFOTTMieNFmBL15hATh
	 u3357QhlZTOx4EVamk/qyQp+xIotTA3hyuzV0K0JuyqPBjPC63gtr2M5jAxLd2WqyD
	 7gQbPzO3/twFGp8SWIgcSgB1WJV1w5WY6RuAsus3tqO8H1EA8JywfPoevvwGC/EU/k
	 d2zTWSbbEa8eO9rm8POkN4pIAknSr2DyGPoI0C3LIPd237QB6qw48ncPfdzkKYym/0
	 pb7+RunGdDWhE0I5H7a3rwGqRR9xtivjhdZfP/twYKoZW++b9woBqrb/gmRyW8ZSTE
	 Ry5pUS+NO4mBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EB9CA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175578299357.1532.14095246852480843063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530c312bdd5d59cf4e41bf99eea684cdb2a6f71a5572785e33f0fa5f1d686426
Date: Thu, 21 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755782993
