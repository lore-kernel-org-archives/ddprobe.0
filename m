Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210A446A609
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785264034; cv=none; b=udiOVLJasMOfEToIIw/irIxgf16zX6GJlmA1CWBUR/nP7LZ5OEklxgPCi1ZggoKSnbGrUjkV9EoaogIhTy7iqeyejU0amOgzkhbGc6I7FeclUtcm6Pkizn6dtfxxL5nukc6MhmbLkDiQjwlzNUIepeT7jw28qfHihiX9tZG7mY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785264034; c=relaxed/simple;
	bh=yBufDBgrHSM65+kDz5HyL3V2WbcgtrqbUk/1jcfEK7A=;
	h=To:Subject:From:Message-Id:Date; b=SqKQ3zo9gva/TQPb0eEAKSA4MYbmlXERCVZbpLW0+nrkssTk64GGvXESen2InnOCI9m4BDQ3qfo7rmHXTuHUNgThLuH60PehxkTWOBq5fDOtx2hmPpPHiIKVuycINIdL0coyTvEGTfBJxtBfXDmQtSXXzuHijMYfBaAywAFAXCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djfY3qKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djfY3qKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CFBC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785264033;
	bh=yBufDBgrHSM65+kDz5HyL3V2WbcgtrqbUk/1jcfEK7A=;
	h=To:Subject:From:Date:From;
	b=djfY3qKBTrY6CLc/zupmweIfO/CwLKDTsr1T3Lw8Ij32dJ4W6vsYmNjJ3rvoPjY9K
	 JTeGCNoQtphgzrg2kVKkv0nHz6omPhIxtbHz5p2gJRVRPVjvsnTeqMntvKfp2H4gHI
	 uhwzN/fKlwNBbHdXdJx9ZqqfuZ80hlfzystXJC7KQCMlTPAHBRtd5H522qVpEQ8sji
	 UzliR27ZQIOxNh/HkIxsNQSKnop9PNDcgut77vMWlAx0L0ANkYRCKKhIBj75tautW3
	 Lnv1T6u0dMg1bNPiqmZf53cXRN7JHmQYbeFWxuDStmzA7BG4np/tQgqBoNNKE8zRQq
	 aICG5rLQRHt2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDC5C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178526403370.2806.4725770108408229901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59541dd44df0053947879c97df0aae49a3e8d9bc3b8511002a7a5aa8d928d395
Date: Tue, 28 Jul 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785264033
