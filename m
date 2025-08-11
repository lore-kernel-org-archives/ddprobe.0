Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BE819CC11
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754873394; cv=none; b=mLN5esDd/PhFZdN4PDXq/tQs74KIp0kUFchSOrvwBKktQ+Tb4pp1Kit6DlI3b7c7e/f/sVELtajlIKmAEdDggvOdXElMjx10PQlgd92Wh1zHMterjpuX1FrZNXJqOQ7wLJfLFo9WjXxojCsxwLOW8w3YBlWYMVsKTi6qijldZnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754873394; c=relaxed/simple;
	bh=0gA1d0DO3Iq0hL6dwXNshaM4DVe78puL6SH5dVHZCEk=;
	h=To:Subject:From:Message-Id:Date; b=GDElSdySkY2Ohj1AxiMC4dUkQturFKJlfHygEmnsOPfoSCg26zcaEsst8gr4fllvWBpIRdsDOnnz8ENtdX/89Ew0eI6OOuYA5Wu12Kh0EsMgPbAHsAhBZ+usS+DhLPyGuOnclPZnKWvvjyvwKeH+aPa0Gibbk6H4lzKVhQfuNWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VI5yEOES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VI5yEOES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E62C4CEF8
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754873393;
	bh=0gA1d0DO3Iq0hL6dwXNshaM4DVe78puL6SH5dVHZCEk=;
	h=To:Subject:From:Date:From;
	b=VI5yEOESFbvdntkq+N1XWTqY2TVwZABe9TZtrqQLi5Jxc6a/sZFzvtIrRSserSDIG
	 5RtbkwTDoJ6N96KQCViRvPzUnZ/uyKHOW4LpggZd3uZhdRfZZrp/ymgoncmbLgPM79
	 no7RblKtrSykmszopoxvEfyyv5BJKyawdZypeAKHuWaVRxTwM6WAdkLk551tArTLli
	 Uuj+0XdEmpsKDRKVFLUE6egxf21c7Z6Vtc5/cSjsIMeAWQ9RteRXDOiouEv91W+as+
	 XAc1U2KVYF/Vpwm3h9EmmlbeeiprRbXQAUNa68gJfYmBWy7E6pPni7OOadaO1duTue
	 TvXlUyc08C0Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B0CC87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175487339357.16143.1924695190769871473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ad8c09f39a5f177d5c4e7e7809d8ab25e3309d5cac42ef51d0969188ceafd9b
Date: Mon, 11 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754873393
