Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A36212C7FB
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725563154; cv=none; b=lgiqnVyM5VNA6rcwH4Sm7dXa20g7zgA5449REDeLoG2TVVB+hY2ZXTIy8XrgEzsELiEK7EaYu7MFEQecOVQNnMbcZS7lKVSWedg5oLLT+/pVNlL+CpLHkm2yFwnUhltOzx5Y8/Tpv/a6os2mdJtcAuFIg0BarooH6Gdp6HSH4F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725563154; c=relaxed/simple;
	bh=+c7vnKGnZ4p8jIEghDsiS9z+oimc1qMiwMzXx9z6rVo=;
	h=To:Subject:From:Message-Id:Date; b=M3Uwya72thdiSniKHhrMgpHmWWeI+qquAdwPLO4ifU3gQk2m/+LOismBLhEHCVmC9VyB2/RL6zRjiO/q8cR/WelGCt3QREBOmHL2K9O3zI7bFIanmqEePkVvLTWEjqDJHz7Q7heYZuStClfYUhX40K2anGeiPtBpSXC61Sz3Lc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCo6AEKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCo6AEKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A475EC4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725563153;
	bh=+c7vnKGnZ4p8jIEghDsiS9z+oimc1qMiwMzXx9z6rVo=;
	h=To:Subject:From:Date:From;
	b=UCo6AEKlPJP/HShNYKnGgRUSfVNXE79UJW5EPbP9MkNRfv7Vw0js6Q+LhngtZdag/
	 ugMDWToDTWia25c/X0HYlc82JWshCmflU/zXPO4j9zfDVbAGRBPLkjjJ9aRzGdrdek
	 e45GJ3GOnFwZMp10ZGXTrlKsrB+L4KQCVDyDFO9TlKkeLLS9ulS98xDfe0b0fQJAyd
	 Nxmssl8kn21x4jM3+runPZFG1WGjeFI4hHyUebWoLHVRaif/d0F1E0DlEGACBFw56L
	 XYkJN8ZUsD3vguO2ixdhMPMDZ2x5TIGNCC0ORgRUwPv5fgaSG3k4lY2X6xwNh6Kioo
	 OGAl3skeIAVYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BEFCE7A81
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172556315360.26834.8057508716204164059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c88ed201c2ebf3db3d0eb1144d61ec306099ada51a48cec48b48808ae061071f
Date: Thu, 05 Sep 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725563153
