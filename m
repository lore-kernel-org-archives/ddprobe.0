Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FE937B3F2
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786348234; cv=none; b=p11YVEfUCCjxhYhBaEUfyO+14eHm0YZvScqBwxpkZFTC2im0flMTNhzTXChUTC6K3LeJhPl+TAgVl3VZTieXdzFanNokgSiF3pYBdoUvO8iS3UW03yYO1p9iD5LRRyyRNk4BEJo/Lcw2KgBQjcXadhOxTUPZjTUS9+VFX7Yh4a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786348234; c=relaxed/simple;
	bh=vnZ3HyRs1quFOX0QTMUYSA9MrX+EFyUbnT/IzZ/7Wp8=;
	h=To:Subject:From:Message-Id:Date; b=NVl5WL9im4jwC7cM/udjP/GKH8ZNzwMADW5tYpEQFQabflhPK/YgGYPEy4oVRYRsGKTgneKv4LrlNyI/Q3Fh52xx/yGCxSKHIw6/FO44dtklFoOGuAeFTy4uCtlX4HIhcFrnOGYnzQu9EyH5TGBGgrFIkaVPPDHMRplns/jz0k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+JVVSdO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+JVVSdO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE92DC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786348233;
	bh=vnZ3HyRs1quFOX0QTMUYSA9MrX+EFyUbnT/IzZ/7Wp8=;
	h=To:Subject:From:Date:From;
	b=L+JVVSdOSU29to04IFi4dvWC9FKCemPoTi8bXZWM/4TFtvawaVlH3dxpWviSL4ApJ
	 k3gcByq0kZrDq43UY5c+McJOcBRRaVonH8UIR5wdC6uMayysPSaOtpq+2augPXZ6GS
	 Fc2XH0f00VR8x3i0HEoLHWZoin5S9nZrG8AoP8OErrIuW1Nms1ZDLlqM38LviFg8gC
	 bzj8ItaST787Wi98KjM38bB5uB1FxXe/jkBlGjbfbV7FikAQAO0wXRcFTcRyAmxwwM
	 NdNUijDacsVnBjjFJ2v27rKqIBslmJjNgYwL3TLHku8L5IBB0U7WKM9D3xRBJvKx5z
	 /h2Y0Idlj70pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9882C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178634823371.13680.13044740317307547424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f07c21333645c3263c1b27317adf8e54b13f5d3776678b6154c9c98656de5b15
Date: Mon, 10 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786348233
