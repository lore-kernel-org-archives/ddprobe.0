Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911927E101
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 06:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717136663; cv=none; b=dNxZZ8AJtmro1r7wATbwd1Bsg/DDSv1M6iXSIgJTxxQ7SGRaC7sa2p4MI47q29qo4ToLKXvl80/pdxt+sWVUzDEhwJM4lDpSgV51htvUIQ3vI54+OVYLPBfSoGczrigtUIr/CIBL/5ltaCeQvjcx9UKsMKdUMsJx6a1jG6qGkSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717136663; c=relaxed/simple;
	bh=9BfIINxL0KU8Q6S8OyFQy2BhTzQbNk/7UFwa8eERskM=;
	h=To:Subject:From:Message-Id:Date; b=FuoHbfAwYe1J/LqPG+k0/3OkxnQFkawyXrxuB8n47HZocpvjqP9AnlPIAN42fThJ1MbOBMWKFME8sphHeh18ibGDN5JbpFGITT4BrM9ECTaCO3zrp8+rA1RKULDDxhzxhj+wCXkgafVhLmkZ6W/crwNxFEhhGAbWDN0x1nVCqkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsnSEQ+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsnSEQ+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11589C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 06:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717136663;
	bh=9BfIINxL0KU8Q6S8OyFQy2BhTzQbNk/7UFwa8eERskM=;
	h=To:Subject:From:Date:From;
	b=CsnSEQ+p0lhKH3CXwF2XemqU40a8xHBb4oTZCA5nGg33+AbQOG4M1A/OAZxXMF8A1
	 WQVIoYxV2zNd+2KMGIelehSSxoqlofSOMWwyXoBV+x8JCeGPjDFnjPt6nOb/9+LLTh
	 LUr88uXNVV6841x1uucYfb1xaPQNETuLUPRazv9mHIHSeJJeCLj8kxmcH/oIXKIcBO
	 QouztQo8UOjILfimchQ9belAutaubHhrK/b1W35o8oM2biYJy+BbSwC9qrFhCBRD2E
	 REoYok1G562Hp8xGc7PNfk6Dqc7w287OQfnBaoascWICYKorrzn8KNx+Xy5C+i5362
	 cmdzJ5N4jLfLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC1F4C27C44
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 06:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171713666286.17810.17389948132400322359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c713df7c7afa54a4015b01ed295428818052d29aeb8213b53f77e2ebcb6d621f
Date: Fri, 31 May 2024 06:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717136662
