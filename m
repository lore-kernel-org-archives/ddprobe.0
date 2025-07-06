Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184041E47A3
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751837394; cv=none; b=suzXunNHS1QUDs9xQgOFRZZg906snjlaOU53O3jtwXURc6AAvVIRPsHISeMAca/asVTf3kDdvkQtzX+mc4ukuKKGnq8zHe2Gf+dbWpXdLju6wfnoZsYX7a2qV3dOH+hlnnICLGO6mHqynZbZbuTlMSv6lcQXOJvxuYa8PIXr1Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751837394; c=relaxed/simple;
	bh=fEveMKbQVkdVj1/RRE7ncEkZ9U6FJzFOk2JljcKZXDo=;
	h=To:Subject:From:Message-Id:Date; b=bQypyQop8rij0P6UodC8TkBgDXsMZj1yJJM+w8KdKXJfd/06D7Z9eFni5FWK1KaFGTsvxG9uQHiVgsYED+ILNGSYIRNw9VgW9EivW8etCRNSax/NYrmaxqW/rZWQUpHeMzQh9ZsUbeY7oL6l3NwPqD/FvJL570uU8BnJe6wPxuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hn8BkPrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hn8BkPrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38A2C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751837393;
	bh=fEveMKbQVkdVj1/RRE7ncEkZ9U6FJzFOk2JljcKZXDo=;
	h=To:Subject:From:Date:From;
	b=Hn8BkPrp3w6LZEOg64MsUgydxikiYUYcYKx9PBqZ2Z4qRtIrkBQc98RxOcQapyEMk
	 4+X5xfKT8PzaBY+TCH+JwdsSdVqndGToG6QGiHg3K5R9RsutQcBi84Jdp9q/FbRRKr
	 oz6wTbte4R5RWaROejSZ80trVhRM4flpqeV87K8R2iFteTKI1ThBRk3PiAFjEG2wKC
	 ymHZxw8Z4CBDDV552G7JjZsTwC2nw2eRK6S5cZvfn2lsyZXlcSERZYKFgy004cam/R
	 udONNe05Nkqhqm1FpapElsbevy3SFXJX0nh8uItx0SsZLYrlnD3kzupQiDtePDp9aR
	 qk8/RqRIJJj1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91468C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175183739357.18835.9503254190127786804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52dcb4882a519481ea327d6a0eceef89b3b161b8393a18a6007f495d4bca2fc5
Date: Sun, 06 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751837393
