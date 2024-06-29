Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2251E4A0
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 13:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719666263; cv=none; b=PqKw4l9bu+rdLRkXaRiFCY+tMGiwOk7YySXnYmM6yS+YONaB62PXPtCPzU745nXa++2oP8ThKvudzb1PeidcaLFb9XiisO7UvOrPtOi5yKYECO7rvtbSEPWDu/q2tOd8nT0Eo8kbO6X3Cvn3GWQ1YyJcgtahtDQ77rCTd0CCwhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719666263; c=relaxed/simple;
	bh=/ZkCXs2iCbJQ76NNkm9nRdqG8Aih/cshqwB42Cs0dkI=;
	h=To:Subject:From:Message-Id:Date; b=cNJGD0Keddp64MbVyRuv73aKGpgaYfgjdjoXqbIQaKVUnaFeIAVBaLxzSRYANy43W/uF10F0bsQt3NCWExCRkPJ8BynCBmsY8feBOlUz9XA6aX/fX1o719ufCqb0XzUeTkwjRS0wZFCxLqZT3tpmIIHf1/wGDPTgYcSKxxDcs98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNSlAmMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNSlAmMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6639C4AF09
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 13:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719666262;
	bh=/ZkCXs2iCbJQ76NNkm9nRdqG8Aih/cshqwB42Cs0dkI=;
	h=To:Subject:From:Date:From;
	b=sNSlAmMminQMVeXEAbAokw3fruk0hnTdEjXf1aRbuERKxD2C3T5Sx/qhhAjdz7N88
	 zHfajbuQG85D71uU/8hq8W29SXI95mgWiNmGpsrm17f5N3EO1zD8EJg0ynMdP9kNvy
	 rm4hyp9m6W24Di+81tG4pOf4kPpWMH2dcbtHyGAKOF0i4G7+bkZjCRTTPNNQHvce6t
	 vGyb0TqsWgSKQ4Nbw/RDD1Dpbkyp/CH+NTfIxMyM8GHC/BKfbsM7Eqp4K+MMOjrNsr
	 1AiSxHF4nT+rd32nyenrwk3PftNf4Ds/EYlJ8gueCasm6ugVCC5UwOM+waXXVZFNDD
	 0JehAiSkPliEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F27C30659
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 13:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171966626279.20959.11645540748915893769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa051fb8f9cbb4bc60b2814081a2f68f26bec3b7238f5dfe2b6ce85c53b179cd
Date: Sat, 29 Jun 2024 13:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719666262
