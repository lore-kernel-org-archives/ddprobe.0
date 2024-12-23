Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413BC33D1
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734941154; cv=none; b=jWSVC/GKyUTPJV8WRlcmw6JBedW1YKzk90jYXPthpQgBk9ceya6c7WRfTNKlo0WiBsvPHUEmAKMbNX0MZ4RFUGAij8BFZ8uCrKNJHxlOr/lFtJWQj1g63zh8zaRpGdxU15naPlG/egjzVIlOzct2e5oZuEgrWHPt8hSh1sb9j+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734941154; c=relaxed/simple;
	bh=YaR7miUOMBi6ipGpXiDpTN87hHHrEut/QqCBBGR+C0I=;
	h=To:Subject:From:Message-Id:Date; b=f664vJwC3vlJNhNdDzfNZ5j8VDtJtwldHId3eCYgKijW51ga38jEKvOKgHlxo2X9wV2wqad7+8um+owzTLll/in4gY1U7Z4BRKn4cXfnbqraVUHglKBJvQovcqCf43JHA15IQI0L25p8kCXKy0xDvNHG5RKtoZWQ7l4aAd36yFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpuiwR3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpuiwR3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DDDC4CED4
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734941153;
	bh=YaR7miUOMBi6ipGpXiDpTN87hHHrEut/QqCBBGR+C0I=;
	h=To:Subject:From:Date:From;
	b=qpuiwR3u+0aAzbNO9CzMUgMBFfMb25uYkuh8FA3nLOpVRTerP2JVCivO+6EpK6+2o
	 8D4X0Khy2ubkm5uDKOyxDt3GP7k9wbEfBDie7OA4Usl/zH8Vbg6fhe9uXG5LzY165a
	 0gxst1Z2XLcZx7u6q5Boz3LOevPSOw1ATZHYd8GVN631dDxwzyi67wvHTU7++mj9kP
	 AbZQOCRVzjNBFFr8TLq1jDz6rfSYanORrzCbVYL4LEjZ/N2zf0TX48w2BIbeHKlxi0
	 U+LEdlNFvb4+ngMGwYvfqoBbSKaFc+cshQSMSh8QaSHD9nZcYJcvuFoLrkJxSJ6uks
	 cuj9glu7JH5Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9779FE7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173494115361.16527.4258064375648540096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4abadead5ea69128b0b93046e6eb10f561e042d081bf0b6485ed9053938dfa81
Date: Mon, 23 Dec 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734941153
