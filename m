Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DE633E374
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765989834; cv=none; b=k2QR+bbTZogt/CaMpTRQLFZvV8Ny6Fh45MgBHKdUKBjfFHvZJeDc6UmLVXRFE/4NjmcBVSneR9iOuFnNEkitUeCo7HptL4OXpBFJ9CS0rV5VCXit2YWwvfXorXuf8esIkNqYRp9kzmaVrVnpCSlBsx/tBHRsRv29B1PoAod/jz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765989834; c=relaxed/simple;
	bh=jRherjLKsGmt9DK4s3wbThJN1kYfrEz/qDCl8/NFwOg=;
	h=To:Subject:From:Message-Id:Date; b=UN6Ik6IblaZnYiHSNM//IlKjpfq+qZPpTZjOJWC4kQYIZUfiqubngKAJc5XQMxSZT7astAIz+DhkG3mZzPQQD0IJ+XmefXnL+u0ZIueB94nsfHfzDOMNyNGJdy/gL2HlYo47ofhKBCbbXtGwy4fQzrWlFa8/DpEvi6S1mSABx6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qY5SsBmt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qY5SsBmt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92E7C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765989833;
	bh=jRherjLKsGmt9DK4s3wbThJN1kYfrEz/qDCl8/NFwOg=;
	h=To:Subject:From:Date:From;
	b=qY5SsBmtdVHtgj0h7U0nL1RMPcxOab63T4cyla0wB6r2IdAjhUULBoB5vnEkWutTG
	 0RvmtiWhDtP+g2SEYdwDBknCocSokXkqGLW/t28JRjH6w0oVn2brNUqcaJEmJgpBN/
	 DhaB+DHSXTvUFWdvHCTch7MPx14H41SZ0XzrFCPVvkNTYHNkKnOVhOk59/NAAP6rzi
	 kjvukfsik/eGAna5BtEBtuTH+A2SKxY2pzM6Kyd+xuogzQjaM9Ddrxe3R92HOrptC8
	 VTv2n08wN8pX+7Q5vqCyGJfVR6Pnt7mMlYwZbDWsKCrI75YFifvDXec1ZGM6jOAt94
	 HfxG/7saW/HRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94142D65C7D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176598983358.16789.14016243397748161405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af1bd1f121fa12a7292dd94241726cda6846e7c3cfd7268e9b856d50c9bda66c
Date: Wed, 17 Dec 2025 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765989833
