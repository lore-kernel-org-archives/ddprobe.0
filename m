Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86916255F52
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 22:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782168394; cv=none; b=jQykWRBpAadiQNWlMOd7D3iH9vL5wq8lREk2Mh4JVL092g+J1h2LjyBHUx24iZFCvA9kW9GL5+hoPZJyia9NUfWBWUjTSsx0fcDRGNbGv23ISgh6JgZu7NtcI3Itl6QScZtEezBRSOhk0/u78CwRmFL46w2pME5pj+NSHvnecsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782168394; c=relaxed/simple;
	bh=Pyf+Zi0f2NMXcIkCc8GHt15ZMppRG8kuCqmoi+U+nPM=;
	h=To:Subject:From:Message-Id:Date; b=OCx4A2fvhqtnSWlIvSrVw0Zhqs51R5CEBZQBaxRmoPUQ6WJ7fGu/c2dMQzahuCkND3jG98aKB0/D5fxzCdTxpApYTxPM/5olQ6om7DxZEXN2DRpSgB3tur6DSaxjvFQXtvIQb6urXVFfNTJyU6CdIxKyyFnXSAqMHs0XLVUvRjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlGnhapc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlGnhapc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E63C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 22:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782168393;
	bh=Pyf+Zi0f2NMXcIkCc8GHt15ZMppRG8kuCqmoi+U+nPM=;
	h=To:Subject:From:Date:From;
	b=OlGnhapcGk+CxTo8SI11C/mY8FmIGhDMp++I7L798+4qbNcO3FkDPw3CtMyoFR7Hv
	 jmsr2IFN3V4q93AXRq2NV7JBPrLvsTiG1q0Rxy9jXUYfzVh4se7s8OQXBQasbMh2Kz
	 cBI0af5umXqGV+0JHudu2oc/mRyG1i7tTSNXBhQfSAqd7HVMzAd0JzIjKoB15vCFV9
	 CP4ECKzd7z5dgu68F1dlRf3SuiysKSXh8548Vg8NfYd/MVZr7R5MKEWaLINzcmST3U
	 bPc3hWlxhPVbFqBe4iqSNIv2l++anl/32q71rQ9NWLpIBE5ikYh0DNWouj5zgZxa7o
	 c5HBtKQR1GYZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA537CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 22:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178216839368.13446.7316094761098976859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d605d1acc392b32954d8b2820a97a96a773d2eba5066ce7bf488efc7df38c9
Date: Mon, 22 Jun 2026 22:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782168393
