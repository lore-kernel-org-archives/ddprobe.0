Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E6228B4FA
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788006034; cv=none; b=OQUk37ssZWWTGCMHtCS7eJXkhWSJZP4vPL+P75WW1d/Kd9X4Rd/TF5M6pcbhqBIeKfGFtA8bpZM4SMnPXMoHMx7Rr2+ekfjEhcoMBlzuzipH0bLchRr6+XKrVTsN3R44Eb6pvHT1zUKtKrC/k0ERun4gVEIP6FDtcgkoWzp8l8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788006034; c=relaxed/simple;
	bh=INJ3kkTsmSyLZVvw35E7vT+G1ibxvxRQjfEV9Q2s3dU=;
	h=To:Subject:From:Message-Id:Date; b=l7wWi+o2jfXsr8zCkKPlG+/8rdId8/2gecAEkBvLKa/d5CXdcOvjefpdwvh4gAM+RhsTqdGAk8AQZlfKjGyo19gDXRwMt5T1+5qiZl+hbmN4UHz2c4KNlYYYuOmCyelgQRIxT77mAMNDXtKN5m9W6MQHSyMAYHVtOF3Sl0oXHOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3GXAbSA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3GXAbSA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DDEC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788006033;
	bh=INJ3kkTsmSyLZVvw35E7vT+G1ibxvxRQjfEV9Q2s3dU=;
	h=To:Subject:From:Date:From;
	b=Q3GXAbSATniatOxY9C2yFIFZI/KhLu8UcZYxiyVzFnGjNnqqsmkt+QPX2vYH6hACM
	 j8zESEviNNxJddMIfMAVw57aI8Ibnqtybi7GEf1LdqqLzMvEPZoZYzf03U/XmVdQNk
	 /v0B/Y/Z/u9/S9fVXTSziffK4VYlvAVtD1aiVd6dP9hba+cI7DHPj/CkJSLFI2mWQD
	 g2+5diqcNQRrX2kyWkJYJdGeu5DFmGVHTvcsuSwwP87tEUWcKEY+ro03twBvE1f4Qf
	 L5mGHe/hYRlghV6dkkkmNBBkUSvQV5IchDBKGlALrNO/OArUh75v5p2a9YLmXLL8Bu
	 mjPMVTRTzOY7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD82FC61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178800603368.5582.2591566540057022650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f91ce98ce75323fde769b4bb8a6b71363acef909d31a6f5c5d4caf5aa85737b
Date: Sat, 29 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788006033
