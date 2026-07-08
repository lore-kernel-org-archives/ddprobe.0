Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2612533EAED
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 13:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783517914; cv=none; b=tPef5eC1wGEgm0Pcz6iFPzffWFRErzWAXxhBmPgxekEWIXcB6dQU9GS4SZ/H2SjtEvInCof1Q3uEGCMbsd3hEGTFCDVqBwhnWoyZDgxvzP5lI+Yzj0V1nLqe8uc4fyWwIU/JlOmRgAQ4tgd1CYBEr1W28wmEuB1kXo9ztGfpg5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783517914; c=relaxed/simple;
	bh=D6YuxQYz5MXB4deI2rGPN+QHMB5R2zKIyB9r8jUChJM=;
	h=To:Subject:From:Message-Id:Date; b=qVQYTFB8EYbpOazek6TYwOuwYJpTTPadAfevdzth9s9LflrMf7KutX//CTMyuXqKG1/llApmj1rEnbFLNaF7m4810VsL/N4fkjsiTNy62+lm+hp3qlS47/UusA+yxGAnU9eBjyBGpPICsJEO1C8+drNIlPtOihfphACMLau3VE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYjNY8bw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYjNY8bw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3BEC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783517913;
	bh=D6YuxQYz5MXB4deI2rGPN+QHMB5R2zKIyB9r8jUChJM=;
	h=To:Subject:From:Date:From;
	b=AYjNY8bw7O+u5Kp2GmsL6knpoAJ7ttXjD7PhyN43lz15t59sZisV1auKLFdvJIOuw
	 6m6ESKL0ZvKMWOXrVr+SEM9SulRY0Tl76+GXC62ejlvrMoqtxh/XVqoz03B0qu28iV
	 tQIDvoMvEU5sHNWun90i5Qpbf7keVIUKqBdZ+osoBz6JT3RxPdGxsNXoCBoFNEjc4j
	 Q2WBqPKvd40hGmfKblgTpOu9hdgmK7WK8zKBADAT46cgR+S/tSQhz20UvQoNAV1il0
	 dTSLRnIa1iGwXF4T+ogoVI3NgHcdaD75fzBccgXUlSGoLsDlbc4FhDC+GcssvPrvp8
	 mhyWV3xr+mnPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A835FC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178351791368.7386.14149505628900080452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f9f25f4f45b809ebd4d9ed3cdeb7ac5816798c6498c0ab7c2b1a01cc9d2b65
Date: Wed, 08 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783517913
