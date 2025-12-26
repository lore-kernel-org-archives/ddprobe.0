Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFC1B665
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766720634; cv=none; b=JDMA41j5T0XAefiT/gWWtIM0wmyeXgsXi4q1YE87Wi9dQ9kaXmwFK6zBqdlj/O0m+NZXAN1Hv6an/X/RQ57fzjkuvT2U72e3J6DwBqh/RnSQtjAa5I1lLU9fORiQpkfi4H4GJvqZJuSfv3f54mzNoOA3jOR3SBXEXJkWWkTbIuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766720634; c=relaxed/simple;
	bh=X8Nrt6OPFySXSScJxmHJnSQtNjmCUv9uIlWu3uwN9no=;
	h=To:Subject:From:Message-Id:Date; b=Mn7NJPMD2qfCCfX3Iw5xDzgM14FPEHzBnmYKvmFo/LEG1PZCwEAKRrPfdhBNPpbV+QZt6xpN/8KG/ZhJ1gz6qpZpjviCSVyarKEKr52HnW3cnR1UHlPN5yoAVKHgVd5j5Jcgq42vVL5tPA7VGu7zIe63vLUaoX0SBIcKvI1lGfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0krvsNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0krvsNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FF3C113D0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766720633;
	bh=X8Nrt6OPFySXSScJxmHJnSQtNjmCUv9uIlWu3uwN9no=;
	h=To:Subject:From:Date:From;
	b=E0krvsNsWGq6cC9CmqVFp0yw6yeM5PakSfsxopH4R6gaGhC4B9Us75Q+JmXKweUhr
	 N/XRaJaIVTcOXoy1TL5MiA+1zGTtt+8HeFOP6JYEZ9parbvoy2Rqgc0B1yIqzOWva3
	 86gGmvqqgjzqklUiIav+W7arnqXKNEZqFmzOB8IJGEuBWKtEvypmkK0k7KNTzyT10a
	 XJDo0mbFIKh19WCwVA/rUApb1cVZt9HcF++RN/Kqsfhk1eEuLO0vA73JJeBCZJsCCh
	 t0jxQvdYdDIxjG/0l3C8qm93lYSdAmdMLgsz7vMRWcUO44CEqMM2q9zw1Pnyl5xhMw
	 K7Fr8PE/ZjgyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DCEE6B26F
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176672063361.30416.8087447475577087824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a896e8e5d7ab53550ca5c66d00e1f889e0cae7549cbe7f74c98de19b72edfed6
Date: Fri, 26 Dec 2025 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766720633
