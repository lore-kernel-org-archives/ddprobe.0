Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDBDF9EB
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711316297; cv=none; b=kodWICYiLZhoMpVdSA0VIEVJpGfd0NdvL/SDdq5/lIyBaD7/lLArL2hVEIlySy5yAfzr+wgw6C90cHNaVm8FG/4N1N8016ovAI5uewiK36+5AVZmT2nTA65oBqvbVxlkh718840nEbh+5mEj598e4J9XuovCOs3izORFMau5Fp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711316297; c=relaxed/simple;
	bh=CfuSeEYRaxXUW9K6Xu4PyP7CNcK5+bdc1gl40Tgyj2M=;
	h=To:Subject:From:Message-Id:Date; b=eB2JWMpa9Lw45beDlOl+KYUMoB7gQTQxQPU/Kk7L9YroM3Xbve6FDFPK0jOoXVlnE8XI1X97Aag6u7N2V/i/qvdTVQPnFSB7IkEvuxtNm/G4zCBRRCmbtrp7G4xOAyniJJmTsBCyGFaX33CKqaYOM4KN5ckTBrR2xJE1NWIAhvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJfXY6SP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJfXY6SP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F79C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711316296;
	bh=CfuSeEYRaxXUW9K6Xu4PyP7CNcK5+bdc1gl40Tgyj2M=;
	h=To:Subject:From:Date:From;
	b=mJfXY6SP+BxSnh1hlpGb6rgZ3ZmroUPSXlKlhul8qOwLLptNWweiFtbWclMwv9J0L
	 Nk8EUSVvNAJkZhrdeeqVDZAUy+DDHFb4auNNngbezuuazJTKerIiSvQSg0jmWC2IYC
	 f9TTBgKPAY/K6BzqeDyRBkULaUjjD+Utz6U2pQvoZDgDzndUfTNXgUBEXgfaSF7rNu
	 ktufXwPvmvpELYGdfJhGDUZFS0IpAzl6pj3Jy7yTXiQH9sFczl1OOWO4VH0ylh5/1J
	 RzlygdQClMt/Kb41aQA5swxQV3JqbS4lwAb7cC5UeBA7Pcx9I23P+sZCHCShy4pkd0
	 KMpD+vxAk0npg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75C51C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171131629644.20663.16809702325012405718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94f38771cf6fa1a72465445d763e47f06e2142633073066b74358c357c2b108
Date: Sun, 24 Mar 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711316296
