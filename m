Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457F6289816
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755271194; cv=none; b=eU0PzSGMVXj1rDjSiBgL8hpkTrqD/PPAk04KUxHn/ZpGS8SRRynQG1jh1wohLdEJm9pDXCgcCJioKHInGssFrBl2vBAtwsRZlfq2InIcokl+omQCeX5udrpX2oi+e5XYsy0KYWW/eI8atTYM/ttDNOzH0ppxoobD6gpr1j/3ohc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755271194; c=relaxed/simple;
	bh=dvEJogTrWICofxFEgzHe8M4QDFBJxze1YIvtq8/Njfg=;
	h=To:Subject:From:Message-Id:Date; b=cxvvUJjb5Q5a7BfFxTVkSaSKP8ORw7HjM1pOv7a08zk876KomvahwpDpsbCIhwXZztUEcjCyEADrI55bpJSrDPjBlA4xD3aqXQEhEXNetGjYCpbip7zFy0w+nL2jHXQbHUEewo99GWSX5240YUMK78MdCq3v69ep9qkbHpHvqK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egWG6qyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egWG6qyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B48C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755271193;
	bh=dvEJogTrWICofxFEgzHe8M4QDFBJxze1YIvtq8/Njfg=;
	h=To:Subject:From:Date:From;
	b=egWG6qyPvQ3UO3oMTIqfbLkBcR8nZ9xlY+e6+jd63zosgAV9OtPBHhT6DfU5G392r
	 KVKbnAl8N9oGCAAfJpKX4Ohs6+ic7KbiSxaIELgaBqw0JhkyvboKHROMdxrmnzSmHO
	 PYBdGAU6QLjrSLlQ3Teddhb3CH5AZSc3/JFYBK2NHYl6O1k/oxDm1nvHU2TJ2cVFfv
	 FjN3pLHTTVrexrv/yD04SR2m0pABO2dB/voPLiKutDW8ctVjPzL9ZMEPik4lCIqhNN
	 I5paG8nYIy81q4MgkGXq28MmEtfJhXo5FgEx7FYkp60A31pxoPdV0iErGzOyuEfnYU
	 rTC7Sws2R74tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98671CA0EE9
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175527119358.28209.14231265006864052037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ad9d00c9291cceeab088c2aa363f98a71e1c2ab5e9ecac1b84dda08f8bf7e3
Date: Fri, 15 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755271193
