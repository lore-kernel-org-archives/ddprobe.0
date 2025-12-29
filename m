Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFC12222A0
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767032034; cv=none; b=rv93piNoFVV+pwUrMPa275NtxvpPDSJF3jcEXfdxuV5tPrK8Y09wp6pXCp+ef8OIfq7brCabzlEklFpyToaO4jHBtZRcr3/hWFA08WqicX5gBfxILRQwT5TynmGNnEcmtyPix4o8iR9UFVVNgkmu6hbFWIVP9sWUAhYSfEecLvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767032034; c=relaxed/simple;
	bh=OoibJL+XOmeuTiik2WrX3okUSVBb7wvXQQaLTnulE8w=;
	h=To:Subject:From:Message-Id:Date; b=Ukd75JNGz5wU5F2+7HyOpjLn0pNOyevo0OSJanPArktI0fGJD45Mzdlo1Qvdy/JLQQB7KZ0buMP4HWaOVVO3UEoxLC/NkUza6Fw2DEkAVhR89h7xIj+IPv62kZYUArxeCZ+cMCH9O0x/tlJguYriS9PUDpT55YNXZ62qV1jfBSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2VC6eUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2VC6eUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5990C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767032033;
	bh=OoibJL+XOmeuTiik2WrX3okUSVBb7wvXQQaLTnulE8w=;
	h=To:Subject:From:Date:From;
	b=t2VC6eUpTy/za0bAU4NSiMO4paRJnluQ/VRt7clo7jg26tau8NXrOiP96E+zoLldj
	 Z6UwgPi+1BbWqklV4HN/xsRxWwBE03/EVP0CzLrCbgSPguDX8fZUvDvDwnOHyUwwyA
	 3cWw2OduTK6PRYUUmRWHF0tXXa6Bd+OffrTxkvRaXad5D9nhDu7TUwH8HH2S5fKayn
	 /dl02Tz2rYlhmjbkOlNBJ1vbctxdkWKb0ghOdI80Cy1AH5f0KwIxZ9xqMRGNQQy7uZ
	 +uTSLlNpQbpQ1mnCKBt6tb0N+a7QJ7CsVoAxgoIz7NurSTFae5Tr/cEC42AXsUZyXH
	 P/nF/PffCavQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A7FE92FC4
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176703203361.5299.9296111455205962026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99edcdbc653a6c99ee6a3d8317262fbdb80aa4756f80eacf507d09f0e4355967
Date: Mon, 29 Dec 2025 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767032033
