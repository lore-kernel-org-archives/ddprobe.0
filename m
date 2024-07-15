Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512CAEAE7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 20:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721076323; cv=none; b=uBY31lgKGMTswCKrs7snRf7bOmAh2bIV18kYoB2TEtDomO+FT7mlR9PeoQGhX8gOFek4GEjDF7e0+tpBscb6OZGVPjYB5zP4iV+gbLrMc0/fpUWl56xp+pVLDmNF0FnrRlqfJKs7bCZy8EoNl7XoD+9SECYHdU0w4msAQPLjtnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721076323; c=relaxed/simple;
	bh=1vkq+w2GIwoW3dbLMpG9o7sfScK+uo11km2P6VgcVOE=;
	h=To:Subject:From:Message-Id:Date; b=uXCx9508mta4TfRtSmva5ACjp9LgFoBbxga5BCCDNqfvduf7WyxpXlaWH3m6Mk/QVwmQqanyp+Nb/fydVVUNWkGSmEW31EiS9p5SAoK3/pcc+576LxVgrUnIEWjl5zwqrmbroAhTddLQqM7Lu8ZQaCD035XZIBA2BZNtU8yyJXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKQ/1BJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKQ/1BJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3175C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 20:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721076322;
	bh=1vkq+w2GIwoW3dbLMpG9o7sfScK+uo11km2P6VgcVOE=;
	h=To:Subject:From:Date:From;
	b=RKQ/1BJjXKqFm2Wugg5wVLEhwJy3OwuxcWBrElwoFzl4CoU13nQsk8KNhteH1ikvv
	 Utrii8wSkTt+H95+GamnOvtsyyLioVixSx9e5C9zzQ9FVrrb8x6Fu0TR84u6wMfnG/
	 jyBMzr43aTSg5URsDYo+EpCq4ouuroyX6czwuUBt8kHp3OBHo+7vpYxuHOV8A73Md9
	 Xlnsc7naUkWGQr7+F8Dk625arlfu8alFOb573i8VzYjd1MnOiS0er4rPXtdJsQ4kSR
	 RRp6grFMYvNqp2FUmG7XFW4u5KTof/XdcQ+bq2aVWNczLqHm6j/TRhM0eywGTe/Itq
	 Um543p32P3Q7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC703C3DA4B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 20:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172107632276.22813.13489711389502684705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6da0e3c0b55309b20305194a008e2f5ffb7757a7c547143779a61c110bd95f3
Date: Mon, 15 Jul 2024 20:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721076322
