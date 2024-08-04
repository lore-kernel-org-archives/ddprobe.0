Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1333D1CF9B
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722761754; cv=none; b=nOM3AhnGozRiM9tqqEUlersCP+9DMKfqpicRdassxMcXKKv57mY45ej+K7cJUU8IJr8JOIOPhZAsZo3+DfKwtiP6JZgJJ8WMbCtbq3jBnYdSqcnAgMA58iYXv/biKTHfLv17GfYUShgudLy1nTWBn5OkmhYLmSVpLogGC7tQemM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722761754; c=relaxed/simple;
	bh=RaUHeeP/9+V86Dzylj3xeg9t7r4EpMPd6et9rkjCPEo=;
	h=To:Subject:From:Message-Id:Date; b=ORtkXIraEvR1M3QKWx2iOkPdgh6kdFzYHCzbLkz7VG3Ul5/AnDD8MKiEsGvWuxCZfIjwbMBBXB09lW5+apfnAiiMAtIgWhJ6oiTT9vS8CszAX0Ka33WipZA7rsW3oA8Tj0BE4ibnXORJMO7Cf+24gKTb+Kfq+21LWaIXUHk0AeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+8tHKcn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+8tHKcn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A3CC32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722761753;
	bh=RaUHeeP/9+V86Dzylj3xeg9t7r4EpMPd6et9rkjCPEo=;
	h=To:Subject:From:Date:From;
	b=i+8tHKcn3lN+ywoIok7kAA79N9kbsSt2Cc4O8nCHte0GNuLEfOTm6osdA4fJp5M09
	 I9aAY6wsyZ03nhm355WMmSPoYWs/kcr8M5aIhG6VnRfOjSICX2PaVC+S1IDGCdmmcZ
	 OmRmNOU/ZfGvS3iHoOJO2im0qSLllXEz1HC9suCw07OXAsUa8uYMTMZE66hpK411Za
	 cAG3KxtaEyO6gIjhuHT5/XQB9LJTLN4R9655+uYVVPzDYxzBHGkLzBNNN8yexQVL8c
	 MlMCcZDSJV275/oVDPqNY2ganBCPbeM3otHiv772IZLnRWgkWPl9s4qq//Nk/6hv78
	 PAYkcrRfcRPLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9308BC3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172276175359.3347.840693926070263608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44a259a153ad6789e0a74268d10b12dd872c58e3b8f194e84d8225b482163f55
Date: Sun, 04 Aug 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722761753
