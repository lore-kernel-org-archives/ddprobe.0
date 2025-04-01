Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515441EA7C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743506994; cv=none; b=TMN6RTN9HBa82AlfilzhmaWxVGwbWAuqLlDsmsWk+tOJViEj2w8vihpO0gv8eFrsgnVU33+kLtS+iE8xyPe5mwFdUHsHVUqzyhSgDC9h6EMGokBrORPG/SzcRlbRO9LRA2XbgxFyFENixW+YWUUGXrDby4gY/L5QK/nmgZAGyKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743506994; c=relaxed/simple;
	bh=2dceyVtY6qLMP9drqMofOfobN4l6RAykiSUm3bT1zHA=;
	h=To:Subject:From:Message-Id:Date; b=eLWj2MFZrPDn5Op2BI2tY67amxiJDnsengZGiXHkPQRQ69yKw+mwXSCr2RRiDLWDo75DYSReyrquBHok/3jztgrZwltdlby0/Re3OGktsjsKPMwZMUgr7lHmyJkq8apWXW0v4uQfN9EKlniwsJIRP3qFDUF8rYLfZcSi0m6uGjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myj3iwAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myj3iwAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21F1C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743506993;
	bh=2dceyVtY6qLMP9drqMofOfobN4l6RAykiSUm3bT1zHA=;
	h=To:Subject:From:Date:From;
	b=myj3iwAi4SFarBnh1K89NmtucvGaLLMr0Jeb3T7KTtTcwiVgjcUbeQSbYBBv4N0Iv
	 ycWhTkUnvwBsehM/CRt5x9Btar1dYqEWd9Vvd5Wn0xs6OyMG2s07+qy4YH91Zj3fe0
	 JoiJIPjy2Qwlk4b7aQ3b+b+8gDk/AQLo0GajO9FDrg+8K3D12LnWHnVF/j1nrjU7Ey
	 pUg/dT5ihWLioTci2Jbv0e58g6uzMzfGcegbnX4LEHkBvB5MCUNrf6mIw0Durc1C53
	 5dkW5HX5DtNbmah5ju9ToCplTZV5D4UJbRU9fnqgP+5vELtL2aVGJnzU8cuHZqo2YK
	 uZW2oF3RRSMnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF806C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174350699367.22729.8437506193065803147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a292502d591ea4a906c242088f3e2951a9f3ef290a4ad1be72c42dcdf5c014
Date: Tue, 01 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743506993
