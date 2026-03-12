Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF11A2868A9
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773275094; cv=none; b=G0FPx27qofNcC3IAb3hoqGSnTeczD5oGrUusikOoEaDFyMGYPM4Uba0Yduadc67SahwyK5nwo9n3spzO0DJB9WRw7F6dfAvasw2c5vYJWAE2DAPu1di37XcJs5fvUyeaDts3ScPfLHrTGfGzr9wpL51WnJJUvvbibHjYuQWQqfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773275094; c=relaxed/simple;
	bh=G9pLJJG7z+pD5KBBp0JlTA2RrZf74Avs2/RCTQ61tvg=;
	h=To:Subject:From:Message-Id:Date; b=o7dkyjLwycsRbUDZwTUxNZswqB52BBrYjgtCrTHlJAy7VwPqzupWBTPK8IZtgm0im/ECfmon7068hQQP1j3O0we14f6p6mFUKLR7/YoAWfsSgZ+F+3ft4c/g7w+aI/r3cedh8D+QXv/u0c/ImCJxj+woe9AOJvcXaoDjFmRwZRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ykf1UIfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ykf1UIfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A96C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773275093;
	bh=G9pLJJG7z+pD5KBBp0JlTA2RrZf74Avs2/RCTQ61tvg=;
	h=To:Subject:From:Date:From;
	b=Ykf1UIfV1akRVulTuSqnFN1592J94dezijsQaYKMD3ADLvYA3Ub0f8/DUHLhmtrAx
	 ZEUMQ3ES1FR5d9T6BwlPo9kVkQi3WmI1RiCp1g751tTpfNZ4+bAf6LKww3faUMO+Za
	 hX3DibQOVhiMNefAl55Os8b/ThKDeUCxJ0v8FbPHKIy2EFaZrnKiCF8owUg2MRMd52
	 QXmbdTUsSMdA8u668x9N4iSuLAROaj08J7r9GTGFhYDTLnJQtmqI3thr71OnUjTNtv
	 +f4Z7JvIl1AmhVwJt5hgq50Is+wnoq1Bz57xushGsP6SAjlfc4YAwI8m0rQunL8R2r
	 RDO2gIAIF45NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D9103E2F7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177327509358.2600.17445682426699758464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af978545e20223a6fcdb38644a8c05767fb429e0dd7c03ef403f00bc2b1861a0
Date: Thu, 12 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773275093
