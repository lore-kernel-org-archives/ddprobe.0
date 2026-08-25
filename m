Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3383890E5
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787691634; cv=none; b=IYSEYWoh6tTDDWdVEeYNd51tcZeKVHCUQsEAGwO57ot9EjR9NASykQ+r5NmC1j5ELt99TpFOHq95D3fRpIZZFiBYVvzOCjqAhQtelMSC4/D9EvXuCBPxheb/RtLnOIGC3N3pviO+Q7LmZbckPD3CCuX23fqN3z8qtXAojs3durM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787691634; c=relaxed/simple;
	bh=QK8i5kiipSn/GVJFQQ+2vQ6kU4TuLV67fXhJ8hlzLRs=;
	h=To:Subject:From:Message-Id:Date; b=gEH/KjWWjpCfliV5didG8fmQfFwswGFnCePgY5J4l/vXSwBMfFy/1NNxAXyGrTYRih1gB5vw0br4rUPuRRJYMOSkMTJBXYfpo1h28s+TX7gf9wdNvrR12XrIiBfOZiNXFlS5N2TPOEWxL8ilpW89BbxclAXh8Tjm323NB3xSvCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKhcKDqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKhcKDqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE067C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787691633;
	bh=QK8i5kiipSn/GVJFQQ+2vQ6kU4TuLV67fXhJ8hlzLRs=;
	h=To:Subject:From:Date:From;
	b=cKhcKDqVt0UsIQ8MLRp6EVtVF/VyW4awksvCPsNYaIdxdrmV14bBuu7RpyvRjMbjl
	 cemCtw74LT3v3zDCR56yK1htfj8cKQ4md/M3u6vQZgRY5wBWbN25+7Xd2KR+Yw6Buv
	 A80AiXAvcOcqg1KYHGQyzxp+SAobtRyWHj5tFnodG6Dbv890IGrVl9c/uOkqMY1NOS
	 vEtUiBLbdz57BLUmJ9iaojyIjfIXrthac2u1udtTWgZFZFIMx7iPV6qACBQ+LAEyk6
	 RK6Hqe99Xt6DwKaPUq44y+8MBB5rFB67WdWWPyA7y/aiYmLAsguffiFYyJPfv6HsJQ
	 4hMrFF2Zi92eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3DBC61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178769163369.19097.4389770323173652568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a3d317d2ddfea1e099a6e234e4178b27a9e2d0d570c0d93e6d44c1f9f90cb5
Date: Tue, 25 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787691633
