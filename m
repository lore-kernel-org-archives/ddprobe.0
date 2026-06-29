Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4608F397342
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 18:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782758914; cv=none; b=Cp6FlGh7U/3tQOzCee7H9UGbb/ZyMMsImTIdIPoUFYbYj2F6/n1G6gJtAxsZcn6th1rdhpW6G9WVrsPDbxfZ9yyNT9w23qyk1Y0S/BrcwSmn8fmUju4eSR33ZRXCEVvKbRT4SdM5FG4AT5KG8quzA4eqhbPdDjig5Wcmm1OuZyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782758914; c=relaxed/simple;
	bh=jzfbaPWDTXqiRgcmA+bAfre0gW1/o1p4mvQY0tk/dPE=;
	h=To:Subject:From:Message-Id:Date; b=JqlAhdMnMaa9XXoKJSN+03fOSaaEgWiTkPQxmvdoqgUqeMJI2R+v/ATrS25tz/pQDNvhs1vPf70GKHh9eDkoN4Qr6InwNoOBhu0Y7gIxRYyTERDVhjQ6mIZ/AoVyR/IVUWI7PdkIkcSRnsZyfWcytdo2NMnCCkk/P97L3dtVs0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdrN/k8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdrN/k8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40E7C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782758913;
	bh=jzfbaPWDTXqiRgcmA+bAfre0gW1/o1p4mvQY0tk/dPE=;
	h=To:Subject:From:Date:From;
	b=EdrN/k8oEa8xXvquu4njqKU97HEUzvM+s5hM1Jb0nyyxATbr/hYs6qptEolytuLSm
	 6rhV8Nee5v3laPIM3P9Qdr9oi50clTlvAdzmFLZNJPphw3iky1cAIfE6XlSjr1/Y24
	 VOs6hKKg0faTyUjct5RVZSh+yMmX1PhdM2E9IUFTxRCWGLts08vyfBzmKYAkQ55glv
	 1vBz5ketyoGJm3D7mcm3RVe25ICgV3DUABWyCNfOJ2Tjfd7WBDFyeo3rusrjWRCyIq
	 du4iikxBOtAAgfnAcNBVRilrpbJHUQJLy/LDl2pFIoEyVT0HaEIp6aSoj4CpM7jQQ8
	 WElNT9G9gsB/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FFAC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178275891368.28657.18425269502653524813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc36cc362061b29ef336f54098869fc5fcf0515057a83e866a7c7cc9618debfa
Date: Mon, 29 Jun 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782758913
