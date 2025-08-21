Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E6D393DE2
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755809994; cv=none; b=SS+OXun3LpvW+euTjYf3m/q1u8rkHoGfikGHwMeZyyppyTFTnPsLI1sZkYRF6uYkRgWCK/wMiDwWgqaVAxa39jORfm5ujA8cwCk3rvDjhTr+txPUzd0a5jf9KIcvzBaqeZvKlEgESLm/Fdi9iYfxvgUArscuLC73bOW9daBon+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755809994; c=relaxed/simple;
	bh=5cDRTTBJyYUkq4oAGUEqsU8l3D2h8tTyTgKtu533f18=;
	h=To:Subject:From:Message-Id:Date; b=I1U+tJR2/rLmgcrzZxyrMi5g7CxJPtnzUHHUj8gPFK+9yRIShevvOEwHhXbnwh3LoTYFRF+Y14JHFgMjVBnbS9dYRKtBq4urzVg0H174MQCChntDxdknYmIFfvC3POYy0SYm20d9yccXMlDnN4Kf73Vv9GZFGOynNHzD7YbS4p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g30/2XLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g30/2XLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BDA7C113D0
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755809993;
	bh=5cDRTTBJyYUkq4oAGUEqsU8l3D2h8tTyTgKtu533f18=;
	h=To:Subject:From:Date:From;
	b=g30/2XLXp8PBHX9m5zCQQy/tdQ64oMOAzKjXaXA4Jb0v1oqfK9EJJb4vGvYv8ybTh
	 PJ/WVzMeNEmRau9PwYKoH2wptEyO+4HIPydkuCGDQ408eC70bNXEBi2E5VrL65TYf4
	 vx3pcYaB7Hd0rVkEWFN5BepJQHjhTiV8l0MdP90Xx36P2SNpw2HRIm3DATPS/rZMMi
	 5OGErjLSjJsmJhoxiALNXp65oEYdzX3NpivnP5y6wy0y6HK+A1BUL8mbB8pIZT8Vas
	 Mu1xzIAe9IrzcMu5OPNFRSfTHL/lawZRHJDMASD332xSH1CrBOJ2zOYmmZ+5NrO/t/
	 WhY2hbp92koDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0C7CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175580999357.25926.2583120070748592495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27af36b4c2a0b3ffc70b64750d711a83c9bb47ae5e75db7505cd117e9236e9a6
Date: Thu, 21 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755809993
