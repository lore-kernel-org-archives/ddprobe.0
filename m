Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D89125A640
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759350594; cv=none; b=S3rFWwganXiUxUMYb8Qiu0W1spkboOQGbSs905OSdzGvSbyrwo6GluUnZjnOeEM/dTV/M7EHCwMThcAg3H/Wf23HjvjyV30TqSw1R2CMBhTXnpyEcTwCQS7LRi2sxYPsUX4IoOay2Avfmp1ZweuJIWljrXXvxoKtYKePwUnO5eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759350594; c=relaxed/simple;
	bh=CXwEWeRX+By9MmoOl0dnWViYmk/gyLsCxVU4cxGC0ao=;
	h=To:Subject:From:Message-Id:Date; b=UYxvQ9LQisWE+Rh0JdbnqPvMy3nWXKKVwmDCyFUTLdzq/tsqNd5c43/kiix0tizLgObDEdDXdzgxFNnLxPOTMTmHMKYaU6ZO9ANaGnzQMwS5sTDp+MmdKsA8R8qzsuQIEdaz2bMFUJTIACVGihlGkMUw81GpRFauj92Iu3CasJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJDTHWSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJDTHWSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2243C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759350593;
	bh=CXwEWeRX+By9MmoOl0dnWViYmk/gyLsCxVU4cxGC0ao=;
	h=To:Subject:From:Date:From;
	b=lJDTHWSVPlM7O4Ugdrdl8xqnewKbs8tHV++yKTQ8cff+b50SNHiRZlXXDw7g4J2Xz
	 aQJ5Xtx4yLFjXkNGqgl/EgfR0jum82Os7cv3QAiGpnbvfYzwiSBSZ0FZgCIGsuTtWO
	 450lKncmG44G19RczSPVGA0RyR1fvLOa4SY9pQmLLDsEKJOHBzY+azPpxTBEwuBxBW
	 Tl9hHz+X9hRHq7qw9uzvfxEEUarD9c3Qs5Fr+Np0nvfR2CmQKsXNBLVPpRA8rnQ04V
	 vkVzDL9fSedIEHGFBnj6eu/aUtunlnMP348+AAlfqecECQOUb3Jq36kAEj9zKaHmWc
	 gkUiyajW4WLDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED06CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175935059357.7857.13260875877061000641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e2026ed2efcbef1db57a60640f938f7155abfa5a7e98ffe57df58eb18abecb
Date: Wed, 01 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759350593
