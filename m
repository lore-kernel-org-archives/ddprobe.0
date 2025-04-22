Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346131F5402
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745347795; cv=none; b=SoB0O7Gf9fHkGYTQeAANg5edojYRbxa/iuMkRgDPkYYb3cCeH0VD0nIi/0DeXD4xPeY+990EeGoYuY26ePxQS+OVUWKUTxcFIYOI3VZM/eLZO9jgvffYLSlqHFVBHcnAxvv9K4J7Hs7gJNRsKTNE7VmdNhBbDCvhb72T7oH4an0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745347795; c=relaxed/simple;
	bh=zD6CoMAw1V33ujrRzXlZkIMyolbnbWmOQTxIe0MecWk=;
	h=To:Subject:From:Message-Id:Date; b=ToaiqHSq/rWS/RQwbzgks9dDPtJCiW8ZW9oGkEB/I5w2cbIGTWDk/DoxAA7dxEX7AkX6KEq6wb2hvXNcOkg6mOvoq36Sxq4jJKpt9VRh1/YaJ36ynrUKFNs+Lhce/RLRHjcWxVt6UU9eD742YgjMmkqDfupE2sj2fNtwqsj3OJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwLUBYWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwLUBYWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA946C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745347793;
	bh=zD6CoMAw1V33ujrRzXlZkIMyolbnbWmOQTxIe0MecWk=;
	h=To:Subject:From:Date:From;
	b=WwLUBYWpKU8Rsa++MlVKrEGdXspN3ez2nCE/z8PpUmaFND10auCfmqxMjjd5+wJNQ
	 hY4FvKYeWGBy9SdinKpRXQoxZCQ1GNLqg7DpQXY7FXibvdso8H0awgQefUobHWNQpK
	 cdbKrlT7GojpPLrf+4vehRGdGnpiZYXdVE7RxlDs7ubPJsV9tYELe95Iih8Tgw8fMA
	 7dSv81krzDVY9tIAY7OdpNYbk1dZNElJnIl/Ugg2a2/D6n+v/gxdKpDPuKzKPWMDmr
	 jfbuFj+MIgzHMPyN4w1j8EBzBFTbLrXFiHW/FrODnJhn2b5QV7Tw0H5J0inX3JcPEU
	 S4EeP7OEPHj2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A402BC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174534779363.2900.6062016436620970638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31bf5d9ceb1c9720fe7987477cc6cce8577700329c53a2c3fb497b8b85081704
Date: Tue, 22 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745347793
