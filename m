Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272D02264C4
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757838594; cv=none; b=CBrgh4O4DQfOaJyuoC/hB5cbMIRRnlK0lEb9VEHZsW1O4IAZh8zjeGRL6Hc+BfnUSh/KjVVRExrbluEPFmGdChi5TESgc6avs/YGISHA8PflGqIlaZXE8oGaWmfLABkCQ8aJHwJEzq8/gltlWHljFTQ351Z6FjaKCL0K7o3zyk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757838594; c=relaxed/simple;
	bh=lJnWLIDceJi73aBZW7tLWA2JeMgUvTMaa+tBB8+T0KU=;
	h=To:Subject:From:Message-Id:Date; b=aXMdPr/4p4H5MFl+FqGgkybVz+16l8vMlOkK6hL8n+KlvCy4meK7gfa7hQu2RIqrUzwgYHie7bV8gJpEmGpLUpm7QLw0kFih1ucUjFm9/A1r8I17vSLwoBl2bVPjt2VX33EkoNOooNoAJ21DA1jud4yctsL/Uq8IcTvc91XnsnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4l7qVNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4l7qVNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8804C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757838593;
	bh=lJnWLIDceJi73aBZW7tLWA2JeMgUvTMaa+tBB8+T0KU=;
	h=To:Subject:From:Date:From;
	b=I4l7qVNs1YOjwhqNzqbZHdz4z1vK02TO7UtD8dwAo3whhkw6ksPsanaJF5AoSC+Qp
	 ACNBeSwc95nhcePT0O9VsqoFQ6RpTLn4032lKUqK+0aLo1HLEjutY5KSaP8csHxthv
	 Ctok81ZjLCmkmkXvVnG7lyKGeVxJ9Q8YV7HrUJqdsWMZ9RcL1JDRYAjl98vSNmS0Ns
	 XeEVyTrLTpMC822Ebm9pHCciBW0k4DswQxc7QiMcX4QIQiVg6luNRos1luBiwJ9xKj
	 AOj0SIrxHZ4pfIbdaAopniX2PmiKdtrsL8gvacCSdSQbMSE8cdjPHQJa2yvro4Fhop
	 lME4ITlkrrfIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95401CAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175783859357.32246.13020082810375963746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e9c313b290d0fcce73cdd36a282f8c3756d73731c765d560e9f6b37e89bf4e0
Date: Sun, 14 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757838593
