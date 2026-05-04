Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AE13112DA
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777939054; cv=none; b=O3C036xMy0AmsMssHY2VZSaLEAQWRIh4n7m40EdKeY6eQDlZHtRfIcsEyabcqpxrnPJ+LbU/Rdq19i5aBtxOH1qKhGxJlC9NFYLFXrR7a+uYu14Z2USyrWNJDrzjBq+kQoTy425eFuUxuMsdF2Y05jjp8/qB85r5ETcMfwovGjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777939054; c=relaxed/simple;
	bh=0TrgxmMvqKFbVzg9wZY7NqIyKT/tk/7DbgPVWX1oMrk=;
	h=To:Subject:From:Message-Id:Date; b=SWus2NHyf/S2eroO5mX+fs5b1BaNPaFL892LK+aBYvmlFQgH+AeLUDbBjV5wgOqnR8FpbwSz+Slx2VD9l8pMVpgoPvycasnMKBFx/mRO1HnWUBN4gt09PXyr5ncTfll9GzGfXt9Tos5h7VBXhdOIPEWxx2MFRCjv7vGv0UuDaLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J49NckCI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J49NckCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5E3C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777939053;
	bh=0TrgxmMvqKFbVzg9wZY7NqIyKT/tk/7DbgPVWX1oMrk=;
	h=To:Subject:From:Date:From;
	b=J49NckCIxkKVSQcKWoMq3dgLh6gA7usfRPN3593qncHDmdDzkegvatXcYluXoR3Ob
	 svPhB+mMUZr3RimgWWPZWD0jaafiJfFP+A59OgmW0sqBwJA6zNSTnvrPRh0bbAl7fk
	 9LhRjz8Sf9beVvxQg2rd9/7CIt4f0TydoyKp8Gdx8840mkND8cNFuRzcP2DvjkkdhB
	 oEUh2e7g+6KolEuYNnnS0txcq5G78IPFT06g/eNQIH1rBhsmigTmLgTlw55QQlx7sg
	 ZyNnN/HdlvnWNfQJemovuTlULMdB41E7MO7kGScsSxnd1xN4A9IXg2v1crPh2hsbaW
	 vvlyYsz7yMwlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC896CD342C
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177793905368.30962.7794122978023057199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1888dcab5a55a9a56a2d526fbfec8321f9a956af3c8de3545f7eb308af81942b
Date: Mon, 04 May 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777939053
