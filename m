Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C40C37F014
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791559234; cv=none; b=ulJECGc+PS9CljMhZ+/eAli5NdXqCMy0UTuaAfs7HywUlVoKtlbpEpV497wGmA4Igfu8l334yWKfLT7yxRUSPXAr2QzrV/f1Jb/M+bfBCEtxpG0Gb+SOVyqM47GCQ4K5Z1Xj3i7EsY+NcdVcI4rJZecem3V9gQ3A9dFhDWeUuIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791559234; c=relaxed/simple;
	bh=P+4axYE7WglBMGdzscC3ZQKDDIVRcoXm4vqf4zaLt6Q=;
	h=To:Subject:From:Message-Id:Date; b=INpSWCuo40T9E1kXkK+QvHAFaKXUg12+5+mPd2BNQBS8GQjfOTrCdtgYKHUZCpAr1Fa+VndfDLdxM1/UxY+DvfxjT35lMTLDFivvZYy4wGaEee5liyemxh0+7sfp/ydWfIRYxUftH6TO7Ank5CAr/x992N0vMzVBb04P4Qup8K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JumFk07R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JumFk07R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2DDC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791559233;
	bh=P+4axYE7WglBMGdzscC3ZQKDDIVRcoXm4vqf4zaLt6Q=;
	h=To:Subject:From:Date:From;
	b=JumFk07R3JEEdWU60lF8tGduT5w+Xyzfpide/2IuEYIzVgnZAIZ630F0PFsxlAoxs
	 MTN5X/96ftbgHrJCdHnurRTqCxSkTXMbU7yyxh/B1qTe1+owzdfnhI0kGD6F2OqY/e
	 4cLJ/hfd0Qk9kt+6SL5h8ECQygKcg4JzlJlZNVp60iO0iNunhbeUU6/jq5pajVMDSU
	 Jqmzj2rogA5ScA0oIfxLv4hVdMh32FNn8T7mUwPSZyvYUVW8blTfnkhgBhpSRVrwp4
	 5ABrlINleWtBgPCMecRCY0dFmmIa3wPk2uwFx+pMgt+niSgQkNtj13HKd0gN0ruzhK
	 r/gSz2TAoDkCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA42CA601D
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179155923369.20410.14158033411697335240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25eba5a12b55d33400d4df6f96751ef5ae26615381aa997a46cd33818ee9f04
Date: Fri, 09 Oct 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791559233
