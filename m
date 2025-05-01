Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E634B1A0728
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746104394; cv=none; b=CpGVGRKu4IoEX6cubPgloV88llolTwtjm2VW0fvk7npBS1317yeG3UCBbaRwyQmAohSDGQoBYzd8yejbkNHjyJeZjts+tK/giKPnaOHoLxKpO3OijOaNb25U53HggFFjeGxYAq8kPSSYna3Sv2HPR/hqs+ZFcCCHpNFUHTl6JEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746104394; c=relaxed/simple;
	bh=RsvfORLDvfvnnHLpe/nYc7gl2igmr0Qhr7esQDdrJf0=;
	h=To:Subject:From:Message-Id:Date; b=fdNGypbR1xhQSdzYzz7hisJSkyJX7qisMDVZPrPLxEhc/EVwTCHDoBabvq3lbQ/ZZe6FDnVB8IHGfxw84lFOdCH7uPoW1S0Er0m86xK7MU77Dc6pRmAjDgFc/VWd8G71pAbsXYGV2JkFPBkNMNzXuhAGZmq0RE/BJm1lsK8YjLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7C2epk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7C2epk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03C8C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746104393;
	bh=RsvfORLDvfvnnHLpe/nYc7gl2igmr0Qhr7esQDdrJf0=;
	h=To:Subject:From:Date:From;
	b=e7C2epk0Lsy4I12xSTqNvXlRgt782lcEgCzFM4e8FWAgi4iRdsnkz5w0GuQBXp8V/
	 nKWH/ve7dMj0olqVUZ5606TZsxBN2nTdGII1WmrnM8yTQPzZwCM20YWUTQRuWGzRKr
	 ocqdVM0KYpUcr63GHod3NIIj4y3GuOXQMZs65PIaSHxbFxud3CX5hMLm5xgvGBj66J
	 rCma1cENdW4Q5lSsu51M+AxNppGsHunRuLzkPZeQ+Kd7PGWnx0ZE/K4QUz8hSgd2kY
	 ATJdC0pKYElDCTwR2XWm+SIqdJDjCeFnJb27+jMbZAFqod23atkVZ3MBDTs6dqea2s
	 fE38Uud1Gu54A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BF7C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174610439358.15414.11998036070933078379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a39567ea9288a1b2fb8b1bc2d5cf31dbe93b2228afa9877aeadb6b040d2109
Date: Thu, 01 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746104393
