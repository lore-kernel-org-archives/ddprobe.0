Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBDB21C167
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758072594; cv=none; b=J7Vxz0zKtqET8Pjc0BrDIFcn0pE11BxqSrQfnRLnleSSPvXglCSTI40QMN/VXw+DjXbUhnTv65/pikyLPFMya0MdHzHk0OM0NS9IQXEOseIFS/ZFtQ/fz59WN3+m1QnOGpyogEJh3eUSgtw98kJOcKNTO6pDJD08HC0MIS4wQLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758072594; c=relaxed/simple;
	bh=DHxO0cAYY+kOkPZewNy59ElEaTgUQS/NL3ZbKVbwFCA=;
	h=To:Subject:From:Message-Id:Date; b=PgTJA0QBO8EP/gSpiysevytlu0KJUQH/udP1iycRjIyzAPAlevEhqd0hLy2xmJqXREMUpOJ3VVpdnVtv1Zh4X7xf5Rl8yZVlhBScz8k2JQ5AAVjVyOuFOscVnhRKLUZVnEPzoo6o9ToqyHt+x8b+DQ/m53uZZztOMEs4HZqtFqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAityfdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAityfdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDEDC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758072593;
	bh=DHxO0cAYY+kOkPZewNy59ElEaTgUQS/NL3ZbKVbwFCA=;
	h=To:Subject:From:Date:From;
	b=cAityfdp9qo4XEpl+FLZU1aZHdxlU4ChewqcGS23ndg1xIH8U2Dqtu/JmSp3oQCDm
	 /Gxavl+xlCWx36Vdd0ecwjTgDFGEiwyp46YQe0ZxxWlDnPEjFCRvkC3IDSHB//QEpJ
	 yz2Pz4+AhBcpwxhluWK6tIGQchEMiGcqCGdnT2dLIjCLIzMwaWiQLxEyEqhYQtXed1
	 90tPvZAOarhoqYGjAsRBPXbMD3lKEMAmpM1y5Fi68odoufUCSmN6BA/e2DSx+DRFfc
	 RqKj390+Zgg7omgOlx/slZ1q4HtC5hwRpDYuw2wuE1NGo/GQsv49xLye2if7YC4I/1
	 VZz6GNTJXO+RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9796ECAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175807259360.17194.12218793514737065648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3634443b23ee818519c68bc7ca458de9e2b1adcbfc6da16e1debb71ee075456
Date: Wed, 17 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758072593
