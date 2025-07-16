Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E8C10A1E
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752649794; cv=none; b=HMsxuhO7UugpKW2GvNHa4HXtyi16mVI3/IC2h8EU9UdTqhFE6MyiFiUiTguDkql2XxKnLMzH1kpcK77hFlAXPd2U22Tl2Uk22wmzF5VUjUHTI8DtcEzCLYasvSTOJuJiyNWrS73eA2YaOg1mq2mU9Ox6EiPGsumDOPVuECtslVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752649794; c=relaxed/simple;
	bh=luBG8dIJPhCYy1KgWqzuWVT+l3rz5pLVEcW0h1x8tWA=;
	h=To:Subject:From:Message-Id:Date; b=rTGpjU87x31OA2f175NhoLTk8LUmHB/VopHdx0nKJdSzYlu0sgcDqtmmh/Veey8tsJOjNVtlpF9uJkakvUyfa6JZKzDzNP/5km0yAJStem8ZDbki02JepBFNkLTow84MwWUte+VpEfkG0Ea2rrME2xlfygHawRZQ2RPocmaNS20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYjKE4Zo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYjKE4Zo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FB7C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752649793;
	bh=luBG8dIJPhCYy1KgWqzuWVT+l3rz5pLVEcW0h1x8tWA=;
	h=To:Subject:From:Date:From;
	b=sYjKE4Zous1mMpafAbucH9QLd8e3OLl8svwi7FIA65ZF3MziTXWr7tPFgtP2BjhTR
	 JNQy5jqpi3K4MF1IB4xSz6paaTryHn+utAbi/5qEFMd7Mhm7ySyCyF5IJGIkhfr+3P
	 DXJ0bWc44DLlgdj9Cf70qkc2D0vB03T0miaxwZBfjVi31+ZLaiPBWdAufNNCUQkvu9
	 PwTQ7kQ4zL1aVye78P6sV/F5QXC/kVBBcrmX4+9Sf8gd+irPu8KZeB/ZosBesSTBUB
	 BucnOsDb1mL7WYuSYOpwy5hk+XgK2rLmyOfzfUbIFNceKN6T1f1s174ijjLKizecL6
	 feRoGE2QETqPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F705C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175264979357.16959.17090817148433417336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721ede8f6f753b79320471765203490a5ebf9e1b48b601578ac6f14bdfeb00d5
Date: Wed, 16 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752649793
