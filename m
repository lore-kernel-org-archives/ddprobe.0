Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5926017555
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 14:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718376503; cv=none; b=RB0XUhWoXMqQrlcLPXZDR//RPuUBUbRZB6Uys3+S3fr7QCfuYU9JMzGNeeAY+jZdDWcxhO/ZX3212YXCokrSPtEZcwoXb83P5V+etTYM6df4q/La8trgf8midfTPNP3pEMgFImf6hnvx2CC1RPqhCnw581QI8HuqszBR5VATfjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718376503; c=relaxed/simple;
	bh=n47UzBcKA2T9Qfw3Yr/lGXx5sa8N3LivpD6QwYD5+Hg=;
	h=To:Subject:From:Message-Id:Date; b=s3tZqhG5a+/8bY2I9IDlJev9pe8mTPUrvUMiTG83fAAO2sSIiTkjCF4tfKzDM7vfsz88IrP4N6qHJlrGcrMq8cEmzRZ5P1ileLwvsRlFQo4MnjrVAUY4OmMWC4/W2apBphV3HgCD0uBj/mxAFkc+FORvM5mxyGgIr1eldwFdw4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OANcrSiA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OANcrSiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1391C3277B
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 14:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718376502;
	bh=n47UzBcKA2T9Qfw3Yr/lGXx5sa8N3LivpD6QwYD5+Hg=;
	h=To:Subject:From:Date:From;
	b=OANcrSiA7r9+LJoHy/mc5Pf+0CAAdfWdPoRwh7o2HLUudQ4VcdGm5srWSxvVUzYFG
	 mi3w6E7VQxf1q+6/slUBG2hiI1XqqPZot48C6asSMa7wpoFOJnn4gNJ9Y3F1xEhkpi
	 oysmxjVLF0Kr/2Lnz8Y/v+jYqp56Kom6Cu5bA1BZuFDIff76DMjCIvRHdIRip/6wWY
	 M7P6DfqSivI2axtGtNh87M3HN1dRXv/KPs6yzsXdPWIWE6vNLLX9xpapUiZgVvFFC0
	 WCbrnj6gfAHugDrfvOs1+Kz49kxRjUswTE0CG7cTIcT8d55TNtxSKmuG1tYX7AbRJH
	 Njp15jfG8QUyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCC45C27C79
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 14:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171837650282.6876.10208096208500326289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c3101caf8dfed7e569e9133d5862e2d2f5e3c5c61da87052a2a625759013a5
Date: Fri, 14 Jun 2024 14:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718376502
