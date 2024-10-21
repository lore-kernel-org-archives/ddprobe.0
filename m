Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FCF1991DF
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729532754; cv=none; b=mXS5HMEIPdsdI3GhM1DVezqzsCXVRnwQE/ZRCwQ+4TOgOKDEgy3LWlca3VA+nW3+WCmD5sQHLXR6dfbJiT2UKAfnZqNC655Pr/jDTn4zY3wkmW/X+fVrwPS0wa04BKiMvy2U5lkeHItPXqtM2SdPMQncuxFjg7BJRkOEIE1yx1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729532754; c=relaxed/simple;
	bh=EXlPD6mIToSd/iGmrsBZVPBVEzhwCAmXIODg5vZceEQ=;
	h=To:Subject:From:Message-Id:Date; b=rBzj43O2yVBCHTg2Vd1znkOPG00XIiNemxHzGXGXA2uyD+K1dSblvlHZioNNjoy/0aWFpJEmpPZDUvB6l5dPTRqS23VM4id4fnmLnHN1vXLHXJ2Uf//wyPP5zTLzNB9pho1g6ZdF1T/wfliLNWrAhidCD++x5ArJsccIplJMUO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQZPmzVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQZPmzVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A17C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729532753;
	bh=EXlPD6mIToSd/iGmrsBZVPBVEzhwCAmXIODg5vZceEQ=;
	h=To:Subject:From:Date:From;
	b=MQZPmzVkV4tGYMy5LoiCDqTZVAjqeBNW0WjpDD4dp80eL90QKT57r9hDbxipuRoNf
	 b/ed9KBOPKiij7UyLURpm55w0DcOZBC+53UUd8fi00CkJiMe5Yd1RH6HnzDPG38UdQ
	 p0AxKryStzwcLEPGU3+BF6+gMoQQhTADH65BbqcALr31b5UNzqLoA65ot0rOZCxrph
	 v4Ryh3Y26f7SoCDVf/PCz7C8klUwKlTbmZN9k36aoi6erdtLlNS5p2mCyySSeJYNkB
	 xa3lEWke288ZgGIQaTNVfpQAU6XyczmeVT4WGnMRfW7zg4M3s9i+2feRicv/NWuWoL
	 pQI4NkTyOPmYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966C1D3C935
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172953275360.12213.11175486389263213807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63dbac75190b340c7abffc9813fa7736bf0d921c649a0eb0683288953741c375
Date: Mon, 21 Oct 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729532753
