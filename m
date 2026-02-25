Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120873254A2
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772027694; cv=none; b=u4snL9ntMHSnFKhoEQtI9+HJlusI7910QDSETcBubULiRr65rQn/vBd1VlflwHOEF/un6hjgFBMF/jxLP0puzZzO1Gzi3rzl4VT24fJdUfB+a60fBJ+CbSbxXMvhy2WBRlrmNAXXd9X2s7Jm6BeD1xV6xCEMEYiOpPoVxtUSudU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772027694; c=relaxed/simple;
	bh=P131iGhcX78dKuNLGgdGLQ5QFmYUBEwY8/TIcLG1T7k=;
	h=To:Subject:From:Message-Id:Date; b=mX5PXBdM6lyaSkwzyRfA6js58pO3k1AedxCfL/Al42KCso+plMafwa6KU8YRyJn6hkQkEOPGVsqj5zMzjlm2v3erOJqYqjDXNPyICKlTiJ5ZM0vlAuqzW6KwTUXBiSQamaKcPUjfgTGD5bPJH2xCRvi0t4LTcA8/wyp1S5yUvS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwEc7hue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwEc7hue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F0BC19421
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772027693;
	bh=P131iGhcX78dKuNLGgdGLQ5QFmYUBEwY8/TIcLG1T7k=;
	h=To:Subject:From:Date:From;
	b=mwEc7hueD+j6vBS7BK4xJ4sIA8Pf+jCcJv/Nf2HDta3RipDRXooBUT/vdOM+VuFnF
	 MGEydiMM19J9b364iufLifx1s9Je3c0VSlHpmkWsOofmJufxf4B96XJyUszQQW6e29
	 Ie67rf4+lOFdmY1AmrhHdPoBD+G5SD9OS6sE00os/sHLRmM4vM/LkjNluYo11Si5ok
	 2HnGBJi61JD8QVv9IqGevvidWoSf1aBwAi55o+3doyRa1JeMOJalFu/dBdFr6/kS80
	 /yW8DOdmo1T0eSrvINToxA+l7ROnjSuxnaE38XVHWjOgQFWoI06MAWY7/yAwI7gCFE
	 dh3qz1iVhOg/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C49FD375F
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177202769359.6922.1899582870040862436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a83198f218a45eacabf50b1115c75a303caa5735e0f8ea4e01c174e9526046c
Date: Wed, 25 Feb 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772027693
