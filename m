Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8A84A3C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751108994; cv=none; b=KFkJkfsnbSu7/R6bVPsVYSnEe75xQFuwQBGn9/gnoN7C4vTCvnq4kvFlNLmSiHaHiuguCdnZaLLmTM6WhZXoGDONtz50Kw674Agtuf6VkUyiK+jhFhJU4hl4uAmwpqTN3wsPOEnc6JSJkv6eb/KOKaISJPTyti3Z+zYCOeiet9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751108994; c=relaxed/simple;
	bh=KaDAkFwP0fUlUqOP7G8pFZ6/MhHJ50H8JoWPtF0ZzZ4=;
	h=To:Subject:From:Message-Id:Date; b=iRuojAj0vwT16skMPhO+k46w9Pgs5aWSk2S5NI5vYoasn+AkiBXl8xaKLSvbxxOnP6PM3YNf/KE/aF9415qyX2EW2egzyHB2LywdKOa/vei72nYvZ3YYZcOjyT0tkE3p5SjZ3zKIAsS3tRTr/3zb0XuhR5RpEAWgeMCHkU3sJFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g86fugcD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g86fugcD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8346C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751108993;
	bh=KaDAkFwP0fUlUqOP7G8pFZ6/MhHJ50H8JoWPtF0ZzZ4=;
	h=To:Subject:From:Date:From;
	b=g86fugcDNX00izXboScVYL/qdWVMNbSHxz3a9Xy/tdQI/3Jktms7lq/iX2GD4TAob
	 q/mw+OrZmMSLd+XhJaKO5xv8cxfyZTiCMPH87hYkIom+4g1BR6DDD2Cbfyz4t/WspK
	 NFPWeBZqXU5ySbEN5z9I65Ym9s58S3H6vHU7i4hoXAggibQJLrMw1UeCyzzSEN8NaW
	 d19JusSP0n1wXZzK1DLRTMoaAPtApeuy/pPt/yoEqR/26foxm9ghVsFgcizjyI/4Il
	 PYzT3C6rxzyrcec8vHQV3hB7rjWZ8VIPo0HbITngj/gG/i60MD5cnRcCdbQuFQ4a//
	 rEo//u6gpWmuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9499EC7EE32
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175110899359.26661.2194906237493634129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e502921d8516000850b91eee65b30ae6748b23d68e62df2d48ef3edda642b0
Date: Sat, 28 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751108993
