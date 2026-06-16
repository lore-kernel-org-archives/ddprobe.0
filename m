Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C17538D014
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 02:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781575594; cv=none; b=eHxpuaQoydZ5Ob3TPCj1xfs0PF+LFaLSDxFHJoaW6fN8PkoOlC0QFpu9W8W7nBaAe/eMjwP5xgpNf7+rHWJVlPbEqmvK+zk18yVmHqxsBlo0Fhi5KV7AFX/vpLXoy/nBeoz0PpSu/rOot6iqOVtms/HRb++bFcsAxGfCMe5gRZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781575594; c=relaxed/simple;
	bh=eXCTeTnJuepqZGvMtNMDG2HsNGYbT6H/J7OnRwM6ycE=;
	h=To:Subject:From:Message-Id:Date; b=qjwb7rQCjssBsFteucc1ZOfteGOIIeOkCKchaGfRvrDTGmwHM2qKRuIfHBbsU6vR9XXgSjy2hxT3n21K1I8P47FK5tTmiXvCqMWfbX0ushXXCGFOl37UV8tkMJdtxiecMY3rOpDPA1ArusxZm6TiaNXLBK0RARK8aMFFZYpy8Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKpw7set; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKpw7set"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC717C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 02:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781575593;
	bh=eXCTeTnJuepqZGvMtNMDG2HsNGYbT6H/J7OnRwM6ycE=;
	h=To:Subject:From:Date:From;
	b=KKpw7setgqBOdvGp6lD+EFseqeiGY1fy3Q0Ykix3QK5Crji/weUwlXlas2+NCeM2P
	 V39/+eF79dBh/YqeIh4qcAshKKZs5eYhhs0ByMbUc9IoWY6LQ6aJAQfvsHHBt3a2Vz
	 qyLSfZJwRPCMqa9JJ3NqeVMjgOKBTO10X8Q854gsNO8Rt2L3Eor4hG/ecNw52PX7v7
	 7NcsGJDP6JDvLJxKDpVUO299UQI1w/voYlfTzxkAL8h3eybI99ywHSNDAxkJhwaPDr
	 U3gh0vjn1+aYIsX1sYv0TC6X63TBPpKhrU+8YNmns7rQmvBYsJ+gHwZaFLdeiRcdJo
	 yr2ZE6DKrP4tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A8FCD98DE
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 02:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178157559371.17244.14025434261716545680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1930c633d778ac1fb716a23f6bf65dc985364f1fe3fb0d980e98b80d6a02875
Date: Tue, 16 Jun 2026 02:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781575593
