Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5828B13C672
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 16:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713976883; cv=none; b=lW+siVWsjJ4vG0DHHDc8b+IetPcL3z9h/ijl3Z1Aw74gCaM8K7jS9CgrxLCw8bTgY38N+VBYsVknh0oiIdDd7FPx927XZqQ+LjIpNvCMWezBAQqOKLT5zdS5MIScy8sD+3/UTRYrTIAeueNAc0Ge7JkI8TQtWv6dGqnNRFSqqUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713976883; c=relaxed/simple;
	bh=OeYDSBFas5RdLZUQ0ikyyCn0iMTsZ01CVmnWPiR2ruI=;
	h=To:Subject:From:Message-Id:Date; b=UuQr3hU6uoFT0xMQiGTf6D1xZW2a738VQXHlEaxSKWyGHkxrDCTUfM4YlsT0bKWOEFRrgAKWHSa5Ngay4Wj8f5FndN9zjnZTkmLJ7izCsbvW/C/AX9f2lrMGCcPu38b50yo2caLuvAGoaNGqmUu+PMG2NFhg9hhyIvdw7dytSHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O634LCdl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O634LCdl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E71E2C113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 16:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713976882;
	bh=OeYDSBFas5RdLZUQ0ikyyCn0iMTsZ01CVmnWPiR2ruI=;
	h=To:Subject:From:Date:From;
	b=O634LCdlWVT8BthQofcvsZoM7BOz6fRakzhNtYjfxPoG3I8kPtfZm/5sHVQUwX175
	 rczqpxRyPW68+fVeuqesksFpk/ejIuIuN2Tq4HC3ALB6l5QDfe2LCFzO2VSyzve66m
	 lswuAIVmamthv5uoP/zGfrnDhQHhwd33aGVrdAnrCWS4c10P/aTR49NNvAXAe9LEmK
	 xD9kJhYZiJnNaqqH1XADW4ZSX8ymz4msF3sG+p+DpFQ8C0offLoDpFHJP1QiowCgrm
	 WJXGJgvlLyUhs43/mneqZU0kouuCmcWxBuTBCwnJn+RdR9xt7g/oTrkZjTjYd4jE7i
	 dhP83OBRj6KLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC272C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 16:41:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171397688282.14524.16253454090186156487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e609f2aff3ffdbd5482e8a4e7535a94295e502454da6f7ab345a4793980b3063
Date: Wed, 24 Apr 2024 16:41:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713976882
