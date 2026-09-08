Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F081346769
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788845434; cv=none; b=a7zmVqK/RGcQST1WwDvL0UljEiZ3DSev+ZAgElAjMKHedFmswAnZrIV6fPhyef92ZTeA0z85nnL6UOpa1wfIfaC3Yo2ElNgY4ugNhiNg4kWDxRPMLXKTtFIc+z2NscLy7CAMvt1DEV3aXI6HUoO4IX9ednW14bQT+wkdpR24tyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788845434; c=relaxed/simple;
	bh=ghgcx0xVPSuCTf7HDZq3JDS2ioy9CFz76QduIJwN0dQ=;
	h=To:Subject:From:Message-Id:Date; b=Gs+KKa2x7X4T2bVPz4Ei7r/llS/xvz67/3kCAbniS3daj3TPx8AMAxsd42OTqGsSUfpBvrfBOiI0vBUAFIMuLXfswFFPb7iNTs32Fg5yYPBcGnYRdjlqZh1A9XkqN6481gwbiGwnnJky0lIxa6mC3yn8vq+ODR/oSbRWgQdyKrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssHxbElX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssHxbElX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E04D5C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788845433;
	bh=ghgcx0xVPSuCTf7HDZq3JDS2ioy9CFz76QduIJwN0dQ=;
	h=To:Subject:From:Date:From;
	b=ssHxbElXJWkE8mSmnDSGzRUYw2ueLK5miPohyLL1TvbSp8iaJ0sV7WbKlyzXWwTNc
	 8OFhhSGKxkKr0h7wK/jvRb7mZcxRmX0yuqWSroPGt2Hf1fBRr2kioW53GVYti1Lk1m
	 NxmkJA3f8Pe7eCjM0Lvps5i5EPZIm/oXrzbAMMPlZqxtKa0E9nrLAIebqx2zgttMsT
	 S33UMxP2/Gtdzf0gLo6n2FXI2rCuSFEfMyvnJV7OJGY68V6WH/FfjZ/4Xa4QOdC+mi
	 TcTK8UBL3lNja0BRUjAJ5PRbDA3sLf7c8NIKHe2M/z9R4K7BqTIJSHAleY+IrZ3l0o
	 PzqZij3bpRV7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84C6C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178884543372.8109.15858694250057066300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0116bc471b25bf5ead68082041b3de6d841d5280fb2503bb46b485a3f30d8a0
Date: Tue, 08 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788845433
