Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DB51EF1F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706187497; cv=none; b=o9+7TuMB9HTN2SQefca/L9r5UoXOVsPRTZbu24BPuPRTJ7K+dXizEu3vwdYEJ6G13tldfvEsoCYazRnY9yMCWbRlNPg5s9cP7b3kfJVOjPKgM1CftCsGRgtAM2UMzjnZmpM2VNe2Vl80EfVnbRD2aITBxn8jwUJgNLPdX/M1geg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706187497; c=relaxed/simple;
	bh=qb97Ea9YehanCurClqdMw1qjM2M02GqH5EoEjRKXBH4=;
	h=To:Subject:From:Message-Id:Date; b=Ck08uMnYLNzhAmBuuCxNMV5X26DaBJXxXlE9+hZKURlUI8zFrHdwvuheSkledPIq8KPWtlWVm5XkvQXFhG6vN6QL2o43W3kv61e1mX1wHxORwU7f2QhUJdakgtVnBWl+uO9f2krbnTJX6IQSYW5JP+wkD/mjbWHWqY4U3fKX6XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fClR97H8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fClR97H8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 840E3C43390
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706187496;
	bh=qb97Ea9YehanCurClqdMw1qjM2M02GqH5EoEjRKXBH4=;
	h=To:Subject:From:Date:From;
	b=fClR97H8/BesoRH5D2zIq8yz4BKeAFWcySEoT8n4/mfZBcSnKm2PZTXSRffMqbweH
	 tfws1ipQEf4MvN96v9aJMMV8ovqwuV9U2ROd7maIZus7LJLKVQmTFSWLXxJir+zezQ
	 vKG/nv3qmky+v1dMShrLnOy5fsHrv8e0qOkt0a9bHKy25A/sCMDRLNk41zeK+1Zm9f
	 ZlPYwtNopLV2LNQcMN9hA2q0M9JJ8ZNSiIyf1N2k27aSWfvXVKoT/mPKdn8AgLQDmT
	 ucT0v1O0l3sh3iMqPEbSkkcbzNfUpnYbFsRWvAWnDAt4T9zFzTUx049D5QX/CYSExX
	 eOQj6LNvR2Drg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 638EFC47258
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170618749639.14838.5106298038622197864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca2479430f40c51983dcdde5700079dc7b81db2a5994be219751a55bb1863a2e
Date: Thu, 25 Jan 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706187496
