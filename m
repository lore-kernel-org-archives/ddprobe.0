Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224D318CBFE
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732695954; cv=none; b=uzUTN7CJJ84DmFluYEGxDCIMSMcfpSHtAOKjcYiZSr+nS4RlCv8cjgyzEnwtwlHgheHZlZyB4yRu78hREu5b89dwHcBShvtjnBhiABLTZezoCkIDIEgktFZXftpW9IudyFj3+8SIJR+kueUbXOu3y2B69keq0b0mXblylSgn2mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732695954; c=relaxed/simple;
	bh=1pGlcrDino7mn6CUn3nsHbDHF6rZSz123b5zxEr9w9c=;
	h=To:Subject:From:Message-Id:Date; b=tfsUNVAuTtzSGkHkRg72ppyxlfVvXCrSRHXUgBnQ1wEo53CoXGhvTFWtwmDX9Ewo0yk2Ur9jr7r4QKA0J594vhX6AxulzWTPQgQEcMA9wE9Nq1XN4SS4hFAKRWFBK944Cd0aVlLoGOoW7vuyoJetzw2j9PVYj1HZP55tCsXIqG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtfMvBas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtfMvBas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2355C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732695953;
	bh=1pGlcrDino7mn6CUn3nsHbDHF6rZSz123b5zxEr9w9c=;
	h=To:Subject:From:Date:From;
	b=MtfMvBasMahTOkNGiSTTp/dyKcVpvemfxMVFGc79jpsbLPnw259ht9HDQ+azG73sh
	 8FAIpxiOlsgc8OeBsG4Qu1E3Dht3oWlLTtUvkJAikKqfSXtn5hxYIT3FJ0GIoJ78Ys
	 +27BtmxpJPJNgOlB4ZiShIIhHkyrkl0iTrvC2+O3iP/ebgzE7IEq6Ho239y8geTPut
	 XCf2IQEOaYcAWyr5Qq8XIiBROtvfG2b40RoVz/QSo7fjQHAIuIxKZ5y6abM6CKe2yf
	 g/pqIOZRzrGRhTdZON6OjphToD130dowW6wex36hqKt5LEQ+Ssot8qkqvyzfaCeolX
	 qgiIBb5LKW6Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9178DD609AE
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173269595358.303.12593075769191868011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c6ac4d1a4c72d3fc93dfb7a1e9ce865e6d8f249556afe52b1178c8715e1dccf
Date: Wed, 27 Nov 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732695953
