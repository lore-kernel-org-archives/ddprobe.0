Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B3330AAA6
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776500254; cv=none; b=duuJHTk6iQuk663Lm3jTyKnw1m6bhq+99QBl3q7Qrc3SJQ0xRe1ArIEo+8rSxn3z9BE9Us2IDEmzLnyfxNem0HPzmwxcbJog12NpJkGEOld8HCOYmMbBAO+WdxH6L4/2E7NT0vivSj3xW5JGHZqFElHleGYYMCc6I0xQYkCZUNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776500254; c=relaxed/simple;
	bh=/rzsT43bZ6rL6J+7TSFqdZGoXxh5rd3gry3+HsDgxIM=;
	h=To:Subject:From:Message-Id:Date; b=oUhvKxIOzNIMjBoqqYK2TUhSiX/lXc6/Yb8Au0dhyydqQLG9wYGpYXgA1Ba/awR+wcpkjbyYTG8vTiHHPost6+FOGRT/Rlty+OczBFgUGWRuu/Kln16Wita4DJZKaQzzlR9Yg7bys3itTnpHMVPFHi20zFo0Lf0soUaTTzmxE9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQQN67Nv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQQN67Nv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC421C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776500253;
	bh=/rzsT43bZ6rL6J+7TSFqdZGoXxh5rd3gry3+HsDgxIM=;
	h=To:Subject:From:Date:From;
	b=KQQN67Nvs+Dm2tVVEF6z0veinAXjZaKwcwjAPwIinRYuyDDy6qvXqGrfEMHZ91QBh
	 XQIKQ3zo4BwpKwelrNEVcp0dJ7ZQxQi5eoavS9MMwos9FqZ74+o1TJu3BNXXsAwZxi
	 dcgscT5uvaclj+jYP7oG18gjhhsumj53Ni2IleyPFyxCRWtiy9Dbc8JHciDpo0X5jI
	 guxkENMJPXNpp5gGLZPQxulMQOWWfQYyuR3L22F5mAleTWFQOjgcaKJAZ/ZK3DlWI6
	 4icGMBDap4Sb4GgPYyY4FrbfguYn1ztKW+oMH78tPifKa6KfY3zL8O6qAC5k1SqEXn
	 0EXzBLni+qeBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B6CF8DFFF
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177650025368.4431.14837097724582358134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b58c8be0a96375714ff76e6ce7a8d6d1110159de5ead0dfd52214e9bbc769ef
Date: Sat, 18 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776500253
