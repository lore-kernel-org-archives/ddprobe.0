Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1431921255B
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761395394; cv=none; b=FM0g53FQCMqBJLEDQ/OYwkRH24+e1te9FjSN6HLwCCPx/PqumN1d81OCo/R7u5hVU0uecSm9jvGq2Kzq5laCRycxeuSYo7CZi6kd1FQOJv3h2Ia+zhngxVbmIVLIP5d5cwLCenWJNT2dOlYy3Gg2/8FQVz8UU+Y0BzIKlZQH1fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761395394; c=relaxed/simple;
	bh=bu7sp7EUhT4g3O7SArlWGiO1V17sUX5vG2W0eClYwnI=;
	h=To:Subject:From:Message-Id:Date; b=CcOCLcJ9VnqRHTvyuW7BIM8yGXt+EGfdn6TGdp4tECH/IETz026umXtwmhUVrBy6fJ0CU1VGQAcNxsrFdOoEQf2mgIVjXh2jxWYRCWF2qoVR49KYOCKpahbyZym14q0r7v2q4IiCS1hudual9pvA2w41/sr7ZgYVH9HBkXAzzVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7gaPJdz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7gaPJdz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3067C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761395393;
	bh=bu7sp7EUhT4g3O7SArlWGiO1V17sUX5vG2W0eClYwnI=;
	h=To:Subject:From:Date:From;
	b=F7gaPJdzvGweJcX0Rr5I7ugM0hQEA2e0rwTMxojXfdCJG8YHdaXuQ46GRIf0uUkHG
	 l/oJzaT/5RjgOVfHx8Vk+9vgM1Pl27sb2Ow2vSThW9Uho/snOBHFuSxYIz2q1O1svR
	 VGXUhcm48zqNNvPB1qFFS8sxPEGwed7ZlCZhX1clZgqLPUDm/BI6HaJy4qYklKZDAA
	 xkj0lTdorlRj4dMKHA8xJsRcK/zHy3x2d5ofTxKXhXFFQyojU0/GZ6BP7RsoYa+06e
	 kPfkcXTrRQqrFRAakJOIVgEu2vNyhc0mOVt1BmkayJ+65ZgnEiZaqirox4WQRzcjyV
	 tEV9aafcgqR/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916B3CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176139539358.16781.14954271416347619031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9369e0286774f31d4093d7c2dc7655796c090fffa198d2cdffded21d6b806f24
Date: Sat, 25 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761395393
