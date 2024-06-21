Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676E923A6
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 05:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718946143; cv=none; b=o8Frhf6mgEzUny/AbH9S4ONY+uTXwvoFVpmvJjAEk6NSK23Wnj4CN3zbNIFkEqv6urdX7oePahDEo/aiturEptabOJZjVgu3wDdW61JOPKTfr10sesW1Q432npuGydWZv83CNF3KwltisOyBK3R6hrQ8ZCVIO5T+qlXbE4Gu51U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718946143; c=relaxed/simple;
	bh=ZEfpjBbnZjl5t2Qgr6iQFaQ/bYgZXFEoFFRzu4D1WnQ=;
	h=To:Subject:From:Message-Id:Date; b=LnFPkjzlLltp9BzEH5pDAnefe5MH/iQ2bq4/nk9pT88a+eDlAcuI1J+iWX2j1Y923lPxVKNrTrkeLcMPnhFM/v4xDbrRobbv9nvU9njvUyAVhGsKAp+D998CBOMb1YPpPJoJOJQTXIzRPrNimv5sEiUdAtPsacgzYYZXqoYwHso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M13eOWue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M13eOWue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E931FC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 05:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718946142;
	bh=ZEfpjBbnZjl5t2Qgr6iQFaQ/bYgZXFEoFFRzu4D1WnQ=;
	h=To:Subject:From:Date:From;
	b=M13eOWuenEHKaggd5HusGiplDnVjYgeKGc4FWVYkTMPWd0pB2DJUeEcJmShm17j4z
	 c8JBlcvAALxoZ6Ezaf2gNX82s/GTihbbY4WW4/gnoMKeNOjOSY97fNmQM+35gEL2Jf
	 RSopzrFEIXPV1KRouyNO7hwoYI2oEz464B/g6jH9uJzDwNvWq2KG3ccQxkQQQmOAqU
	 HSsBIGPny0oKcEYr1ZmYmIKG49bhSiVvCa9Kmn9pF4YLdpXRMpIv9VNT8j2azT7VXY
	 Ktnw7JwpU1Eh5kg7RBPdmtz9eCzucBOI0XsFFXQ2NFUAoP3X7i7twFL2NboMvWybOZ
	 KyF1H3wg9cDqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD092C2BA1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 05:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171894614278.2110.3902795689586919857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3bd199c6a79bb998f36e1a458110d56791d975ad5f1700c6f5ec9315fc6112a
Date: Fri, 21 Jun 2024 05:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718946142
