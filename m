Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205262F2D
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759549795; cv=none; b=dhGk1TUZfXJZZnVrgKycCtBgPyGp4e8mMEz4ZnxLRYwsiBYiIpVB89fqPWqa26k4P5tBHZFTvnvSylEpGovBgNz49CJCamhwxG/jsSU4fjpPbm9WtOcCyKTmeMQMLaXIEbJ0fztEhfPKjPcQ6roRSXzjVrNl8Kv9k+em2UKK79M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759549795; c=relaxed/simple;
	bh=Gt7AL7wWDd4DRkuRJmP4hc+xeiUdbiKgf/gxheL+L00=;
	h=To:Subject:From:Message-Id:Date; b=uqG23XEIpvbYd326L1Gj5ZIKHuPEk/sq1MRXTeXMtaVJIJ+hnUXEEEtrqbVjsDRFQGF42IIRCKCIADyxssb48D7/onWiYPbcfcikblVs78LKqgLYBYUG8XMXqzyIxzg6UjZ11zy/rHTPHheYOk0kPukELQNFPyy31HAPF79r5Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqVR7R8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqVR7R8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A52C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759549793;
	bh=Gt7AL7wWDd4DRkuRJmP4hc+xeiUdbiKgf/gxheL+L00=;
	h=To:Subject:From:Date:From;
	b=dqVR7R8OeYDaw+y78+AvFl1MF6SKI6urj+pvQ40CgGnyp+7wsp0oEGGpApmM/Jmjl
	 ci9OBS5Xt15/PCljEC7yfgo5xGWL2XULO7ezZ+cDxFkFkgl9+xh4AHIQ1rSyITROQk
	 X+wwqHYfyxevNbf0+yQ/vtewnL9TkkW3geqiQ9vnchtZv0bNuGqOZ/TXGCWHN+88QZ
	 /6TOx/vvwGHI4r3L8L2iDFivwSFigDs3DM60pY2PW5mYvnbf0xxNmiEI8SOELC9Dr4
	 90CF2TX1GsHP7kp79SObg9VT3AwYQ0jmFhoa00B3X27TrXDQQYgWE3pcFUP6ilnYJm
	 ZBNW2OGeLf7rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929EBCAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175954979357.29634.5010068993077309719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01296b84a37aba5aca454a777ec2d1ae81033566f6ad06bb1695623c9bf68f7
Date: Sat, 04 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759549793
