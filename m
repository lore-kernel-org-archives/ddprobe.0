Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432CC154C04
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737831954; cv=none; b=NnJn7RCHLRRHRG3MrZuh1UdWP+dJpWwQ8bpS2LP4JaAgh7LREFkjp9P/JWbsVGvHWsrUGw175e8G66LdAUSQuLBn60LilQUjOpMc1UUE4MeutJ8tCKC87ZQjxiIfm/0QDz7jq92Qe4dBU3Y2uDDo3O5YEgpnh47gCNG5uDIGnjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737831954; c=relaxed/simple;
	bh=1qlHrZemqbskfbHxqHUdsexnfVBTqhH7v6Da227CjvM=;
	h=To:Subject:From:Message-Id:Date; b=vDN1eygCPKmC6HDzKc/6kjXfC/9VuxuPjf9w2CBA/eCcuC4bYuDfxhxlMPCtzvDMS5x2i+r0llac5Zu1ja/fiMRMPv1zPGoy6XRLDSO5aIFsBjIE9PJnC1FFRLoHmrJ1W9UMfSvrY9IJLKTUkfQBKBmICw4ff7Ml6S0DuJ4jeBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0yQTFlJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0yQTFlJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CAAC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737831953;
	bh=1qlHrZemqbskfbHxqHUdsexnfVBTqhH7v6Da227CjvM=;
	h=To:Subject:From:Date:From;
	b=H0yQTFlJX9YD8PIK8F5a+yeNUSykH25NKaNZHwLGpJCdkwzNmxCzRiAua1KjC4LpP
	 qCA5RJ74HAlbOA8cpXgSeY2uadroL/w9NiEZMcJeB8sk4NzkWwyG17cSjDOny5l0EB
	 96UqxU09iZH9JSVcPvVgINK3pYf3itFRtkPUHsw94fM0ZStAubpKg9b3/cJ+Mo5CBv
	 bu82pMKkDKMoDtoRXT1jIpAcU6b5EnYkwXCdUG6/TQTdNQfAUXbtlLA6DEx5GaTjYs
	 KXrzyP6HNXks7sdpAchbrmkLtKcdnWJmMPgkS73efkaj340HQr2HHCQdieVnaCbT6J
	 gZYtJ4ADQzjvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90342C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173783195358.24761.5351057034854159049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ae15f439eb64f7610e9cae36f7e7ba88fea4e2c54ae3c47fc8ff3f368b643a8
Date: Sat, 25 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737831953
