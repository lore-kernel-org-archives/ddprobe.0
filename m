Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FC94D8CE
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767218634; cv=none; b=ckl3jxiAplhv6IFU++78KELXXPiyEXAFVZDkTrSdeFtu11foTIPFg+0OBMmlfBpu+Rsz5svp/xK/EX6M54xfZmOlMNkykkr87FswMCLZmyBmNl3xGc5jCy2KaC3UzSkdgFp4wdr9TUBgzKRJrPlLF3Y6uvhQuJz7K5V6YFEdLyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767218634; c=relaxed/simple;
	bh=IMIlO/5a8oxX8KCnd6QxEOcusSM2GOKtGwNSBI2bcCY=;
	h=To:Subject:From:Message-Id:Date; b=SZ+ZC1iUVvSRSEbs/GEchmt0Ivdr4e8CzyZUB9H+EloptrZb1I+QIfhnfsAaeTA+jobF6ObKzWezZDjTQ+6UDmcsAggT9kD1J3v+CZfVaZuZvDll6tpThJ7EkaEIcBQfBtEzZ1e9ch0v28Ss9H8sWiCLZjvC5W3qfZ5myTvgj6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGSMDs9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGSMDs9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73E6C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767218633;
	bh=IMIlO/5a8oxX8KCnd6QxEOcusSM2GOKtGwNSBI2bcCY=;
	h=To:Subject:From:Date:From;
	b=IGSMDs9T3mBUD+Cmw7TKrvVeGZfZWcMtAMupng3WEPy8BVGCZzm9VlxtcFrUuSb7g
	 R0woOIFL+4r/WEYUvSRqy5XpG+BBlgMflKO0KASDsweJZ4R5KCeA53i7OMJcQJ5qcU
	 kCX1uWXBftve9GoPkZgXddRckF/6Krt4/k1GOHZhbAlRBbEP71JKrYzjSsrYYTEUgi
	 e/T4BTd9KiroxX6Ayqkmox8ZyRi/AUCcZ2AZRQ4mGO61Oo/wLNLMp4TY+sj+PuVPlM
	 PAR/FETS2ru1PKcmjCKXlIp7YMQgN8aAfrkI7sF9DA5GekXAWd75r6C5/0IK1FPJOw
	 xOxqBlvCMtVjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964D5EE57F1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176721863357.18416.10981407053214067926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2547bf362c6ff8fcc5e749f268530c237546ae8865f613cd8727a07a02e5908
Date: Wed, 31 Dec 2025 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767218633
