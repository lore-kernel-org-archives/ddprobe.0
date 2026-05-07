Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2473932F764
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778182054; cv=none; b=kEf3blNN/I2j+Y2K6N4ORcDg6TLHZSfyYH4HfVL8ckU1rAs3Ru0qrv3Xm5A0W/PtKrw6BAa+J+UCqRUWmdMfY9FSPrDms4R4fD/tgSRSPyV/5r27LXqS/gNmHmLtes+GLBpQzezcsgCIoaAwjHOP2QT+wpLTTI2ZJI+oDYX9ja8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778182054; c=relaxed/simple;
	bh=oADgbhzUyF0qi47FAOXO621dRDpc0IgucFCMpfZvgXM=;
	h=To:Subject:From:Message-Id:Date; b=eOPzxyj3LBDR7HbjCl/A+NNtdTD6xp+enzs86doKcE0hsIG98pdBKqYrjKyH0Dsxl8yYjsripTCUEuL3zX6ZtigXu7rPOM0uG4k5wbAMmylyMgyj4JNni0obpbbWChjTiT8QMOM7+6i6StbTXelZ06hlw70VvBeaB83ONoqIInA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJ62dj2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJ62dj2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE1D9C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778182053;
	bh=oADgbhzUyF0qi47FAOXO621dRDpc0IgucFCMpfZvgXM=;
	h=To:Subject:From:Date:From;
	b=NJ62dj2XMiaME6EwCn/4x2cbFYSa6A7fs8726DcvXDxUlwbzLMiI28b3XuPpmFlQ/
	 KOr9RROjFOKfRAbq2GkaG8oaXgwPY2hcoAmOz8RXOHmI0VyG6WtAAS15l0hNeGVkyp
	 jOBp3Y/VdxLYeP2DLDAr/dwQTT1INlWpZo3nSpuxG/1mk/6IXQMT7KHC6NKJnRhu0u
	 DYOdXLT8El5iJap6RwxxlI1keA4mWQ2SOrMcdM0Tfeoz6lk4KOlqHuM7VyQ03wjqRO
	 Oyibnq969JKd5TSd/EuJMSg5zjE2Id2c+tv7Htqn9V1NvuYcDHKPqjUVOX0OGNM/w9
	 rVEKjxrudtBtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE72DCD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177818205370.12176.10094329715506875707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fdba4a2809448ec77a65bb2b8046da3a831ebd206ea7ade389d901c7bf41987
Date: Thu, 07 May 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778182053
