Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217F4EEA8
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755416394; cv=none; b=PrUrYQxo7PemUZn/pnSw2AF8iLuEDP1INuf9qtbuCXDGG/CbJCaPsJeSY85FLMlgh4rop/k23hf9e/cMiWV5HYnqeTv6xmsC5S8Ld9IakVMQGqeqngcMWb4E/rvh3fdksgxaQ4z8yI8buQ3u0DP3w5JHbTSz2Rz5Z33czFdfnjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755416394; c=relaxed/simple;
	bh=S5/F3NmNfcv7ayiq2xNTaC7xqobB9eT6/OoL31BJlrk=;
	h=To:Subject:From:Message-Id:Date; b=t5KaGl32ypC3iZAxGBPp0NRmQHVSdWT37ow/SftGSTarzF4Kxqi88BdQRXabU/9Xw4RTyQbKVyFJboIUpzrLACJRXpBJ9chwT1k1un2V6JNr/4KWXaHZP2G+CfJ7w/mDzPIlOr2hxrAxUHptIj9SSr1osx21tOmpXat9yVoEMSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBBWJlR4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBBWJlR4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3231C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755416393;
	bh=S5/F3NmNfcv7ayiq2xNTaC7xqobB9eT6/OoL31BJlrk=;
	h=To:Subject:From:Date:From;
	b=YBBWJlR4y5dWvV/eTsadwpnsev2IlNA45JhPTiPu5XJxUHXRIeoMj8i4hzIO10/I6
	 1WrExfmzbQmOp4F2APmSotWi3JrJnujMEPfme6U5mUUHnqkWJgL90vRYhFg+Zzm2tG
	 icMkIDu/5vNUqpIXQPDa/xGCAj7Pkp/Vy00lzLOTeXuQN9E4f8WDtnMIsV1eJImdEm
	 CWFoJSRdj5466eOrNDVYIIIkpzeQS32OcwjlsTKqpQFdHNZBSF1dK24Nt9jlNUvpRH
	 teP1XuuyVhNfg6CBWuqQaMo9iFZ8g122bcXs5Zjn/OAj9UEXdhh77tl70/nWZB/aWy
	 6wI97IE7NbNpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C9ACA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175541639357.29390.12748028989676608804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdd56a08dfd692996cc759c772b43add1a7a9526bd7153b5295b2c52c83aabaf
Date: Sun, 17 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755416393
