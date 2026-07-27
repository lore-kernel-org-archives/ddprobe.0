Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D89318C2C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785114034; cv=none; b=BGElc5g39pVn0zi92bLFTjxTvKUZ1Fr7AGwqqbPZRlFCvKSCinBUd2LazBzqkfurkMJip0i+cbahORyHJoxAKkDCAShOJS6Bfjnhczh2q3dO8p6FX3dzSiJ45OB+/cibyZfJE8b9vwnTKs7ACy1ZFNgHAGBESs8k2S4vlo4Succ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785114034; c=relaxed/simple;
	bh=HAoCuTWFvMs3iZZWfFSfx9A835Lf6IfE42LLbJBijMc=;
	h=To:Subject:From:Message-Id:Date; b=jfswTCMhN5/PTu7uQ2hsa9pVCyr+8xlTuHfGOwyw8iQj/lMQyybUyNIsuawfgMsM4mpGg4CWP8wEiplpeCSKLVs0/LZ5Lu/PWT8DgQGPGJBncCgH8185RFFHAIRDs4pyD2KbgaLffHAx9xmQHhIHZuZs2slo65E++B5Q0JIvrr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuH84NRT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuH84NRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5A1C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785114033;
	bh=HAoCuTWFvMs3iZZWfFSfx9A835Lf6IfE42LLbJBijMc=;
	h=To:Subject:From:Date:From;
	b=kuH84NRT2nQebZgCuttbj3Udoyh9JXTAck8k1dMYu0E9AzqLqIN4lRznQ3JTxSIdQ
	 ialRjjmnWj0FgBw37GaT0lNNrayjRTHzlZX0EXle+mCUoWTZnip16ZdVL5DxBxwRcZ
	 x7UJcx1oxayKpd/6KdfHtGLiEPrsiM4/9hZ4fSY+xni4TFDjvnjfCs9gASbyDPfN4s
	 4yHBs/7NAOafhAMdQqPss4hUM3EQldHVluB9Vt1Xlt3Mn8eGZv0cpQ2YGokn0giym1
	 zcH2hL/FoU76NqvYJdhqkgvvLZBxUrDj6gU8FIx79YmZU8HdPyotLDNkZcLzCE9Kf/
	 RzstvCVtmBv8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87A9C531F9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178511403368.19886.10097021724787296262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23189614d8499408bba8dcf45912c9c1fa69820f129d4de220d7d194f946cc0f
Date: Mon, 27 Jul 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785114033
