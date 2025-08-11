Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0872DBF69
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754945995; cv=none; b=UHuQIXfuZyqMe4s3eZC66JX1tHtwPivI6QvEXGiEaiiw3+E+Lj5WICtxkQVG4a0W/HUqdR1DXLIIj8dCsgeUUqaO3Ki1FiNbVMxDMMv32oqZNlN9rceOt66Q9kjyYPAbW8NsVda4qONRRv4k2E7CkUFLNja8EvfdkZabEpr+/pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754945995; c=relaxed/simple;
	bh=gCBx9b25ZFt89FT1hb4/0ZVHc7BLlqwD4xWPXxrMOT8=;
	h=To:Subject:From:Message-Id:Date; b=NqqanS4VIYdFd1w7nxRvP5U41aHxWOyCN8IO7p60ZB5xaASBBn1eTU97ZtQ6ID7FNNhmz17YJaZ1COyj9REk/e3b54qlWv7nEyA428qaP1gZ1rujWfdGXLZ+swav7yQxb7oALi1/c4N+zIHcSitSwHiYwHFfKVh53RhwH9Ij4kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJBfPdn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJBfPdn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1162C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754945993;
	bh=gCBx9b25ZFt89FT1hb4/0ZVHc7BLlqwD4xWPXxrMOT8=;
	h=To:Subject:From:Date:From;
	b=jJBfPdn7jF58skrj9qtXxyN1fRtcUFtueFd46zQdrMkrrsfUxryCoFmFVaJTKtHWf
	 vbgwHhl2YnIR7h3xKTZwCOrMg3vb9aYVmRcTI24OItXeKardRhxYqEoMxb1gfyU++L
	 UtoZUvQDh92cDnervzgHX4UB13rh9T390NYMCoI4lIgoRGpoI1rGPucdDGnKvOa4ki
	 wCmY+ODF5rsrMePNNsuCvgHIzZDyMmFjlB5VnKgaEi82r4JFBKL89R5f6PbgEcEk38
	 9jkDny7dsMWVDuEW8HvBTsXRxBXn5geU7L4hWBqxbBXDHjJRsy2fUYY2S4fTppqb93
	 mu0veqpjuCxDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8C7CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175494599357.7169.12726622033240817672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc6b42cbfe4fbc2f89c86000aadaaa47a0efd0b1b2a861a71f31f132073ea1c7
Date: Mon, 11 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754945993
