Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0365236457
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750128593; cv=none; b=sbjxWw8/iH7oY5/LMcTqI8W4eu+RatZRA2WhXdRO0MBdY8avb3lhqReojeLGi7FcN05GW6Nje+wAhX9/amn/5BX/YmJOHA8X76LfA6DqK56+l53hfoTQz1/aXU3c/ZuLOGaAAODVXTOylDKp9MoLc9yBRmIA/AY3zlGRRJY9iuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750128593; c=relaxed/simple;
	bh=bwfcz5hHvVe2FYSlv4o5sbSfhCsOjaV2/ee2RavhLcc=;
	h=To:Subject:From:Message-Id:Date; b=W/WzFlu1Fo05Z2aWBJpnyuvr3vZvRDzDHxDsmx9zrD3GSkbRh8+Lqtc3Fpl73DNkoOE8lM5QUBO+TREcQp6N2xpa3NJGIoUFQf79Rrsc4i6x5znBNye9ylUSCUaZ4iBgiVIoMrWkhfjkjTNZtwSuBWidrhmYX46LeaPqrOsax0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJ7cwI1a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJ7cwI1a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9780DC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750128593;
	bh=bwfcz5hHvVe2FYSlv4o5sbSfhCsOjaV2/ee2RavhLcc=;
	h=To:Subject:From:Date:From;
	b=FJ7cwI1aezFbIAYTc3oE7+bxfiLSZPkH7r2faBdlkvkbV6iI6HRExL869WXlxgjyT
	 /u8JhzI0IpGVjOw8MzzA6q4yJXm9iUwO8xZbnl4yfivApUVZF1LKa0POfTn9c0zkgf
	 JMfuE9yCdNgHEUGco7VE9nZ8AfToQ6dK6mJP5YxPrg7Vh/LTBzm4U6SEsPN14rs8Ns
	 12WvWeRIypSG3tQ/FmPElcCOOVHjUmY7CeDL0gRgBqc7qBR39ReisqgySxVWLUjL39
	 Vvze8qrsUC+7BZx0NErMNsXlGdCahzYiIqX/rkP+gRC6FFnQfANdSA0nZ4ZERVxCAq
	 ED9cdkvIXwpDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E800C71155
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175012859357.26814.7428368809811790079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bd578aec62fe3ac0e29b436bbced9ab29e9820a01d1b8be993fc2e1e8ab220e
Date: Tue, 17 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750128593
