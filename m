Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6862D2E888A
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787106634; cv=none; b=P8yjm+pDcb9Pi4lcXQrGYU4P8AverRhySOXmMpzVElhotRxpbDYDGPN3Dbx1TTyHAXc178HFqiJ4SktZ2Yn1FP8MMTcEAcUr8bWgM2e5lgsfXIEnSe9GsbjrKi86w8V4pnjwCgoAevxakZOfXv3mQDCKKyiqjAyDBtOmWUXqo4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787106634; c=relaxed/simple;
	bh=oFLZRIGh1r12QNlyP1PHMzf1LbymmPUpsqYCrYNKxy0=;
	h=To:Subject:From:Message-Id:Date; b=fm33QkFreogxdsWdHem8+OCtj1vQfqqf98XTkzDo+UYciJg91lrn8zdeucoWxI0kgYRaZWctvZ1WH+kHof+FDr9H4kCIiFn/DPYBQQqAz6kwl5UUQutZjThEIYkTSy6yzzVcDvitzKbO/mlG68MCZt3vvu7Btsl/vxBFt08UQQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IobE3hvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IobE3hvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E39ECC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787106633;
	bh=oFLZRIGh1r12QNlyP1PHMzf1LbymmPUpsqYCrYNKxy0=;
	h=To:Subject:From:Date:From;
	b=IobE3hvZSy/1NEuL0mYyWl/e/7bEgHS2D89vVYV5Sa+uIriAUxMz6oVRh2XFhvjGC
	 v59CF/devnFAlhzmjMAnokQiQPT9RdjmpVwji/EXauOWIpFSux0YuZn+HANApBxBdB
	 gDO9pzYvdVIZfHZmEw+SPwUUQhvOXJRLVmQskzws9SWLZgrhpJhApIYexJn82PILwh
	 3zNOk+wrcidfNk55+Gmzoi8h9hbiCTtoyDkoYr2ZM+2nZEEDfo/maAnouN8p+nd2ic
	 7lNEvNioqeXNSr2sSMRRh/qK/V5OR5wdw8UTNG3xwk7dGk5hOrvsLd6rMBolo9xbjB
	 7V7Qa2cxakAGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA4C5C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178710663374.8647.6796618400575521872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eceb53095a4465c55d68ff5f57c581702c10cef95e88871c7b55a2978787a25e
Date: Wed, 19 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787106633
