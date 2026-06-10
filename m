Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242365477E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 01:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781054134; cv=none; b=MzNdbI9WEai1Kk8lmJp+rgREhVVDXtoas7+iYXYhvdFH4md1ADBRo5gcyFp2nrgyT829/SvS4qriYqpU3iCIGI+7G7tlyTUR29BLMy/6eIafPYZi/E04kqtxhR2K6NVLxE4E2ARVpE0sAVpEkzS5jrNhqznkAsgJolXnHeq+ArQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781054134; c=relaxed/simple;
	bh=ZzTw0RRzXe+8TGlytoGsPxKDMev9yLoos5ycfHyjuIA=;
	h=To:Subject:From:Message-Id:Date; b=WFUlnX32FLJ45mp+6HvfitxokcFiaR2n6mt8XJaJvK3NDLkO+Lh8mOiMvv4yJsXTUypvRVR9cRO5tdipB/4b+VycFzqAXhkiMykxahNen6AS2/xAiwvb0Y5IQaGtP8IFgQ5fL9naETTjQg64ZfnPXxTepxfwCKbMpEcC7qx31Ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNNZ2lGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNNZ2lGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D174AC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 01:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781054133;
	bh=ZzTw0RRzXe+8TGlytoGsPxKDMev9yLoos5ycfHyjuIA=;
	h=To:Subject:From:Date:From;
	b=uNNZ2lGCZzs9M6agz3teWiA7EYLY0sNPxTb40WhTHI1xHFB8BmOkhBEOki+ASHluv
	 bT5Chu43kRJUiaf22hpmIilfXe4RXY7DSapSBvft+AS+9JtIBZ93aU8SE3t9lrFmnA
	 8YFbLJp4E59Nf2oGWXVWHXAEHJKadNinemaYC6g20JSIPXmCGfSLtMtj3LKNZvjSfC
	 PQxIy3Oow1i8tzm9YbAlJZRn7Msbi/yiBbHwiQKMJs4/SKcXMJm3JOi7jtInUbcUoW
	 3JAhXyUuTt1QGah3m49fWmFvllmpY48gjWy/+1zlRaKLDctj5r2hQ7oWQH/9GfiJtN
	 2AkqoZKyoDZhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B41CD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 01:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178105413371.8835.14735516555170266035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3aad863f3d0a366dfd5421c2bef8e4b3aae90e1d39c22b93f92d9fefbfd7a78
Date: Wed, 10 Jun 2026 01:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781054133
