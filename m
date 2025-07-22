Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220222E9739
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753187394; cv=none; b=uqhFkDOB8kQFvyUhLizGbuGa3efQme+ge7fgUg59vrFoXCTYoGsgXEacxUcZXMgYVF3l6unMUN1X9nn8ozABIa5l7BgGo7YTKJ5pbDL7MQFki3eyY35rdyItpShvnSGBZqPvFam0YsiWZYlgVBJ5Fa44uwKbubqkZsd9HEZpDh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753187394; c=relaxed/simple;
	bh=pG4gcyj1a9hihHJEIrlZQ9hO0SFETTL/0huOA4rC1EI=;
	h=To:Subject:From:Message-Id:Date; b=DtebhhP1abOV1niI95WKcU1it/iM/OC+u5dbBpU0pgJ1+ngwzsLGyfWe/RHmvA9lFLng+ansicJP3g0fLaVbqzkgKQbR3JHLeY1GHa8vxWDe25gAj0gaHWyr75yZmqyvbfTbzoaCkGinPBlFkd49BzU/DLw8PqMo5ytwBEeKaA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=be+bhBKq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="be+bhBKq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38D5C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753187393;
	bh=pG4gcyj1a9hihHJEIrlZQ9hO0SFETTL/0huOA4rC1EI=;
	h=To:Subject:From:Date:From;
	b=be+bhBKqWeG/DhciCTGHEHwEe4cQL1KeYpmskTffLHJCN8+OZbgFLTh5s1GwEKOJ0
	 CvZ1sOGDscIXrBp+y8iVvQlO91jvAvNHha7KMHS0Uh+Ps3V7zmbYVLpr6mbqfvQko1
	 rUdFSm9sCYUUgfJI/nY7kComDCVExqb008XbU+hPHA1hSft80wS5ZYr4MJpHZHF68A
	 5gH5DEp361oOQ9V6ZWjWpJrxCtxDm6QpaekA+2AHg7C4SIeqjrZz5fCRDunbweED8U
	 /d1/f4qK1iv7qNXQPo3XGZonIFSHxA7WYciMRv5U9PHXDlEhlT42XSP7Gsv/pVL+TN
	 nHrrHYLeGAtJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90954C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175318739358.9107.2564199483625741968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a6b68c403e08ffabd186bebae8dee54b0ad3240f3998a1b9d3a944a22121091
Date: Tue, 22 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753187393
