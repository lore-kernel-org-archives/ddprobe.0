Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F81A3E5563
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774451694; cv=none; b=sqXOr51oufdSTuekreWpTkbb1xAcm9zopYz378TzYvoJ+gONC4totSldCXpHEgGe7/C36Ym8Wh5M8u58G51ZQpidxiTP3a+o2FpeCHmrsAPH82ZcWdMwB0vyLDDIKG8Jaj3Fhrx0boc1MOHQjPAuamFqy98+sdq/ryzfavHnVnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774451694; c=relaxed/simple;
	bh=o1HwknyjjWJtQCdiiMG8uP1zIJmUEfC0eRHV6hm1tOg=;
	h=To:Subject:From:Message-Id:Date; b=I6yeMjC9rnJFFRLAuYyPD8gcHfd9QScirUvCL0yWVWl0CGqKFQuMaAmm4wJz3dwsi/3DoDhLvH8B2CxevZuDGJ14QWR76y7yltP3J9ocQBSYD+oX2VfqVxCAkGst1Kp5t0X3lUocl8fqIsxpAndLHKbVYb7QUatKO5YTG5syq44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/l/E7kY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/l/E7kY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55D6C2BCB2
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774451693;
	bh=o1HwknyjjWJtQCdiiMG8uP1zIJmUEfC0eRHV6hm1tOg=;
	h=To:Subject:From:Date:From;
	b=l/l/E7kYD7cykb40/6QktyjKRFx3cnVOFcNr8UlZ8T/y5DufZtN56X6tMpW6jMKgN
	 XOCLZBJDRRLtgiqmjiZ9DqKOeLEGbR/u463TD/p4fuGaMQPs+9Z/HjHGw5s7tSwmpg
	 do8vQ28tA+ixT8KYaEXmLzV2mJx5g97N/TNPVFqMWYXuyUAuPnZJ1n/NhrRQpKdjmF
	 pQ0I2njeZjJQyR4rlbZBOmaWHS4K7n31vQrkzBMCgrsoka28cySFwqui/xcVYSfp0B
	 gi2mUiIuViB5HMm8GBV7fDDN+DYlnLxsA3gUQiZAl29CuSv1uhuxCj57Q3DlihX5gm
	 KtmvDIhzrTRhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941E4109C02F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177445169359.30317.14705731707805772485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e853d7c89317542715c65c9aec56b8c867a6f0a0cfebb260a2a2aeda03735239
Date: Wed, 25 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774451693
