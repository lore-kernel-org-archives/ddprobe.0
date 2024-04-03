Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C82F14A4D8
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712159297; cv=none; b=Ykw/GZUf2+dE8Dk1Pp+FROGKlg27oCbIHIfYmYBvcfm7pqj/f7ahHjH9bsy/MXuV0qmwOgPdB4nZsgPVBHW269WcMVHfUvoUE0nrRCJ59A4YGV0+wWf7Sz66ZmAPDj12nEuKWzMDgddlFTe9tGtG6ynPAfMZeA7M5jdEzAD/fvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712159297; c=relaxed/simple;
	bh=O6Uw3t5KeAc3KJ7ZR6PUoAYCLQrPzoAT4iTIz1pdsjo=;
	h=To:Subject:From:Message-Id:Date; b=ZUda58/PMCYTcX5uV1NShs36Fp9YJcty/WaG+2C2IWHFCmskg93elxOp21inV+p9hCXa6ic44/KAxh9dnncTX0hntSVs3oLiYnjPAD9BP9jSrZhKPRcHhltvVHqvAsAHFFXG/MSeiw1r/B5wTLttHeU2QrRSbLS6KR9uFXamk1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyTUmGFj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyTUmGFj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84E3C433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712159296;
	bh=O6Uw3t5KeAc3KJ7ZR6PUoAYCLQrPzoAT4iTIz1pdsjo=;
	h=To:Subject:From:Date:From;
	b=JyTUmGFjwKGusq8H5TnOlHVmUEVoFSO/4rwFkojzCPeEqNjpEu9f5MKGYJtXzqYXX
	 yi8jCwgyApBnlly3nUpR9Z/9XLkY/GGiRo5o8VfsBlmc+TZIHoS51AwyPY8NKr0KWA
	 ARIBwgHK5B2qoN52xgVhhVCxCLbJ/vgJYIxQJi1l89BBQQuq4zMlkXCzrn11h29c8d
	 whrcD9b8pubfafIsrwXHrQmSf2GECRP1oIvJA/sIN1q0SDcnGJcK6gD0ZgzfEyOXDR
	 VLunzhfh849T2TyG97hkz3qUV9p75dGyzJq6jbDa8vtWflGz389/ZIAVNfWi3YSSKQ
	 qpRo9CBc8Bd2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F0FCD128A
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171215929657.27388.7477734579625369062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1dbeed2b7074efb06b47a8176d54efae2c49ec7fc1c69752f4f0794f9d784c0
Date: Wed, 03 Apr 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712159296
