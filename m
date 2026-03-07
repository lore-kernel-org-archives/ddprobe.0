Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8D0318EC9
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772925294; cv=none; b=bdrn8mSbQyh20oCbuKWP68Ys6X/jb+7RoT9A7mTVTCoVNkmXWjHakFaGg69vYUN/wFuOzkofR/dwyPhBfdgHb9KX3zdcV3wlSfN3tz6ErxNTIzv7QP5HBN4f4TalkIYLvHVujNnrzhStAQWAUJQQp57dFGPSrIhkMAM6KTWgiKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772925294; c=relaxed/simple;
	bh=gRrImY0Ql2Tmd+/YYrQnA2iajxjFBZeFv2mUnl0DdtI=;
	h=To:Subject:From:Message-Id:Date; b=lo8r4UVeuD91Ontbky4FdrkTcPiTqWerqS4R7T9trsV0tfwpDILmLQ+m86gNmCkBh2/ahDcGElfph+o+UC/FkbYk31mlno2n8DlVSNxyIk+Vlb8eBSP0c+iqoRsKPB7V5deMKeuKLJQDoVGRUb8eJfFim1KYMH4c6zfx7W+8iuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mrf+TxRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mrf+TxRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D02C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772925293;
	bh=gRrImY0Ql2Tmd+/YYrQnA2iajxjFBZeFv2mUnl0DdtI=;
	h=To:Subject:From:Date:From;
	b=Mrf+TxRlWwyXpCWc1OrZTmdjkd4bNXhCoO9IlumWr/QdugEUxU8fTmtAiN2z9QWeB
	 vudjYtsA3Ew6+SdB3T/EYJZZF4cf6DltWV8xcKwZPVqgbvqAv2ARA72OOyNMrCAAxi
	 sk+yhzSPhYbbr3JwRmFqF8xXAovm+1Hy8w4kcadnH+CVUGVuwZ7dLoMS9QIn3eNiew
	 pOxA+O8MgeQqumm42RIqD7n0cSPBcq24prcgkhR+MYB8269zRVZN57MxiBzCOuF+Tc
	 oeI2Lh/kTPc/QUozxGXGfS6Pp9RjL+ycRS4q6gosul7CQgS2YHfYdFAmjhdgedcyPZ
	 +Wscnx+RQxcCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DA7F55121
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177292529358.20567.4613522888189537250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb7f56126a97877538da5d79ce177cb1b3d16a37aa1845e7281d0472f69f31ed
Date: Sat, 07 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772925293
