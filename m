Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D88961487D1
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742814593; cv=none; b=PIUqWhz2dsJWxaCreVjH48ADzTY/YnNdNI4GTsPmfST7EnvCi81SqpBPtf06XRStayi2gd3nXg2ApZdr3p6d8PthsZjFQ+oAN0aixCgbkozi3n0dmaSe0B8S3aDvxEppnLyKH1+xrWek894xRpp5L5TM1Dalwgv2sKxgFxg2p2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742814593; c=relaxed/simple;
	bh=CMYfuA2GMrP3bz2xHQ18tmg97GGHA7wTHp9Sclbm6M8=;
	h=To:Subject:From:Message-Id:Date; b=IvsTsDqXb4hkPPtvcAeHygpXF9l1osPiv1xcAn6jtwOzBFPUkbo2GVUGicz5ZXOR1T5dFBoJPeGFjo3hHe8QGET33Wbl91U9iUFnxOryRr7OS+LJ+04o/U9BAwlGr5JxBnektzbJp81gv/IRV7vqcwIiDhTY2ZN3blLBRR1AWTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRaAM7Ww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRaAM7Ww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD31BC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742814593;
	bh=CMYfuA2GMrP3bz2xHQ18tmg97GGHA7wTHp9Sclbm6M8=;
	h=To:Subject:From:Date:From;
	b=NRaAM7WwnzZwt15+5vdjAnp+uYTU03t7QnWz6MOrUBEOrhTf+nf5IfNvTN3q8lNaU
	 4KYIO2meKTWAH0YLcNAYPGvyjj32UfRulM6VmYUJxGKq00Pcb5ECcAUM1A7s1Q8JH9
	 3bLS+aySulhz6RNJI/x4F2s2OJca4Bf1ktBGkA5Apl78r8gQjQnKbMoGbL3mDtQSQv
	 ahB4PdUpUvp6KWezR0y2dipkASeoAYaQu0whcJEEnyd1yDy1fMzRENzlIhmnROXD5z
	 qMY62D1eL8IPGMIdU+JM0l8/J/6D6u+Tnh0MmX3rbGie2t0rVWwDqMZ2WD3uSXMyig
	 rkP/vD1Ch8naQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A254C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174281459362.6576.10365471990448327772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c7b39ed36a59783529849787ab3c60596081dc8f6db02795fac1b056f9afe32
Date: Mon, 24 Mar 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742814593
