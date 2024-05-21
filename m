Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033671482ED
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 19:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716319403; cv=none; b=Abfuqoi2PNi5Y9OoivkzAN3YDI3MGvN+w5yxAX9ZfJFLFoseBCK6hdV2/mCXaDZF98ElnubeDo/j6SK39DPdTRcos49moRyDCiV/KLiwm108/wE4WAeGeKtWu3rzlvo/dqg/Kvm1k7PQ6Eq9DsbqIDjZbYMKA00OIhsZh4X0zLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716319403; c=relaxed/simple;
	bh=8YL1xHfTyfnqFmM3qnhZe7J0KSpg8UFW/kT5xsYnra8=;
	h=To:Subject:From:Message-Id:Date; b=t8dYfJx+xXXiZq+d/ZkJHXV9+ZVzQCJovZ/1FwIZGZlXWKrVtsvObY9enWUQl0fhAQLzOOzQHH7FfANUn+lN22BPZMnZaIsOmtLMKBdNHO2bHraM82+rRabO971OBtrMTC3Ax2ZDK+VYzdTI5Na5/17y987jbd2qb/VGcQj6ITg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vv8glMUS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vv8glMUS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCBBC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 19:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716319402;
	bh=8YL1xHfTyfnqFmM3qnhZe7J0KSpg8UFW/kT5xsYnra8=;
	h=To:Subject:From:Date:From;
	b=Vv8glMUSjmg4evQTfJmIsnao3Z3DKr3Ib62EGhxelTqR3RYcuQR/+KynS9gODFNNK
	 MIdbBMeOE5uXMSBGPseF8IfLWWnBNZMeIpcnBl6C0MwSxrKaZum0ZUgv3hqVReM0Po
	 7Ka7aKOFagZ7kF+8mXZ59oe4G0+bR/y7ZX/YejsMxV2McMGVnINCVnwjys5WeXpDT+
	 +pMZ0ykchGtQXskr9VkCgAiEBMgeRba9wXj3TE1aHgVAQPBezenJRspNvY07vjNhVW
	 hbyMlZCdu12b1zD5/XvfiAatCM85C0Req2xf65z9bQbpfdmhpNm2cxvwH4D6haBJK0
	 TvTShWxpmqLig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC6EC25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 19:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171631940276.16124.13495732015649003442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 412f577fc62c3c07b0cb87e8871ba798bfda963d9fae630e15de515239685bd1
Date: Tue, 21 May 2024 19:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716319402
