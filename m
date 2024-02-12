Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4CB7405C6
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707758896; cv=none; b=gGwoE9O73zRcwoijjY21G3DVplVaGoYLmgTvoDDm6RmUknSRSG7hYRimLBNdTVogT1+dTBSozLQX30/it3/Xj0mvolrKncd+g3kqc9fgmPiqzXVCND7kywkse9Iq9/V+O+8FeCyZMRGlh0l/RHusN4QwnWawGoF2q942xqvd/oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707758896; c=relaxed/simple;
	bh=kqsWVhZwoZWjZAWL12bOcgbzHTggxovL3FT4gHDBOgs=;
	h=To:Subject:From:Message-Id:Date; b=rKL05NjYfgG/U+cKX/kFDSoQWmZoi+Nuu6ncg/KY+WsNxYrfr9WHO0jST8I9xWshY27E80wUydqddkigaYJuM6JfRGoKF5tvQkIdQl9PTO3s2Rhgglhzi0ZOh3XYIH83Cy/nckHGku9ca2HpIIQhpgUM/3cllbNMxdKMVRtD2xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOAzEexZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOAzEexZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FA4FC433F1
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707758896;
	bh=kqsWVhZwoZWjZAWL12bOcgbzHTggxovL3FT4gHDBOgs=;
	h=To:Subject:From:Date:From;
	b=rOAzEexZoayGJ+jyeTw6xFIFtR1MkDjsBMfZXZFirmVJp/zyR/xy4CaKQ7SZPEzIL
	 pF2GijJ72XZYbAcBw/21G5uhz67pJDIkTpcBz5G5DkN+A493JTPiT49xIAkO0oSDQw
	 OpQagaLN4j/g7znGN+LuxBf/lm7nfUagJwmcbVyakaqmm46X6ZNy8iDgTQVOHY/04M
	 R9ugzr37WTKq6NesS0gAf5Azvx0BcsHH6cMB7/IxaOL+nWebGUW06JicA5bdyh7MaD
	 AVsXfdSDIa8ge/JMmA6iIjNyTDTy85dKtYFtKN1XeyQJcglL+0/nijd5DC0bmmlAB6
	 enN0x2Hyz2fSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71984C4829E
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170775889645.21617.12966206669214466830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba6dfd08e58c85a4756e5d64a8be769f5cced1d179a5547e47e71eac338f65d6
Date: Mon, 12 Feb 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707758896
