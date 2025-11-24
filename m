Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198A81D5154
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 08:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763972514; cv=none; b=iw133y+1tBxqFm86uVlaCITImLIRDA/jM21eiQVinG4bvfro07KYScvzhsVRacaoFmbB1sxpwLdtjKi949J5EcAPQ/dX2CNcdsCI12sXFScVu5Uqt6TsqTnKxEOj+2pO4L0Pt0PikOseW0HRjd0UQjV0kM1INODWOsquVl7MJmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763972514; c=relaxed/simple;
	bh=xS8kDJmCX0oE5DXZ5TX3jfQU8HssyhcpaUGGrtXRoaw=;
	h=To:Subject:From:Message-Id:Date; b=lIAkw3+UeDfLbVdviINqZhpbpR1kUz/4qZ7+qRIXxTygoJ21+2LKlXhxnWqBQ4afvWKVT4VGsRZZalA3OF0D8+MFaj4ddoFL6bFES0fqQcKMZfzpL2sIFWiUJlhB28KleZDWKDuFWqayDxZs/Por004F+SLmqbswSuvntUqYx4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiIDPf5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiIDPf5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85D5C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 08:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763972513;
	bh=xS8kDJmCX0oE5DXZ5TX3jfQU8HssyhcpaUGGrtXRoaw=;
	h=To:Subject:From:Date:From;
	b=XiIDPf5cwXnK2uwdIQattdF9nF26o7hq39dQ+rcMHIxdtuaTyBv42GKeBXBM+tjiJ
	 P2itbGl96P7kul2Jnbp17bP8SmtBTiDoJbbOX+uLZkikYSyXz2dAYctxdjXceDgbQG
	 j1SB0DsPuYTgbLwRMTVtfkHTbbcU4Gi0yBveXTIBlN/j9skloKOyeZT75Tyf4zVb1H
	 0B566rDomV8mDlKUTZU/vukSPfCQdflBfT64J7cPVPiEV/17/pPBCdImTVvm/0ItlU
	 c12smSiUc9SZNRr79t36X4P3Ma98KGj2kgQwrsAl5k/knscCH02O9gnPaHHa7Lx/mi
	 Lx6YfkpTSVp8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975F4CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 08:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176397251360.9562.2982695233935602583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d8966bc222ac7c5e877ab036e277888eb8e0f3026bfd717bee0d81d14eae399
Date: Mon, 24 Nov 2025 08:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763972513
