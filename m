Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D115330324
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 15:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779030034; cv=none; b=MdtIV898j4nghtGf1sQMZctHPfeo6juildMeeKYAzKWYnTONXYpOAGzjgeBeWAs1YgYbfECNztjBquH85On20bNFaTBq0xfGtyvCpjYoulNpB9pd/PKdYObAmArcTiD7wMpd6ndHADlvGdWoqWuywpp8vTaAQjR07sTC8ZxZ68E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779030034; c=relaxed/simple;
	bh=I0a6c2AB7WK48X3FsBTe1FIW/gvfzvWVv/WcSZoRd7M=;
	h=To:Subject:From:Message-Id:Date; b=L+6TJZW9X8sWwxJddXTGSoL17fMuatX8fPv0ix7dAP6E1ahdlyvWdxK8GYTMZG3qie8sE3YptHgH9e9zYtV6cxXFkzRDMSfkP4/z1HNc8sowVjXGUYHQ7BV61tnDiXxBwitPCrqebB8qTop2DJF1xOBclDsDxwFPMpxWNY/YynQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uf6Zbxlv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uf6Zbxlv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C846DC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779030033;
	bh=I0a6c2AB7WK48X3FsBTe1FIW/gvfzvWVv/WcSZoRd7M=;
	h=To:Subject:From:Date:From;
	b=uf6Zbxlv4nXX58Vfjc0XVjex1S2COaKYjnCNcUcoYRgDQUZcsDZKHjCA00wJjafKk
	 jgYUc4z+xTLyqC90WHe7j0y9N3IkYV7i9OTWlQDBVj9KGcciLb7Le1mH7UIKUw+5nU
	 sJu+wQxixJ1lWha3XlSyowLGNJa5cRl7rTdwRO4gfBsqTQpPb1oC5Anj8CIDptk8Vh
	 WkiU3+4EjXuAIUyyHMB6Uj+TuE8G2znZTzYdIbhpZbLChiGcwoaWu2Xf7fXsnL83Hy
	 659Jou4mc3tRZAlLvGifNVPYlKpkMDScTmXXHON585SBEKuZ0MFat5yAxfTweFjrCH
	 vhqeB3Nrpf5Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B738ACD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177903003371.20933.1097750339606801195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2148ff9966eda01a6f0c1411ce03683b0b0cfe7b5a397701e8f5f87b0b12625
Date: Sun, 17 May 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779030033
