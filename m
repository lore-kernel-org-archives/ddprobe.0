Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4026435AC1B
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787548834; cv=none; b=Y9ZR2jac0RTfIKVfxCnKGunYCuD7ENHIzCkhUBaT36JAkdQRC3vTHXJF+amckQ0Jv2pcjqWupeCRuLJFyk1bK7r3lgUrFMdiOjNlakTlLLNH0drNCRA9bksSIjp6OncZv8qJ86jKNGTZmL8k7bOrEzrfWrtw9qFStIVZlzXCW78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787548834; c=relaxed/simple;
	bh=44Kwhi2BzZXQANPPjhy2TVIRWxMmyA5kS64It8VDbO0=;
	h=To:Subject:From:Message-Id:Date; b=c40wWxgWE8FE+EdN9gcitKjbfPJplWnSLlCuSdasPApch/hbCz1Ht3jpeqp+MRRb/JsEoOXm9iDWvB5b/DPDNZp81XD9laKGVEtEj49D0gV25fc5DDq7TeC1M05Pqxi5VItgTzDBS6EwNFYGLISFF0UxfX0EghQBhz6dsW5+ato=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poXBtkoO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poXBtkoO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB95C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787548833;
	bh=44Kwhi2BzZXQANPPjhy2TVIRWxMmyA5kS64It8VDbO0=;
	h=To:Subject:From:Date:From;
	b=poXBtkoOiYYtMWh95FZVE6giVKAwsNtvZj/LnUU1XTOEfi3HDeKrSfypAVn0lsuEX
	 iSpL84uhjQybkQ9cuIWUVmMAqUGzJ5D5hMuD1eu3GyHC5mv4nZJLOLc1Hk0oghjqQA
	 ygldhqmJy1Aas5Hr6jgHJvTlCkvZUCjjja4b4COK0dnwbzDGmLpZ3/bJfQt/GCqjsl
	 M4GfyluvKC/tpkt0mqfNofyV5nod1bLwJdclkYDd4DX0CI1Oaf1KbHPao0uCECFu5m
	 rDKOUOnn70qJmmDvnyxKM78c4/Wls59IVrjA3H0BLUvAUUogeK/VkYL1Aa55hU6nBQ
	 naTJO4DQz/bcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF542C5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178754883369.10559.10268304910242088167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f602ba64976fdbcaf045bb6f560cc781ef32db83e7ddfa7c0435e369337df4f0
Date: Mon, 24 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787548833
