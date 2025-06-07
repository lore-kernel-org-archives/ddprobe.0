Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1AD6AD4B
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749323393; cv=none; b=il45iB19SYUo+hxWDKpDky68urH5HxP94eq3Jdbxx3esYEvMLoJsAADXC6F0xFxRI0K91sHssRg3qOI2pR7iXU+zprN+QfcjkJdlGRbb7i5f4j0rN+Hms0JQ+X8NW0kyDa+o/+A3ENeB0kAvkFfmOCnJ6R06CfZIb70owgaEEKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749323393; c=relaxed/simple;
	bh=XgilGHX2yhjV01VVbknIo1nZhNqhi7p7843yNXPJRnI=;
	h=To:Subject:From:Message-Id:Date; b=TB62wGDaaD52Rzl9JcjCu+MdeMH15emB0xws7UWMsktAZ8TAKXh46QwAcxKYA2EAr68tlqv5HNHUHhksAQBbN6wl9Czg7NazK3mzhktvrOvqAtTYR0ba8uLeL1kd99gvkYyM1p6JDYypkU6ftfPcvyX52XPejVZKoAvsNOOwmuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIgsVRU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIgsVRU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15ABC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749323393;
	bh=XgilGHX2yhjV01VVbknIo1nZhNqhi7p7843yNXPJRnI=;
	h=To:Subject:From:Date:From;
	b=QIgsVRU960jaY+wWMRHJUgp2aryMcW0GitNtMzhPf5WshAyNpfmq2+LWT8oT2+woM
	 wA8GtYlO2tAIBOGAd0+7PgXSyHHwofmPCKE0KonW7M8VrKlbE5vxRXOKCfBIEuPX8u
	 UV/k5XcvAjBgLTFH6oLXAfmBoKEexaO9wHVmjgLbKbDBY/McLtxM9pL+Zj+LR2/cHO
	 +ZuNsv1ix6S7gJJEcgKVyVofFRuropEfzWGoqLrQRG3P0No4eV+K5wnAxd1mN0hNNS
	 88qbH8mzzUVL+vJzt+pjqMVy0CV9Tz1kzb3EJXzMk14390np/gJaQ44bYG7D7HqoD2
	 7ufRlgoCpgUJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10CC61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174932339357.22254.5222145057209442181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33eff11481b303a2730a71c888625733ee6329d176036c88b9bede2edba9a6d5
Date: Sat, 07 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749323393
