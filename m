Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BDDE567
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743797394; cv=none; b=odtFfowjQpvyFCo5iWZa8fvIBkchXmH5INdtEnwmHvuyJDvgiS5GLgssMZMi4J1aDk4ucCgfa6fLCghbyMtiKJ3fwHoHBMRuFA87y1f4nXJQji+tzPuaosvSNIr+mlMJ55JEjovX3wy0nlhAd0Sga9FKTuk379B020a1UKc/rxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743797394; c=relaxed/simple;
	bh=rZTgQkqT3kTa6OGWId2izxtiOcndWC/LYhTdplU3dI8=;
	h=To:Subject:From:Message-Id:Date; b=pWmSyLP3dXXbeGaNojaEfyAT3AqcQyK9t2u1+Jdzd88cBa4dkf/ww4fYzsDu35OXGxXRZ2D8s2+/U45Pm5DwO7H6oA/c12YnBjfdB2OrdYx7RWQox51DAKmCtbmvp/BKlOSNXEn6Ax/k3iKFEL+atg5qSHKXkUA4949l8RE5fBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7qIgglh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7qIgglh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B134EC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743797393;
	bh=rZTgQkqT3kTa6OGWId2izxtiOcndWC/LYhTdplU3dI8=;
	h=To:Subject:From:Date:From;
	b=i7qIgglh29Wlry/3JdrDzbt9HtU7HkY3r+iNdhAvMS4zmyVXfDB/qgdtGJ7w/7c7L
	 cqUiEfcXiTp4WQ0vlhBRDwL9+RM8IPMaWwcdi5674HrRWY+vGlrQztf/E6o+K01ERD
	 RFoZIqt57BBm2UJp76Qbw71Ioj+TihJtcdS/dDpSk3a6b3W5cospWS5X244XBKYr7F
	 5valp5++vU0l3scLeIH958km47kO+TGIfP95Vjj/ok5fwVhGfpLFHq/Gqc6bhKsWLz
	 fkr8M9eNiE+B6oyR2gyNiDUQ4FJazKOEVxHzvk3YpDcMTNYinDfcaL2dgLv4L/LiEY
	 7cLKg2rB7UnTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC1EC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174379739362.18752.16211206517632089473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c67641ca7af7a57c9fa3645d0ad79610e63e52a119d8aff0f9ca6c5afa4bc0
Date: Fri, 04 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743797393
