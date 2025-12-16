Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F9231A06F
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 05:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765864376; cv=none; b=NpZCga3H925E0/8DMyE8RobUqS86fI5Lg2VaT24n7C1pBy9Z1GTUrOslb9q8p3xeARGAy2uGGU4TrXpo2aTIdpgeo3paFUSTC+wuDPKYwmXPL14IWgeSe42MUSaDrJmWP8UGdv+1kk4W9YEoenv8QuJwHODtaElkWVxEuVquISc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765864376; c=relaxed/simple;
	bh=kDNzRJ1be3eMIB6ZWZwH+rk+aC1KsltBVasf0HmweG0=;
	h=To:Subject:From:Message-Id:Date; b=ZHjfzjAHc4XqCg5+vwkiswerFopUVh8YtioKf3Yd1udoSV7SFxcYBBcPJ+rVhV4ZOE30cqqmT04AY2W3TiqQ5vq6F810KlYlTgYmpaxSWCigPDYLtVmo2eQoVIOMyjn7llieLc7Fptd7PtKPRh9wmfDXfaS1Sx7Fx8Kma8uMnIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOj7+bMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOj7+bMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7853C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765864373;
	bh=kDNzRJ1be3eMIB6ZWZwH+rk+aC1KsltBVasf0HmweG0=;
	h=To:Subject:From:Date:From;
	b=IOj7+bMUFPkyJmeHQDkMJFXvdPZCtBkf0HRcD6d+G8jDG0+DiM4b96Lb23XKTTAmR
	 zzr/N1VNdIPhzCyz7MEV42obc9HlZls36FSQGLu5Pu22cYODkhDy3NLaA44VZnAt46
	 MsKG5HbeM/KREIWVqhu/ZbplOtPeafs1Pgfq8KNrWi6t1owlIVwPvv8eWfKe3wHe/V
	 qhCRKfpWF+SGzSPrcElOYAfpf8A7l/EQUsddtAOqykfhShyX+E9cGS4dzs2RYgEUAZ
	 Dl2vySOrTND69Qz/YjAKEVgo9rXi60GmImtM1GyDfIACPwDVAeZsCb7rG4TN6YLDWa
	 Cx/btcDSBmHGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C7DD5B161
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176586437361.26040.14862113148827610602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 541bfacdb1b8528190b534720129e8e63a03cc51041ebcb906bfee3f3a9a8d43
Date: Tue, 16 Dec 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765864373
