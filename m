Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B12F84D29
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727283954; cv=none; b=Qk63/JzfNbFdzeJVppKnw7JXNMwQAv4zIgRd65rtM5i/OxQObrKMa3f10BdvtLo9XdOVaDbUAPL2OFTXI9U45iBtHRhuuZ/cYA5A+K5cfrh8iVYr/hBUvHV1YFZP+RqOyULC/yiGFHOFsiK/xAWqc+YffrHQ4uVtLavqRbGSYvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727283954; c=relaxed/simple;
	bh=fZrfhPJa763jDWSTNf1Ocq2UCcy0Buhfrvfo0ML4dPU=;
	h=To:Subject:From:Message-Id:Date; b=nMSB+rtOEr55QPBNIs2sYjY23S/G2mWNKfzM81YIS77ilDmDGZSBDj0qwaqg4WOhD2Hzf2/if8J7v3DPKmR68ErxmiKIgGIznXrKZpX4aEwYOEDb9SVpcKMo81FdujNi3q4vTxVwVI5e9uYcY/aQ6LPtRhM+jCsSVjEqzOaQzx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZ1me+Es; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZ1me+Es"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F453C4CEC9
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727283953;
	bh=fZrfhPJa763jDWSTNf1Ocq2UCcy0Buhfrvfo0ML4dPU=;
	h=To:Subject:From:Date:From;
	b=jZ1me+EsIpTWrtw8rPr/J6MBDN2ygSuCBW+0gaEAfu0Hu1xcAnKpBOEI2cC6dARcj
	 kTpXkz4bgvwyr0PR8dMaNKyQtQ2Y/QoVPdLD+8/jtlw4Qz1s+LjM0eW5zPXNZmVobv
	 AfGtDlXslv8ZAcgUImViPY/BeyDUAEgk0nw0ChIhNSFCePEIA+1H/NkhP2mdxk1hm8
	 uxVJqa8sEEdEMWS/Fqrrce0q2285Pdjw4uaAHVW3aIWTj7DSINIPukw4ByyTVUwPGu
	 jj6US3MqOMINWuiDX8VLkCa8xVPdRv0GwGGw7WgA4XBZUhVy/EphPk+/npKDOIuIUC
	 7fO5RP2dbWZOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908D6CCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172728395358.30373.12473593182296969928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a2f1cc070272be172975a11038d5ea2a18b08e4d7f8816f0358d17dc716712
Date: Wed, 25 Sep 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727283953
