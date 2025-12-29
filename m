Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DE42749D2
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767032634; cv=none; b=DagmFAzALSqKrTFGL+cRK0WFZrI3uQs5X8+12ABPvE3M5ZVNneOgxIHtKi+pVMvSA3aO1drQu6RrCVSm0yrU3Rbe4G/p4gxrrT0fOm/SlEzBv1047PTf92Q0U3w2h94p0uJn6P9WqpZDTmKF6lOhG4Vx/VRKl7iwicgntcIrVHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767032634; c=relaxed/simple;
	bh=zFIXdewhfyZtVxM/lErHt9SOQ2TJ296A2ikQl82PBQY=;
	h=To:Subject:From:Message-Id:Date; b=BpfshFyYQ70ONDvJ3KJHup/K1tq9I9IOYtNiEJGR1c0i6buvxO0bx6XULU8dfHN0UI29jE8FrxPcxnNVU8cLaeSQY90hjbUYbqpOmTRqYxGxFAOftVpYATX/mWvbDHP/Ypizb3TYi0N1Ctn2G47vcKKvrjq7M33tKXDWS7V9ICE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c72FOfBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c72FOfBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A557BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767032633;
	bh=zFIXdewhfyZtVxM/lErHt9SOQ2TJ296A2ikQl82PBQY=;
	h=To:Subject:From:Date:From;
	b=c72FOfBsZ1TQghcHTdtFeueRPFskPyJP8HLz1CE5fsb0ED2+y6c+/Y/SJ1xeFNxNS
	 Ynknqt2rktYHRySmSEgMuwXRQwYno8Z3IwFTROu3hqgziXdEwctp/SA8D5mS2V9W7x
	 h8Hi6on4x4EZNAW/2W+e5CGNv4u6Eu97zvsyUj+uo0CNC1mx0z+0MxVVh9ltqTL87B
	 PkROc2yUK6KfZYjK7k+yYYpNuITPS6e9rOur7kzRSqcV0w/AVsHDsw2Y9HPIyr/PGv
	 nC7oJyhpjXwlyr0hx+Q69OmEVUCulN7iBoY2kr51b3s0mDkAdTagG4pfpvjZYAR6TP
	 h/LA1Di8BX6Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9579CE92FCE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176703263358.1575.15069991757828871883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51de11e9664e3e49a28f87e601fbcb6ae6c01c306b61403acb4f2b34b09e6417
Date: Mon, 29 Dec 2025 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767032633
