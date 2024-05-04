Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56059171CC
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 11:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714821143; cv=none; b=eORR9sYNvHSCcSE2f8n1kRl00ms52vbuQiythICfTWVh3VGKLKWkHea0zjHPcNCJKBP8a5mZGpzyOvTFLKaEWCsFFOCKAnfN1QTrOgM3MMVDwO3XjrkKLvmiHOj31T2wGZ70X90XJsAH3ggF/j5VAMpHOvVU/fNbFClpSI4fLA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714821143; c=relaxed/simple;
	bh=2bZwonWaYCL8a/7nR3lIZR2KjJ4Azec5/CV+vyuSix4=;
	h=To:Subject:From:Message-Id:Date; b=KIOmC0gWetl7JKzYPATscJNFyOz4C0yPGCOWHe1pGSUNYDTdnGoTmZXRK+Nt0kuWBU3DUBBV1xPYgMZty2Y9hnRF56Q+d5PElW4lQh1DmnXv9idhw/fQSt5Q0hQkLlphZVQ6crrEivoZ4CLr/w7BHKOE1KBQtyi68MP1xr3/LzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCzCCwJS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PCzCCwJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5BDC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 11:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714821142;
	bh=2bZwonWaYCL8a/7nR3lIZR2KjJ4Azec5/CV+vyuSix4=;
	h=To:Subject:From:Date:From;
	b=PCzCCwJSeRUZAu3YxdjTXj6KOWeY87PBZJOVcFkPRRBlIpmVZ9WTr5uFff4iZy3sZ
	 OmU5hbYTskDpg344umDkDXkqDSjjJC3rkmBf3amvFBUQ7N07dw+/4WBIzGY+z9s+hM
	 qjR4sSBMEHE7hDp0oulLpc7rrFxSa3mOQkdF3EdDmErAeOG8FivEy0miemRJAZU2A1
	 UUwbH7mgbgZKKpzgohgCsDVyPJd9gBLNdCv3YadRGwCW3uPz8s5+wMvzjUieb8YRkj
	 Rks+6PSrzWuSqF8WV3Kf69DwRcTFeQS7uDEuWDVi/Pkz3YgPluMbrTggJUvxX6egQe
	 vuyZCujC65r8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1780C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 11:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171482114276.28110.758178855973472416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2129b64b39bc129bdd3a4daf579739a8f5d2ff2e70be7b26ff9e5a6e96a3f6
Date: Sat, 04 May 2024 11:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714821142
