Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021C34A1D
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737595554; cv=none; b=M3tbAF3v4fSzHvIDFbvr2OzJCwU2DxyZ69U2mZYMGqMONuZ5yExWABYEN03mR4tKUrILUNKFJJ0FXJ/1EdWXEIxeIRxfJ+UetHJdJh2OoQr5TzhotM9GVhiSFFP4Rs/qdvriM6JgRKKEaOIm+B5ttrt9Rq7YWUgACdoZVOpRezw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737595554; c=relaxed/simple;
	bh=TQUb5yAtF+DtBrn2/53ZzqEDLtfI2NlmoB5qd+lNKeQ=;
	h=To:Subject:From:Message-Id:Date; b=ndtBY2AL/s+qCwgetQsNVSS7EayesdVOkYlLoPzwfcBSX0x3yMb//KSDSludTQXBPG5e1x07NQTB8LSNw3QbRNK3XT0iJ4M3YWEP5jIz6BKke2649eLLzNEV/GfM1gbuZiX5HgU4h8FIY88/y8+c0fYAZbuJQcoMijH9r6Dxg6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+Yd8M6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+Yd8M6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C38C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737595553;
	bh=TQUb5yAtF+DtBrn2/53ZzqEDLtfI2NlmoB5qd+lNKeQ=;
	h=To:Subject:From:Date:From;
	b=N+Yd8M6smRdjkqYGdkLMF8coAKZuZWl2X8HdaBkuhAwluKc+RDwOAIbuoJJqLPdly
	 tReui5Q6dpMU3ddrfEUJCH07bF7ibzfjLjpTRyV2Vqy+GNwo7nNiw12CZB6Z5ve3gH
	 wsG8G7IYiu0nPcdW4XUENE9MBvphCIznQ4dvNxG5BVYeJunaRy6A1dY4+7iIBzQ1t2
	 3Vtaf1FKVWr2DPpPdGPnmXGBmV9OhRoRX+5ehZi4i6UEmZBRRygkc+DHM/FiRl2QX9
	 lhTI3hwPBUWMdIHgHnuZ966MPDtXrLW5ZCACaDqFMefb3IP7gkZrc30E4zOQkQH+BE
	 yxjFF7J3lwbjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1A0C02181
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173759555362.31647.13219870025281833894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89aedf6ec25087453f6656457bba4fd0a2cb35bd9be9f0ec6ef9d8e744ce33b4
Date: Thu, 23 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737595553
