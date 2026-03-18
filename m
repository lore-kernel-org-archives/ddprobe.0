Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028ED3D668F
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773837294; cv=none; b=VMFZKo6Cb1dfGUhcvG2zaT+itXK8Z6nDR8GOZ+tdF1VNTzUN6pIAJCST3vbL4z825TgoqEQV6eVqX6iufIump1lFqEs90gruX8L8AUt1/3ihdrluFnjTKxX3AAclaUMjXtL9IqClJILVfpupl+KPTrLVNym7CQ2CC1OAmSbP4+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773837294; c=relaxed/simple;
	bh=YcNMv+zi2Wg14UCxz46aoNnSruoxd37EyRfzIQtBey8=;
	h=To:Subject:From:Message-Id:Date; b=Exn+IyUEjfAS7x+E2FW/5V0X9ydzjprZtIM0stytasMIVIYD2d8LBpj3pTWfcvF4bmsWhpv/ETAWGxSVpMpkv5CR1DiRVV48Yf4XwlDN8kLWA6HT+dsOo4PmBTtyL7JBoIdkIwBuZELU4594MD+wXO54s2mcGTe8w/i4FZrqHuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPoEO6kc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPoEO6kc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98DB3C19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773837293;
	bh=YcNMv+zi2Wg14UCxz46aoNnSruoxd37EyRfzIQtBey8=;
	h=To:Subject:From:Date:From;
	b=ZPoEO6kcVDu1B52QD3gyhsKQRhTGS87HKAkV1lSCA3TQcy4CgG1NWuP7tH5WBQRuu
	 aPKiEkcykhuggq3fthTyaCVPwh2QkNzlopWo1Rg36vQGHs+2FitRg3VUFeCZW2ULjV
	 5ocyifMI4ddmaYdncp0cytTG4MivkDP+jnzNLdedBi8sI6OgcUgBX1+sBGD/2ccwEk
	 1pZ/s7Cr1Xd/RnOMbY9+dOS8rbOm2fHAT/2+SDF/GJbOEVqJDQpsdPoMu7J/hPa0gJ
	 jU7qFjzbniQtLazOl2G4d3EtRYsm+9mSfXx6e44D4ebq4omrl3l+6dkrtr/zOHN5R2
	 FBrH5oFfzJE+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED73103E168
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177383729357.18693.4504551747471757575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae4e253c037922c9af7500b3338cccb91b35e85d4f62e65e19ed8762f6d96a38
Date: Wed, 18 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773837293
