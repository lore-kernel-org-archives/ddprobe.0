Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295FA311972
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763117994; cv=none; b=LHimCKLSBQbO/ydbVIS5aCdN/Qt68YTVxwlk1CSLHad07b1Bg+7rDQylB99TN2Ej48kmaEMvyAjv1V3b8SNuZUOxV5v4DWEdN8x9P/IAfXtlq5CnUvtu2hHkLAdL59D3NU2EMERMSBPOjQBz9FX7aglbmaz9CqxhiQRkHYwDC10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763117994; c=relaxed/simple;
	bh=wi3N3gX7oACU0Pg0RWApIiLXctyB1jStw7PQi1Yoimg=;
	h=To:Subject:From:Message-Id:Date; b=pv5lJaPuOOlp41hZZ1kCF/i8mS7W408S2uzVg7Km09lceoQzbYG8qgu1VVB+MMDaBKsFD3BT7tskz8rvKl7mwxY/zIs4HIuLw7ZMt2zOjMp+avuhCtKgzdl7CNQARihoDCQefSjXtiTdKKBRR+Kd0FEeMUR+o+e18C628lc1TEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=niZehMMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="niZehMMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA3AC2BC86
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763117993;
	bh=wi3N3gX7oACU0Pg0RWApIiLXctyB1jStw7PQi1Yoimg=;
	h=To:Subject:From:Date:From;
	b=niZehMMdFHJ5ILRor3el58aUjQowgnKqzUS3CSn03SwHiBn4VwidLc7BLQDFRGACi
	 QmEoS4WcblM4sCwhKVAoBd8iTckvQsz2mbib30PoqBb3ZVoPRryAkiy7VqhetdXtZP
	 0E1zEn6RaTs+5cyoUChL5jdWoc5l08YD/NyumlemT+ag+28gxrYeWuB6Rt3/lboxxs
	 4E9gEvgXAoUoE04H61j1Q9EyWfc+ESLf6aogt96/COooij9J8jQc4hZZo/Q3G2dh20
	 jUzFinQqDxfNlFrBIxLh5zV4I1MQnRuLrfvzmhPhBzQDFpzlHLK/gZV1iKUYDKcZ9H
	 JcawThvhcrMjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93725CE7AAE
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176311799359.8345.10317578060748024617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b049fe0be692be43c540fe9a393bb1e02643c9d9c90c5fe6eb5311f3e3359f
Date: Fri, 14 Nov 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763117993
