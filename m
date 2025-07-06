Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF8528F5
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751763594; cv=none; b=BejLiaxvkwwG+zdIuMt+PWu+rL6dnEDLUFVCNq17NWTbDGlGvJ2BnjIoNKC0DFGRBm2SfylpXmQlzRXeQgqMyUbzG8S++9peHqHJwGvhoixoR1ZghUDF1rWU7KENBQpN++xfYRLWHMYCrocot+e8cjlY96lck7ZARtqiPXv6Q5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751763594; c=relaxed/simple;
	bh=jubNjIrju97wKGvXXswLskBpJFNtHE0AeHpi0mMf7fc=;
	h=To:Subject:From:Message-Id:Date; b=jwZA73KbhK1FX0kr0j2eufQmXJchMY7yL0l13L0TG9v9ym+QNXPlCgI6XlUWYQ20PnoNr2UtLUspkzQUB8mZMAeNmL4fI+GHfx0YA7ApgaXmFKXmuxxufglSQ/qZDYJlLEqAOh87w1yI/SDnfMx4waVxRJR+LUqfav8TAjD4CgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vEOgiajb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEOgiajb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3534C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751763593;
	bh=jubNjIrju97wKGvXXswLskBpJFNtHE0AeHpi0mMf7fc=;
	h=To:Subject:From:Date:From;
	b=vEOgiajbmXrEr+JcHAkryJojxmk1jGaK/xRNV+qUTJWu/EcKHkv8G7Qy4mBznpDrh
	 fLkScH+/PApEbCQLDUjK9olncT6/5/fStVkMnVQgJ1g02tvh1cxLl97tUI7tuyIlAd
	 OrO9FGvr1jYnH9csZT0K40nWgYCd6oKsy1Dpxh+kUiGpsf03Ume4rd+FTVKBezUxyV
	 m0SmMVBK8hrQWlhU1ZJN9C4e0HhkOqSk4DfL6Uzkr+lZkFi33kVQOuqLGwjFWugUu4
	 r1gP2vVknjVqI3kKrFZNip04bRFLakkJI1/SbCauhE6lkxG5TD7gmvnmx1HQAM3e+F
	 v7CVZKpP1/BTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A71C8303C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175176359357.21072.1967477492071589464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d619b47afb276cdeb9ade2202801c1eaf4bb11e4d84166f855183648499b4230
Date: Sun, 06 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751763593
