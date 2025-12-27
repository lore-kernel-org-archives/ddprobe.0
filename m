Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A70C1EA7F4
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766876034; cv=none; b=VfKARl53lOStoep/hkuddfdmJ1ygtkGS2DemyB7NZwkKcNcFxyTcxfiP1VagPk9+vdkM3vPALigmdtUD+D0cQ7EJ/B9cYBgvCVdd4sGyt/aWInKpBmUZX8BlDDPuGte2LBZCqezD059TzIOQz3ILcLTS37eYUd2KNNY2CNj8KBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766876034; c=relaxed/simple;
	bh=1jfNnYk2/nqh2KqTpVxTLHnurZDgLzjWzH/SaLa4FgA=;
	h=To:Subject:From:Message-Id:Date; b=bOSB1jOQEMBmH3gLAwr+OWpInXbzV0J5YCsU/Kcs7mQtpSLjq6gWUmKP3EvSxL6i6NqRr6O3S7t0c48ayBPQtKeXnEWuiNbDqkm1PCpu2tJSXt1ewiGSatPrUH0vaWTb3WIAECkM/rVbPLo57nB2a64aXWy00s5SEy1qyFZzdq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ashvlknc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ashvlknc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EB7C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766876033;
	bh=1jfNnYk2/nqh2KqTpVxTLHnurZDgLzjWzH/SaLa4FgA=;
	h=To:Subject:From:Date:From;
	b=AshvlkncKQ2DoP+k//r1b8bCRcf2mh1SUX91e2ifkAyQi6v47CBYWKaKtcn7BLlaO
	 7gHTSUyVL1RpbSENpUJxAnjkdwXDyQRn3fWAjHyLYVSvc0h2vM4G72LzwhfhuLPVSo
	 CZU/HoWhmyr9Iglb/4fWcegdRZEbm3zC3Rmp7BJ51Co5lW1uo06MiXFCzIFMPcLwi6
	 UVULBBT35n5Xp4FURnQiERG3H7EtgNmt8LkSQSY1yy3sH5/IuX/1kZO78gilHSYk7F
	 uqtnOpvfUX0po1MQYgD4rpN6h3SgKcCsg88c7s4U3UBKR7HqGg9PJx9Xh/4yo0n7tN
	 shpJBbHqGPH4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A199E9271F
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176687603360.29311.4290922671905396040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ac57db502a3e094f5d730443559b9edc89932881b34ce9756b65674dd880ef
Date: Sat, 27 Dec 2025 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766876033
