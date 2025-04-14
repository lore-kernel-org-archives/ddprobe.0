Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0167E9
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744609794; cv=none; b=QeBc0/UtD+dB7FotjtD1Y3ToKigptpq7C7UONiCHZtIzsgXvSUVFHKymx2PS6BcpcsQJ1oioARoXuvkz+2Zp1kqHlRnu55wC5Pw6XSF/8vX7yJrPFk1Qn3Fmxqdqfc7iPj+su69jNHGn/9vbdLlTCOwuHnRfhZMm4qGWPB6dcfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744609794; c=relaxed/simple;
	bh=SSKQl3HYfe2nHPXU52Ax2z3CXhqLSY1BUyFntUB8J5g=;
	h=To:Subject:From:Message-Id:Date; b=I4/xXHjNyPn008q1T83+UP3R3MGQ/J7l3IZldXqRCLA59C46f3YmP7zu2Bd+cEs48REFUgoaIRo+U1bNOKwv20LCWjjZHqduvP6TyA2Opl0ZCubCUTGdo3bA155RaSw+m/FM2zVPQP0EDm+YSdpDhTphy1X3PN9dSswkeIMTGjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgtC3bxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgtC3bxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD242C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744609793;
	bh=SSKQl3HYfe2nHPXU52Ax2z3CXhqLSY1BUyFntUB8J5g=;
	h=To:Subject:From:Date:From;
	b=EgtC3bxe3yWKanfSm6HGn9qr/CTZ6JLpdE0Btl0Wkx/Pozh2Edj5bGqayBIgLkcc3
	 HWcgqXLUNnIT0SjjFP/p1uBtGk73C1hc1mYY4YS3LGaKvXZLVd8nIJdyMMJ4IBmM5h
	 yK4boL4fyaEqv4WXFb4AFMAa3R1MruMauhxPvtIXL82ln+XDaXjqiEOfDCmRLJ5aNG
	 Ze/AzhIGBpoCm5wJ4biq+lLHsM9CYN1lGxNH97kV6dgEK6C5mrj65lVe8AzRefeT8a
	 HPTG3lgGepEJ+sopGj90LNJc9tRr4RReY56ERvHRvm+ydhyKw3xeJnKgZbOlnNiw5z
	 GGGbkFeQ80OtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BD5C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174460979361.29672.7081087576284703595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a36eff1e3b9d78f7f538e5e40d9c41b7611b9e070652eb5248f2524e5d6e77ce
Date: Mon, 14 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744609793
