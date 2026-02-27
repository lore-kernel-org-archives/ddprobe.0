Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C13D1C69D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772150694; cv=none; b=FuWCVN2Y3kpTNsL8nEdnlt7I+d2v3ShsA8mpLsNc7lonkZRyFGNSYsQKCmDaszVNlmBTYK2EDFMevMUsDo5pVv+1pUvTMDI5xK9Mx4bPA2IC9Lw/6sB37NN5YcrPWknRGIwtE1wtDxkNdTmpZMkCaqENLDEwQIO+V3W8msid0HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772150694; c=relaxed/simple;
	bh=FChqbio7cutKz0vHkNzKRU/4LF9RTqs2+7pzr9SxH3I=;
	h=To:Subject:From:Message-Id:Date; b=KiSdX0NVfiMAn8RVRqu+W6nEBR8PmMwj8ELnYDN6XTp7OWmXNTxH6gzP37JrLqVDW8uXUsQBQxM25FK/2ezmUAlXvUy8La73N3pl+yM0gtNz66k1i25Z0onaOEGcaGiu4WsUbNsbCkuaiokfgq2TWbn5q56t3uJ7kM2f8/+8Ex8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xt8ivQN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xt8ivQN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16D4C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772150693;
	bh=FChqbio7cutKz0vHkNzKRU/4LF9RTqs2+7pzr9SxH3I=;
	h=To:Subject:From:Date:From;
	b=Xt8ivQN2iaDCZIAG0a0a8fDRqLHCv4tC86qDtrsBl5vH1Ng91MMvpX81qS8Qlg3/x
	 CFKRaRcxznLKu5FTAYGg2wAltgmLrA/HbHTWfFluFP6YOMpUb5sqDezKw9yE/g8a8b
	 ZOWsREXtieRqTWNcq7VJVv3iMqCBJduwlsMqnprO5FZpBOJ0XZJMzufkm+WrRcpKNG
	 Bg+lmidvsBGQBDMoBR07aTMuyQQA7yrTAilFoaAgnFDr/xGBqOQEcWqWxmfZr15I+/
	 qBJd/DRFbtJVXTTZH+oPPBZ/m+LwPQo/U9NK/XTDJkJTJuI6exr4bNj+qaIJ04Wfcw
	 KQGGVKPuEvXug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92006FD9E26
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177215069358.1087.16689037972364953352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b863c7f5d534cad3a87db89e8f0116f5da31c08f49a396cda53a1c4ee30bb25
Date: Fri, 27 Feb 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772150693
