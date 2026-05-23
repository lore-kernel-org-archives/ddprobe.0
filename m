Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124FC3A543E
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 14:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779546154; cv=none; b=kQDy5Ytts4xfbhH8LO8C8LHj092dZYGF63uTjX/IGeiYXgts/2oA6/9XflQ/4b/Ypt8LYhMG1w1hS6cUW5eXocEpJPxngsqds9ElltF2P+ILdhCYoPWHsMZpKdlJyRE3ZjC3yWfDSnObbqRJMmoYR53q+JJjkboIMyY+V+XVS7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779546154; c=relaxed/simple;
	bh=fEcYQdv+AzzNU4vUj05+HPfocKCqh58Hj1WKjrtRJas=;
	h=To:Subject:From:Message-Id:Date; b=BFKSQyfXyy9lOMZlf/rgiWn03zetEv7ZZ4tkeCtp2fDW+2pQd4p0Z8oR1CJ90lBpsm72pKhqhCQNRlyZ04YGFeZgOlKUNZB0tCuaazig9w3hsUjT5tP4WfnVDJa2I2RrTc6dEDpARJWKRrfOjULCVayfnPLDbZSv5a8dUe0EcPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WoeOtmmN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WoeOtmmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5279C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 14:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779546153;
	bh=fEcYQdv+AzzNU4vUj05+HPfocKCqh58Hj1WKjrtRJas=;
	h=To:Subject:From:Date:From;
	b=WoeOtmmNAlcbQPQ7fyitLukpULkm2/UoXR3tfTywXyfEFZ5qIsT7bYd/qEmfNsSgF
	 z7MOSFheF2TYOCq0u6Bx6lVaJpx7dBDBESwtXONneSN1rVn+8QFXMdcLqe+ebua8oM
	 V72SK28/HmYWcKh8vD3TTbNM+PYlULRWZPnd+YN5o0n0E81Fnkdn3vW/x8UEJKGDzo
	 Iz/5RKOd5H/g638MxaM5BpJXXAhB0pKPI585dew98FHX45Kxg6K5LgaN9cR7bG8GWv
	 kVyaoqSkrEdXXiRlQXrSl7as0Le4/4hylrJOsbFB83SHgv2rqnapQuvLJb9yoIS1m5
	 gGc3lQ11crNCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD52CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 14:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177954615368.7489.11605051563476887993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75de81c83aa0db3c54aa5826ec759841fcb59100ecca55dc93cdde0aad8c868d
Date: Sat, 23 May 2026 14:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779546153
