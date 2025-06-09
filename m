Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B94418DB34
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749491394; cv=none; b=GLfePIyGEEXvUq98MLXvEG4gm0XDb50/OTk5wwhM6T2ZFiX5fbfxDAgo3ZbNu+MUV2t+2s9zT2YSHyaHgU3Um/QzqizsQzpXngmRgQFp0p/TjpmTGVUrit7nxLte4jdB7aTtw6MUC2wjngfe7Ua0JMEsoE7kvVboprafPExNsm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749491394; c=relaxed/simple;
	bh=P5dEvvV3g0yH4585xksE2FH69BRFyJ8h15A6mBE8gaY=;
	h=To:Subject:From:Message-Id:Date; b=FVJJ7UMq2GXhnJ8ywZ/Rc8arH5AS/RKiQSnDL4PJubBbjKMl2mPyqJBpSBKG7XqLGNStQ2ujNOUgWdY0b725cDLQ3DAcLlPkkHPyRPcvXvU3fHRlBF+DoFxMawC4cwd7mXCJEBBoFvOlaRr1lUz2BPn5nguakRAd1WjGQPxX1So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhLawUg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhLawUg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2973C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749491393;
	bh=P5dEvvV3g0yH4585xksE2FH69BRFyJ8h15A6mBE8gaY=;
	h=To:Subject:From:Date:From;
	b=mhLawUg20eIkpazXxSTmF1nilgkIRE/5Lp5NMYOZCakKei7iEb03/KjtRbfKQc4jw
	 NX3jAFisviNkwevQkw9s3DPs8lKw0EhC2KiYPzLUsIgEFb0wX8RISeIJ4CDq9ZrMkM
	 1FmJ6PVhI4Mfcn1LDevY5C4HPfdAAvC95KOh+KsOVFuidZ4FVQG+MCsfxCoiMC4EMy
	 qiN60+fu/kToeONw/wSqDksYlq18Z4yHTjJ9fwBqpA/LjHDlY11616Ni+zKIz4j6Mx
	 uacATp+3I7uZS5BtuMiBcKUgs6SviGEoi0LU2cSxvQEryYdzi178m5WKscg8FDK3bx
	 /NCEaEV6s32yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBECC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174949139357.25318.13072145308121114849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02168f4dfbfd5539716d27783325838a5538759a030f79238e1ad760445f88bf
Date: Mon, 09 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749491393
