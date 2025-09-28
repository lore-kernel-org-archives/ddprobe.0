Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C021C6A3
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759030794; cv=none; b=N6k9rrGcoitajUQ3ICf+B0XUdda+12ShMzYMFNqZr1N1i0rN/LUH3gWNXPdBaoLVMi0G8IBFwg/6Mg1wvZNtolunhNrEYuF85bqL+RKi/6AfyNNDPwU7UvFHbMgXV84/akXHLJXpq80AA8fm809gzi3ghHX5y/Ytqg61142lov0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759030794; c=relaxed/simple;
	bh=h5Z1safE8W5Cu7WIMcKjPfDyKrqk7b/AaXqlQVMwM9Y=;
	h=To:Subject:From:Message-Id:Date; b=kzpmU2TvBtdRid2ReZE6eFRT33f7twvYydwmQVIsXJoWBkiaUxYWNIFk5afT3Xl2dmmrddI3owbFIoVlDPc5ayu4Q8lggXFf1Jq8bAEeHN7/jznzUVKYhAqXQXytt0X0FyMGOvKwnXuZvH0k6/exJDSBBG8a0K+7ed4iGyTsVSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgsbT2f6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgsbT2f6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5714C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759030793;
	bh=h5Z1safE8W5Cu7WIMcKjPfDyKrqk7b/AaXqlQVMwM9Y=;
	h=To:Subject:From:Date:From;
	b=SgsbT2f6h5u7ZmheB0Oqf/7WRI5TMvjZSmqntqVkbcnoqRFFMCNB8vYpwvXRYPX2d
	 Gkw2aHXlfVXLhG66pqyP2PTfqJeZAsszdwmTkKi8TlbEGlSrS3nq0cDZanG8+nAi4L
	 ILTxRehqT44TRU8Nvx4UC6PziSiPTz9hu20Jz4S/QCztNZxEefTufLPQkzcr+iDR/I
	 IkeFW65jQeOv6s0M84NeLqKP6OsEQNrxCuzvka3OOksciJHqHEF5I0a8fHynLnBoyD
	 WNQYrgSM+V1DbrV6tSwyu0z8TnXfDbHjmacZRpW0xWOoU5ODEOpCnd3u6xTxzxcfXV
	 GPNNXRz0Nr3Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95577CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175903079358.15643.152890191975089574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac2a23c24e4157718a63e718667b3d4481055cb022d0becd667221a7204a6449
Date: Sun, 28 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759030793
