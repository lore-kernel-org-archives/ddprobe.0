Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08061361DD7
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 15:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763479314; cv=none; b=LsCaw+lL7cJlUxDmFXcF/XTriTFbQRFb9P5Y4t3/C5zhNPmwX2od6RQ0mi0rYbopvnvXT5BSHkO8EPbuZ4JYfQn7jVCEgP9xDkrDz9oFzhkbGzsbMljsBxmb1PNcYwysTp402K8x71DBpfQCVmrFtMDnwTtaaDwTGpg+B+ZErKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763479314; c=relaxed/simple;
	bh=P2nBahwzCVUY+kMMzQ5suq7BSgbHz0R9hDT00cWwCSA=;
	h=To:Subject:From:Message-Id:Date; b=n6MKnkh0b3hBDFuFJRIts0nzJ0Kca6EYnzMsgI3bHB2QaHrFX2Hml8kaoNd1aUimGhKQ8PrZW4kVg+BLI6z+ZGq7TqXkiLJf4zVH6LsKI6f+UY73y15ZzOho0rSe8LxWXYhPLNHhG+V4l5hnNl1cPm1H3/E/TBbyX4WKGrpDzPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIMTx+sW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIMTx+sW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FAAC2BCB2
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 15:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763479313;
	bh=P2nBahwzCVUY+kMMzQ5suq7BSgbHz0R9hDT00cWwCSA=;
	h=To:Subject:From:Date:From;
	b=mIMTx+sWfbL5gXyt510CKhk1x4HKhb78O23nLX5dwmnYNjDxtHcUJijfflhjjweaf
	 HAdB4abRKXS4qn6kBLWpsmH2QPnNPgfcvje9dDAjpDHfv17uUEF4b35ewgT719GLyM
	 T6nzCHuRjUsNs5VRxaCYkYCaIqvZJ1q8rznmClrWwE/JNRa9VSZeSuGr0+KkB9wq9s
	 KC1mqnRwRS2AnKl51xyXIdXFaSghtuCrQC5xL/Jq8ID+BJp34mKjrYDubSzAsbfcRJ
	 bC+Go6FC96owvwGKTRV0k5IVVtr+6eb6aAqBT+5wpxNH+iWj2AS8tQUfHSc9MjGJUm
	 DyjFLBKbaFJAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B1BCEBF97
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 15:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176347931358.1420.1575719512311186547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95a813f5a579306461555bcafea5d57741f74decba4ccd797cb68646090c1d7c
Date: Tue, 18 Nov 2025 15:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763479313
