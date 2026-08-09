Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3E83B635F
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786267234; cv=none; b=qyEjyEl573E4GTtZCJST7hBGM5Cs3GwVkkixp2jKiZV+htFHOnlDZf/ZoWKlnHCMZuuErfzP10NUgFp4za/G/xMcYJOISEeDYdFE65wYw4jMP341zEQrQywKKtG2mPFnd4vr5Ouwmsg93FBDJh0QZMsz/pfxoE9/6d8B/e9fbuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786267234; c=relaxed/simple;
	bh=jDl0wYML31VPGyWPT2hnh5PYkPC1A1UoKVailBYX8Vg=;
	h=To:Subject:From:Message-Id:Date; b=u+jdDyGoXZBRZLX+w4+RN6wZ7ZzV2FIbttEPSkFCujNJsu6BN6OYHijNnWmt2A0uY5UMKZaKaDLHDjlWcEeA50BVmwKmDS5mokuPqjjwxp36FJR4KzlH2KELz0M6vg5gII9DqxESA74huytlsH0G84+JNMZ77Jlex0A0LAzrpv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bC8sJiu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bC8sJiu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD61C2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786267233;
	bh=jDl0wYML31VPGyWPT2hnh5PYkPC1A1UoKVailBYX8Vg=;
	h=To:Subject:From:Date:From;
	b=bC8sJiu3mTX7vxAQ1OAcytCHDmxxTzrqtIQMPook9qcRM83B06yGaOTeoI0YPnD+m
	 tGWbH+/kkD6a9N2nB8DAJp1NuGh1abMUbSYPnFFzGZK2unuXT16PjGyTjqED6w3Ll+
	 pqe3zBUDcKpp7CtcP6R4olILtM/7wZ6Wuv+m3RID4Z0KrLbYPdWle4CxLgZUlA0M+D
	 yor+HbHuJZXf/pp7+B9MjQrPk58XPV63RMqenyHal8F4y6D5d4tHAtgai956r717L7
	 T1IM5394g0yYlkWodYdZ7wEqPiuoORhc7cqz7jmjZ14k/uJc6PrqkeynEhkRPZbcK7
	 7qbBhAC5n6HBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D4EC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178626723368.32254.13200777616296275668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31629507e729b17d11449399c2c190a195430fa0f3b23a0c1659e22e51f68ef8
Date: Sun, 09 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786267233
