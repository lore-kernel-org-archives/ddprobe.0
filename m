Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503CA3B7A0
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 23:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713397163; cv=none; b=TxgmzX6xzLYzOnPnsh7zNV2EUdvpKPpllJzP2HAevx4hCA3Uf90pgZ3s+vgZU30iG0mhpXwUo84p5UKlAltg5RZ1+W5Z6BviNKpRMPGMFUgYGx0UspJKjxLxPeWITCEwYOB4INg9vHQTZnpXiJvREhEuC5MWO6JEuWbHMQ/qci0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713397163; c=relaxed/simple;
	bh=h3lymbuPJRQY6dLT+6fB9rxnfpXxWan8zzN3Oy54DlM=;
	h=To:Subject:From:Message-Id:Date; b=JoBEVNfhSpWP8Gtiz9ope3OjJ93HSuFXi78qQQZxkkk3CXPRSMjc+q7/s10RxSbpP2iDRDcGrJkqnWWerwqEt1e/zzVYDk/YoFwvYzNXi7+aBcmQoDE/pGem0rzvcSfT36/gJwydSrKTF5s1dDyyvLPe+YCbNGrUyq8nBnv60R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXr2tFcC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXr2tFcC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3089C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 23:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713397162;
	bh=h3lymbuPJRQY6dLT+6fB9rxnfpXxWan8zzN3Oy54DlM=;
	h=To:Subject:From:Date:From;
	b=pXr2tFcCIYD6mYHguLUl9UQLf921aMfDkLRpyQLNHwngM/8I8jQjt4aW6vW4hmhHb
	 kySb+XlKbYaHFoE5jW6LkN/XID3lTLmtl5kylWukAZMXuEm1L2p5+K/wkp+MfOFAST
	 cKPynOkaIuyRrKp9ozk3B5Qz8JH3Sefq/CvxTVSDn3L6CiIdGUMxQh36W2dtalEFv4
	 8jI9ZM4cXsg6JdpxKs7OTTHyEGS0h/09L5IiwJIWJW4vqC91oxIcCKRPBPtm6YtEtC
	 OOzNafvOaaqvD6U0eAZC88qDwlCLAIOxS250VU5R6U8PK6ALRwAoqZOq9WrMGRJzQq
	 XD+cChKLmW8Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0623C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 23:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171339716279.10897.11201890403088133761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5829caa525d7bafcff521d2f58b0ae7bac0d26767d103cda6572c92d83aa9801
Date: Wed, 17 Apr 2024 23:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713397162
