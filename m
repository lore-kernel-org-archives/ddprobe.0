Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9FA1F3BAC
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752536394; cv=none; b=anEy6DKs8QWHten2If4evqdCKmL7Wlb/F4L4X2dEf3N9TWmduDeuhbSHPGpuVj3/ttc1verrB+jyLb7n8DUJuzjeaZsXf2e2oxu0G8SYUWVTiag8/ZA8cyQILWLsuFNL9cERwGTzh1W5g7x2h0xGFS+BPSdPyGC55YNzeIAc0+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752536394; c=relaxed/simple;
	bh=sXuokBIp7RUM2GnfuPMSy3LN2wSp6bQ8GgZjQjcETfk=;
	h=To:Subject:From:Message-Id:Date; b=lkA3ignwu5H2XdHj7ZXXPOLpN1+ZenlCcBsOWIjiV5a1X3EdOyoDAFcIIzEZFKV6XVnKd0rkFOax3tfMAKvesdwdRXOJwCKDeb5tNHnm3rcCqUa0UNmmew5HtEG08fDTz5ol6b1AQg02bbBkESHg+v5UPT5E1+ez1HbtgcauOmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4ox/a5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4ox/a5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13CCC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752536393;
	bh=sXuokBIp7RUM2GnfuPMSy3LN2wSp6bQ8GgZjQjcETfk=;
	h=To:Subject:From:Date:From;
	b=Z4ox/a5a2ywThrsDNQMm/UE0Wluyh25Mfrze5aKGBPCTZb2QxU+oRGpJvWggrUUMr
	 3vMBb0Ogo0Gsowax3x5SBJ5ZCUqcsrokTK3Fp3KRYV8gm1sTbDx8OefMaL3xf+SCRA
	 8fZf/x7hwQ57A/NDBGHovZzxNLwW+T8QytkA+3/5NMOadBgb5uOrTipqFgGCgnwO5v
	 TYEARbK01kKdleYyH1ZeNVTkVJ0uBJttR6Ur53p7hadqDUKNiFkjc1eqsO7OB0SIw4
	 KkbQPZT4bYXcrrEk7apiCmjUdXaog3bAk91Rdd6AHcq2gX7On51saz086910lL2OFh
	 Yqr6TJ9umM5XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E01C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175253639357.2402.14718841295435699844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fabb120873eb4a1c94305bba1fc354092ebc9564b662c52b3cd79c2c0b28172
Date: Mon, 14 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752536393
