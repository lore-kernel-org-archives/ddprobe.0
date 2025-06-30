Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D185227
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751311194; cv=none; b=PKEoubdojDez7lyZKejLNkkHn1mba5LOBCrdyJgfD3b4JyJHa37F4YY23thtPp9HiBF/U2bbXgKgDs7385fTSgBG6NRV/yiJ9YG3ywShDmDShWUjgt/+Dcq0KULrKze3TKJ9KhmJoPntUMed1Yv9Ur7fOU5kMqINzU/c/pJP1Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751311194; c=relaxed/simple;
	bh=3pFiBEh+SOZWpCGaRVIr95MfUXkhj/3LLH+vqZV5xtM=;
	h=To:Subject:From:Message-Id:Date; b=RYQtg2CIBE3WJDBveDgKSLhn3Cxvm/jHrREC8bf8An9C44Zg98SJztw8uIg2teTtws7lADs0rFkF6oErDDm4XK6H8ypkdLOd7hCbgQDBVyU/q9mPhJMSWVa4EUUodqwRuFKe/Botnu16Am/cM3lPNII67f3AWNaNuDgnb6er0iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s89vG307; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s89vG307"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29D4C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751311193;
	bh=3pFiBEh+SOZWpCGaRVIr95MfUXkhj/3LLH+vqZV5xtM=;
	h=To:Subject:From:Date:From;
	b=s89vG307TnNQebKVZTYwt878dZnG5mrpLD/esnlo5k2YED6aDL5ER3auiyYyFgcP+
	 I1Mm0/xlF0QLlJCf66p4Oi0fk8xy5mvQATScbckPWsUUFzrzuyhhcpAkA0+lrd2Dne
	 fYn479anikobuByvdCxvJAXlAwt7v3UPtgvgem63I7+bV6jHplNSISXpqu28XGpMLv
	 W/hVOxG5Y5gP86IApUOVyTC2ygaJzrbgqoUZ/ugmrwv0dvZa1ax4vdpEOWQ1lmtlpf
	 nkS5Gv41JQlP8YK9gFA0TlFqyVubaNxp5y+CKaOmzrynO3o/cxz8EG305xaEdBvI7v
	 EQMFl40hvEr9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F015C83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175131119357.30600.14432168186060704961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 605b49b995964c8130e386acf75a232fa71fab8073b516b6eef946f04fe00d26
Date: Mon, 30 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751311193
