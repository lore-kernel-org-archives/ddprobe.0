Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E3F215F42
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788607834; cv=none; b=npJCDnUb4OgSgQOMBAt3ZPQsOYiRj7DuXp6VDLdz6lt7+iOxQndpTTvou6OGC8mYh313YikXmmMutrmX2KtOH7KpwDl76BOtU111nH8AVM6HWfucFrOn83kCkM122pXlKzmmdUwo0p4g7MeV/WHyAbUBeXBYfcmC3AjVQzuIawI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788607834; c=relaxed/simple;
	bh=u2LXU/GxUqSeImQjRTQFT2OiBS54r3DrG3AOhXfy3QM=;
	h=To:Subject:From:Message-Id:Date; b=UCmijnBFRRppZnZWnQJUnIO13PZrSib2HB9G90sjuau4dPCRNR1Tu018xDkebZbjOVNYuB3NyEBVe/M6lFj86bb3bQc1mrRZQOVn7tsyr0wRVn4o19GNFbQaIn7ZevVemhALQy3yktfbB18qKzbzgs5nBhXeUAGbDeiHQNmssDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyHAreHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyHAreHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3394C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788607833;
	bh=u2LXU/GxUqSeImQjRTQFT2OiBS54r3DrG3AOhXfy3QM=;
	h=To:Subject:From:Date:From;
	b=HyHAreHD3ApjpdWgkbarVf2rIlep4aJZA3d1S8R8/AED/GZda0eByN00xV8hgppok
	 pLj+fbzB+fOLASHdl8wbvfoBdunudUEtbFJb+UG7hM6vcCUlYGXcEt1oWMoS9dZZ4B
	 YTo2V8c1VVqzOXFUBN8JlsXyvlt8eZrLc8ZKRQGPNK0PzBkoZG5cb2QLJbS1DUtesT
	 WcYKVBWpDMS1hROPBhlA5vvRsoYVrd05MTCPvbSFbzHyEC2wPm/1j5snAPWg9bEoAW
	 f7KDjjI5Eal+pAKnFFe7quL1hJBpC/B0xZToXhHTnbraRdpHW79gPORZ5FOwLl3/YU
	 sUSI4iAUkChHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D30C624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178860783369.17783.4268862635374078477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba4058fc3505ceec2e0e0b66b1cb5da54cf6b697ae4c4419427a43f5090fcfee
Date: Sat, 05 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788607833
