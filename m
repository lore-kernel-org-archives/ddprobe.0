Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADCF1D95A3
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766877234; cv=none; b=D0UJ1PxAt4ANC/I79A90Ec8hnR1pnwZihenQQEm/2WAiy6ANccKnV6xssPwlxoi5s8QDq+TzdtZJMmKu6NFVSKYyWZoHkYNxkFTy6mr1N415USV9R5mD4WqONrG5Z0UyF8akHnxWZUWZphn/82FH/0rxSrMM4+Fpyp1wyCeFFio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766877234; c=relaxed/simple;
	bh=hphY2aAiV1beZQ9KYJvAcp8VTXnZRSw62vZY6h3Je9I=;
	h=To:Subject:From:Message-Id:Date; b=rkvBFNLeFBLtf9ShDa1p/Xt/suhm0FqG088S7I9/y4s4Vmf7ibkHodHVradHE/96eCY/cY6hOPlryO+/8cTMPqgbnFl9a5NO/w9wFAFkoNlDYhB9splU6JM1K4IhesM3hKwhutjmXz9jlDyj/ZYTkjqDKmg9C3gwj+Cy6dVYAqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XR9woRIv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XR9woRIv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA22C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766877233;
	bh=hphY2aAiV1beZQ9KYJvAcp8VTXnZRSw62vZY6h3Je9I=;
	h=To:Subject:From:Date:From;
	b=XR9woRIvydORt5hBINMfrvczhs2RIBwvWE/rc8Y2mzjPqd53IsRorT0hAq/w79fdA
	 m3Vywm9FkLfPeasYeK7F5z4oTyOt07BvJ1HeAd3kdx5BgK9A8Q95GnSTBKzct5r1G6
	 OCj4kSKJKI3Xp5t+Rel19LK4yWkeYoF1lYGdK0FbjcyK45gg57IwSQ/iv/3dtgOc3D
	 jnvzmK2B+8zZoU+P+RRsnnt+kZpGlBweTk+hDXmeEJ34v0R4J9J/jcjDLiPBNuRGPS
	 tFjFHMV4m2etWL0nbrLaIugtQY/bLQ2g/b6kuUnARRyuo2/18dC1RuMzP50a2Wuweq
	 6FRXv9Y1i/xGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99879E92720
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176687723359.4975.11121614383105159390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce931e9521957b68ed66c30a2b1354f2e42474cf95d489405b83f0a4e579bd31
Date: Sat, 27 Dec 2025 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766877233
