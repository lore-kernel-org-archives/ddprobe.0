Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C88A35
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721368554; cv=none; b=oYqdXjtNSmZPIft8esxIA/ILLt4avqBBeEoLow2pc4imCdRGYE7P7lfygKLijZhmCeNNsojCw5ZizvHZB3fKK+90j24i20GeVbL5zGBU0IJceC0qdx/Jsq7di6FOoxI5i5c8SNzisXwmtc0HvSIjuTvt/AX7paJ9vsasUHKX4iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721368554; c=relaxed/simple;
	bh=JwjFvvSiHIVPVciIrk9aoyr0A4aWK5j8H/n2ZGoOMKw=;
	h=To:Subject:From:Message-Id:Date; b=cRueQeNIBTk1f15rKHo2rebB2OuA5EoFrosWdum+DfOujAC0BojkbKh/LIoF3qvgapQ/wD212kmp/LfUbxwUVaVlxdXad6Mejxi5IsB7QTld6JnR6dFeARfkGb+s5kCh5OLtuQOa+81vAG+wlgkyb1z77NiTrUNe1V1qnbHv0HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NajLRZ/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NajLRZ/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23C8C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721368553;
	bh=JwjFvvSiHIVPVciIrk9aoyr0A4aWK5j8H/n2ZGoOMKw=;
	h=To:Subject:From:Date:From;
	b=NajLRZ/AVQ/C6/uvYaRed1ZQMEYpm+3pKFVG5GbQ2IzgA0kj8eVKNr2smGCDFy5qs
	 vB8++lUtfWi8KKIDAAdAal0++ornadFH0XYn7E9IvVMejaoRHfDgJukdINR5qNl7T7
	 d75JVAOPV5AbO2K86RehGV2nuKYhhbbGFMxe8UMgSmEz5qabeJflFMjpmweGRq+lKe
	 UtcU1hvx/8xWjfFHwqIbDZKp8+oc46KwxsbTND+2qCIhsf84Oqag1P4Zfs02b+nL1W
	 4F50vBKyTzYH78Dxj2EaPZZMz38qAoetKv/nB0fa/7zPeK1QBsGQ9D3R1T4BhLt4XH
	 Sk09VO4IaqHaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A30C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172136855361.12889.10404180441316224318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6f4247b9f5dc193557198e8fb896b6c66937fe008debfed08e08f677d2c5b12
Date: Fri, 19 Jul 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721368553
