Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A0D25A647
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738731354; cv=none; b=GOKFiLO5ReWB5Z/zs3DzrhtvcdU1H48JwjQ5XYBIG1cW4/+TnEYlxRGtF6glscDkyOAjn3SOKXzyq8hP1aUilv/wFhy4lIWu5gF7C1KExRa7o4wJRgqdqtAcruN7BIPwQCMckcNvFudtEtRs+ByUNLRtrM4L4Q1JnkLKOEnwwVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738731354; c=relaxed/simple;
	bh=gRPdPqsq+vVu4RcvksfHgWjeBQFo+krCU8lAK37F5KA=;
	h=To:Subject:From:Message-Id:Date; b=M01frULfWLN0zxKv0Kmwl4wOcCfJS7QwIact+GCGh9ZnuJJQqITDKvbRidrrMsRMtcSItolVzc1/ERV018r6jkukBOLuHhvZxKmRHvlSf+2Iuod3jC2YRHI75XMDG7zZ+8Ee5XE1N88FKZZFPmhuDAqeOz8JIilZ2dvz8L0OSLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptnbFwm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptnbFwm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B110FC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738731353;
	bh=gRPdPqsq+vVu4RcvksfHgWjeBQFo+krCU8lAK37F5KA=;
	h=To:Subject:From:Date:From;
	b=ptnbFwm4TYXVNjyvbrw9OpvyvguyntazpKCck8Zd9yE0PAvzW3qD7rao/qjAZFogG
	 DMZTxxIuHvE4niqOismbaYIpTww67UpoSkMfswOrm3M1pXVdPMpHMIUlisB6k1sUkD
	 RKKXXtrVsCNvsrD6osUHwXOyit2Q4KVfNct8GWL/W1PpHBTIO+bgZmwBbOUJnQIJRb
	 /wQ5vyG4aNqvIY/IuNNx+louyAIj2HQXwH6wCWqtK0pP3iiZrjtXpFLfrqN4nAO5tI
	 DiE/RrGEs0HAJDMHGe778eUk/dkviQQjpNKdg5LNM0G+37UmOyxDzdNhHS2c6Lbcva
	 9V1ETa5h4JP9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9478BC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173873135359.2247.17795036189547892438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb0c0d28d8b55464744f7c6b54355e10b07d1a37394839a887a9da2bd17416f
Date: Wed, 05 Feb 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738731353
