Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F2C30E834
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777927654; cv=none; b=lJ+7Qu5rhUbiDQi4ssV2b4ZmFwkp+bkv/qVrku3kWL59dwQQxNtpDHbz6LGnz8FJZiGqHltf6O22p03jKwZYEH+C3MI4klAwPIIUyKUD1ZIrUJksO8IBAY3cdOCzQUH+TvL7b2/atfyb5C+3JCDK8GQ2K7w7aZJNCbSzIGZfkrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777927654; c=relaxed/simple;
	bh=2mEc7PFleR/zFCSmpPdGzLFUOR/6oSfojtSe8psOLms=;
	h=To:Subject:From:Message-Id:Date; b=NfA/j3VHaIsGYbnKJ0mvBmvKAeTyZxQGiFPpVrmSGkKoO6NmwhOAtKjK9RwLYhye92k4J7honSkFkhqXKPJ5jRod2QYhQFHTE7udbyeoVq8tX6sTrmBRRdEZXpd8YEUiPDuUI8Qc3Z1tJLKTN2X96QviampoODGA8fDXMjINeE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/y9GZYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/y9GZYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA02CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777927653;
	bh=2mEc7PFleR/zFCSmpPdGzLFUOR/6oSfojtSe8psOLms=;
	h=To:Subject:From:Date:From;
	b=j/y9GZYTZAINq2EQAUr7ueMhj1t2ok1V9JYHCJcRS5GGukB7n5JCJLO4z961NxL20
	 Wwk9IZv47VjFpeWvvlmvk6ocsToqA8CTIAkdYR5tIB36xDcLYYjvyupzqWUVY0iEeN
	 A7hL7bK/Likdqbmlo1mgmA/4cVxIgXz6tv44B2CUVBPbGsPx4reerYmTgip0tMfx4Q
	 3tc+8gtK/Ki1D/s7ZPtas4Ja73/bvHiiC9adASgb+Gm1AsM3YO2SrHnh5ti5dO3W37
	 ghhnxUqYspnYEisgQFLY9QDhWWIRmylp+Rl+jCXwjK66FsQOddEX5hJw01aJWmk0Kb
	 0fPhrtkDM2Rlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91A4FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177792765368.11883.16571794098347592211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29500f8c305980d71908a46d06462688b9325a4c1263d4c66f8eeb1dbaceccae
Date: Mon, 04 May 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777927653
