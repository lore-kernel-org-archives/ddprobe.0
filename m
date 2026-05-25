Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7B8249E5
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 01:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779672154; cv=none; b=mXPNGA45ZS7clGKIoHH8s8hwMic3cj1j3O+xVq+snc7mh3GO/GZ9hi6zzrZowLqxy0+Um8LFDRkWh3M1IrfXNBcz9iiWbsvB6JFD1tElEby+dw6frbZQXPxEkM/nPJBxAnLrVlxXIrwyURGBUwA4fPSkDMTOYDtRNFHWYzIjQQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779672154; c=relaxed/simple;
	bh=uxeJso/u6HVW90HfbzUfUNJNsvNle7EmGVLJmiEppxw=;
	h=To:Subject:From:Message-Id:Date; b=XK3irqYFNWALzn7ZhNhCA0TyvBmvOjaWTD55bdEW8ZtOcaBM/CHEQ24p1D0G4WuOCyyrkhvwio6IrwfkNpQreivnaz6xvjEJSHuEVucuYZffOATpbv1JLomjvuPOw/CD0wYAMzlj6HKwPNGfXSDOHFLiy7lUmSdQzqAbLQCf4DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUPxowhb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUPxowhb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41F0C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 01:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779672153;
	bh=uxeJso/u6HVW90HfbzUfUNJNsvNle7EmGVLJmiEppxw=;
	h=To:Subject:From:Date:From;
	b=PUPxowhbDEs3AiPZJCeD7DRJPXz7570ucQE+w0Ece9pV+/mPXdu/jn9i5vdCmwE7b
	 ksmzreXp1EpZH7VAn7sVC9tpjhMLh2esgGnNam6Jf5Y81so2QX65t6qobnKcSOo6Jr
	 GQPTR8avnF9ia/IuRb6duFpGkvjSwnerYc0aRkMDkHHEFcpw19QBrA1OCYDrp/3O4S
	 Viw3PF/s6CD5ykO3Lzw5gbVNzW3OTu79C6blCvTWSPIITl0sff2rJ1Ksb6K86yPQ2F
	 alrno9rFrNghxHgTR1VDcjq3EEjyOtY6gNcqqX7WOY+XbxfBQo3bPFEzk/luqOL/cs
	 8dzlp14VzIM/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8052CD5BAB
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 01:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177967215368.22751.14940760462232207086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14853a5e46b0d3f2f0b86c630a15282c4c615d2fa960583b16846dbe46731d8e
Date: Mon, 25 May 2026 01:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779672153
