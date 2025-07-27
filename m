Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE8F1F8AC5
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753658995; cv=none; b=sl9KwlLpXPk6RqlP5NCZ/eqZaj1Zme3oah+ogKW570z1VmYstDMg8gwQFC7SZf0QX4hghvZW/WuHyT7P0JFiJ7pHO23N15gSBPDG/2ubmnc+u+KlHL1Ly7HJ+YQZAVsZ/SXs7zEoSWfDm+pXMx5u+whlZT5YO+GCTLQgNixIyaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753658995; c=relaxed/simple;
	bh=EcHdv3nrO3lq+Nz/9CS6xmaLNhS1lFw9uCxQ5wb8epE=;
	h=To:Subject:From:Message-Id:Date; b=RupL6tWNdcGX5BxPuf5cG7c3lJwFRjSec1jo85zHmg9Jfbq2n5s2FC3u1biXRJAzsO3Me03Sin5YApZiMm8/HYmwLvVU40YE4GEzTLTHsrExYHA8EDhieGbaOlUUMTBm5f6HzTU7YdQqpx9oTc2K/rerwK6/5XhBkQUosCx6moA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHXa3CJs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHXa3CJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FF4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753658993;
	bh=EcHdv3nrO3lq+Nz/9CS6xmaLNhS1lFw9uCxQ5wb8epE=;
	h=To:Subject:From:Date:From;
	b=PHXa3CJsBTdP+thmi04pIUfPhFTr5hdoPTVCku6Fr0Nr1KZ7tChIWyjCLjxSBMcMA
	 zI4kBcLrw5RneLUNwUE3e7ylXbFCBuE8bckG3xf6xGxpepBc94z/9sdVzt2gURCJ2b
	 ucoglmvFE4QOuqa7aSmXVwiEnhIyIiTTqDD/IdBeyRwkg7o+LPF0dXobla6kVJU0QI
	 UaaAZDDiRja62mc62zpRtzKHmTcb38DNbvSEYYdeOfIce0rLEV5IybJZfX4awgiGof
	 3/Wa7OyaOxkgk5EoGQ55x86nEadZeNuvxgNbkUyc1waQPA+OlwxIC1vLyTsUMDJoZk
	 uiDlfNOdhpwVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F216C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175365899357.31085.6231021525382263767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9a2938ce3bcf7388a9d39576cb29252c0c384aa7b39867ab2133938b7d2c426
Date: Sun, 27 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753658993
