Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0FC1338F52
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 19:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764790374; cv=none; b=rYIXa1XtH2+yRJiDXoGUmiCAMyrqYkPXCVuS7cxmcp0PdMeIOxpdnwsKoALmsbtjQa4cc+b3QV9u+8eqQLReVUbz9yIvjJCsclW0E/SCP5YK+3uhM3XQ9u2c4WYzlU/mhOF/suI565xIMvTrHr/+/43vV6PfEJBmxyP7JLJIsU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764790374; c=relaxed/simple;
	bh=WOLQ2qrGCVHjlqDAb880YZT4lZTRYC3eEmj2AQaWEfg=;
	h=To:Subject:From:Message-Id:Date; b=YwPWVwkzbc4WL3In48YKkWBQv4NWNrwfNYzG702TsYpN79kS3FivfbuPk0sBxLsrPO2kxqmav5lteGXdFsFRaQTuGp5F0aCkttnUdYrdnjLkxtBp1brZ94/LlVo4q8W2Ia/6Wjtg921llpI+CFNWQeCNBy+3yuaHNioBeBEaOQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vC5n/mhZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vC5n/mhZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07B8C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764790373;
	bh=WOLQ2qrGCVHjlqDAb880YZT4lZTRYC3eEmj2AQaWEfg=;
	h=To:Subject:From:Date:From;
	b=vC5n/mhZSslEKlSp2GXOSwPuLKHY7SjWKTJjo5aLZvU/DeTZpxNr+GQJgidWqReSt
	 VHFzkUvVDee+UVKcEqPfc3PhP26U/csPuRi0J0YDVOpd1YIq/efWBv63Y2QrvX3tqj
	 tZNpf0uGjg7kOaxN5xh6Wb9RVX7j/LMkxD/ciOFUqEJ2MjSku8L61e1EplBbOTi5El
	 HeNXr/keZvlf/ukmj5TMIhI/wuSJIgfBiCYbocU4b7p1CKHfvXqk4wHpNr+339v4IY
	 MefKZQY6Ed6Caib98vo2/WHYefZ7SS6opn/GgezTSvBNVstyF0pLIRDC5tnVOkSKkd
	 EyhTtoPU9x92w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9129BD1BDD3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176479037358.6127.12248576884144018266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 996af0c3953e6c861edf808562642f7a3b5253a62cb51e097a674054f32c1b62
Date: Wed, 03 Dec 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764790373
