Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A01A1A0BCF
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728494754; cv=none; b=W7rfzGyTh954SgJA4zDS/hT2J0oI29copw9sMbDgxHMpRo8HNyzJc2qcJ2eSRudvf4A3aNHNc7Jz1q2aEk0+dO/K6lgamq5qMCyZrZ/CzEZ7S2oa/717hM3je5PA3XltNleTkIoxbM+36zAF48ZgmWtH5Myfnui1oDzPVr44g/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728494754; c=relaxed/simple;
	bh=wM3blanR/1pTXxkCrljchHtAjyzjiHBsFtas4zynKT0=;
	h=To:Subject:From:Message-Id:Date; b=soh8Vv/tGcYn1HUpBwp+DoMRX8kvHIXotJ01HGJxucpdA4P/KvIsb5YvaOgW60Ga6eBu/DsMJb0AbPlx1X/i0bioUC0xSheN3TjETt+TGxmEsuseaZtuvpWXbHfg2VigNF8B4AKb9aaEQIH19sod/xPhmJcUFCNaNXks3dgU0uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CF0unJld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CF0unJld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B671BC4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728494753;
	bh=wM3blanR/1pTXxkCrljchHtAjyzjiHBsFtas4zynKT0=;
	h=To:Subject:From:Date:From;
	b=CF0unJldwXm7YjXonX2J4HtQ01EvEeTIDloEI6Bg315vTOqa2DEz/GKEnJk/LLf1f
	 pORqqy3PNoWk1A1+eId/NcDj0YdaXnhIy1s+68qtwIj4Rlzi7Gjl2gJ4jBYVTV/ySg
	 YJvhuUI1FyHhSuJ59ime9ps4bCbNBMoob2t0o8lGAOLUfvuRWz5HCEgw+vigR1vyMd
	 qLD37FVfMlhge84mAqISX+kYb3lwyq9e20GIICCprhXeGf0jj8XbQUESFR2UeXBove
	 HYsKbP7HVQ0ODFGtW2K6ktF81PmnAC+iipcdoUpgIHfkmnUmudJ6GO1+BzVrxtduPH
	 Tds/Awb9t1Vfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE69CEE330
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172849475362.1374.15959689166357587255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf9f211ac1200fd83160119b2cc7a8dee80bffca668d8f279d19ce56109a7d9
Date: Wed, 09 Oct 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728494753
