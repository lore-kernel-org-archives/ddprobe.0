Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C2614D449
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 15:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715874743; cv=none; b=Du+geKMEGwYtEBEiL/VNyb/Zi++MOUUKNPrxDLUYxbM7QsMgdW/bMnTqcujIBJhrkCYlg8WLsjolmpXABgXT2NrQyzF2zsF/YcL5VJmSqaLPDO7/zEHUxJxgS8Yq9JC9VmVrTu2Ac3oKExX6p8Ehw4ZrzbaPbiPUcrOZZN1JmAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715874743; c=relaxed/simple;
	bh=sTS07XdN1tg/ZJEZqbrAhtKKur4bgdjr6FNuf/5p6uY=;
	h=To:Subject:From:Message-Id:Date; b=Ut5yZYn7uab1BmzjObR8FpfuOw26ywp5nDXDvFzVwanSMIgeZkHJD84Jx96l75+Y+SKFNFJOyW2yLU2L9Nu2epb69Z6G7ZMci6FXq5oK/IPe7XLFCmMDgrCaU2a1FH0MhFQc3jbJ6qyRZKiTHwlJQuZFTU2ZUE6dYy4Bq4S0TEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NI67C31d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NI67C31d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10AEC32789
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715874742;
	bh=sTS07XdN1tg/ZJEZqbrAhtKKur4bgdjr6FNuf/5p6uY=;
	h=To:Subject:From:Date:From;
	b=NI67C31d8gBHvGGxW5dlM1ajGNSszkx5HIxoBjCJQq25S9fFKyx5inKrsbD67fe5a
	 U8gajA1qSM/AoD662s1fMp4ygp6KeDFsCwp53BysRQ+C/s/AtINeE1pCeP3NFgR5qN
	 1CHTrI1eqIKz35cyzR2H6+Y9RG6IfVF/KfoSau9XHZEIiRHLKRNi0vY6PUhasQ9ry/
	 i/U48t17UalcWe/VS2/6tUQ2xY5IGh/uCQJGvQKMXE+Pbd0XparKFHRHS0in5Bsx7h
	 leWvC+FInayiEO56luPlcMD/yUXezALjeyTaQUnQoPHmvFGIfBQ1qDl9Pfj8fSoMZG
	 zy0bmJuSku/Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4AF1C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 15:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171587474279.10734.11662659014831593452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6744652c52fc6a886c566b292bd7991eda1ba2985ee537d4fa60fbe3cf02010a
Date: Thu, 16 May 2024 15:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715874742
