Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8361DD874
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 12:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740487734; cv=none; b=nnDq1DSxnp65TKICukzT/Rcca5lWkD5Pe48/KcnO3idipHYWaQ+PlFjdboQuEcFklowQPJPbpKp1RQshEfEuHz7jxs6moUmoznwAOBi03d26miGvJ5cu7STESG9/WYNBBRNysMhxgz4IgRULygAKIdMQSakxOdc4uzt3+CVEWMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740487734; c=relaxed/simple;
	bh=ZPrJuz/SUMfmsYOK6I9uN+Qh3DE0UE0Pv1lFR0ZM8b4=;
	h=To:Subject:From:Message-Id:Date; b=lzdLWvUqLP9Ejr8g1+T+g1DhHITMqd5agCYemWVM6CScXjIKi8hr4RUM4ZkqE4pEYRLbj/Rbc13x//P98Z4Abi6HNsdgPSBmFaVp9TAKd4cv/ijsW+X3nVq5VJaApyw2+FhIfYitpe28ElCJfQaMjsDNqO5UffUNNKzrg2V8OGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pghKWlUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pghKWlUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FA4C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 12:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740487733;
	bh=ZPrJuz/SUMfmsYOK6I9uN+Qh3DE0UE0Pv1lFR0ZM8b4=;
	h=To:Subject:From:Date:From;
	b=pghKWlUlCuU7itO6EFZX4pcVmjD6lAyKgMr675is18IMZ7fvkHaQt+kn64Mdkcgpm
	 Y/dJT0pCv9nxEoBV7M0iwR/VdZ2c7QonbsET4BCeRkcSFAueDYsdTVhAE5jtqo2+no
	 4KTgeIXLAQbp15qLYnJ64ld1bHkGOdt1CwevBeRepvo+plt6T6y9ZFvzVi4POq25QY
	 yuTpfWv+Zhc4X7GiKnwRMd++ZZKss3qZdPOHh4KnJQw02A5W8nXfShDDnbHACEbMGq
	 /wO4rMcsOYziRAkWDL76IFKRm8JkKnddPHuP0T39YeRR7jzFTr5KoHUnArCe7TCTZR
	 wFq8qkSJQ6guQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5ABDC021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 12:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174048773362.26704.8808673159694627459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9472cb10c80e1643b3115c3dac294d3c9162a9e1ab5718903196a70e839373e
Date: Tue, 25 Feb 2025 12:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740487733
