Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFD78218845
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776242254; cv=none; b=oqJRdEv7a4E4pKwxP+3XocflyulUfm68yfxfuDvAZCVT4JwwMUmwiX2s0UiLCkD3NCMvPfscq8jotKs7yUK9Zdvf4Z8nQGo5DlyseJlVU2DrMMbFTphKjc6pII+cWIej1b2JZJPNRR0wAey0q4wotfFbmzr016kw485+ys3jZOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776242254; c=relaxed/simple;
	bh=Efjb7qPeeXsmO7TzMtnrknR3+z9mAHv0FjbGLjc/U6s=;
	h=To:Subject:From:Message-Id:Date; b=RDXa3s9/+JxiUYMm/yIIdpQx9rBQmtY12CSSCdrk/GTzr7SfDZCdnLj+TcXeHX8FLJ1Vw12tGoVJ2/5yj/hwD1vLl3Qz52oducNIGbtLRIKJz6GOs4cEnncXMviEaIxsYp3FxcvbCRlLjsMLDXT/A93U/rLN/dwO7PBjhzXnPx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZ7OfrCn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZ7OfrCn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C117BC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776242253;
	bh=Efjb7qPeeXsmO7TzMtnrknR3+z9mAHv0FjbGLjc/U6s=;
	h=To:Subject:From:Date:From;
	b=DZ7OfrCn2TT9JwrH3ZzV2qoKr1ZodsoWQ8r5D1mR0xMz5gGfLPXp1XrAUISE8eEPX
	 NyKaBk24x7Z7n9VHLwwNgRoYQLsVWIhP+FUBUDOYfH/t5EujtWzcmqWisF0+h46akr
	 MRLM6tLDdoBmhDGT2OPwde0RX9KPn01nNSPFAPFafJdgtcyxeoXB8U1zuzqLOTGlEo
	 QLZhaMYmE2Klakaz7287ADBW7+2Nzc5jQhBGt12X2xXZOosHm4LiNWa0BwPKHMqks6
	 KXS9pQ770gn/EI8UtUB9Xy/tHYMndqYr0q2tVsCpJ/44c3RR7UIXF0xiw7F3bg0z+T
	 VLSYF+kIPcJsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6DBFA0C4D
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177624225368.4234.6461952118139902088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3570148907f814041988eb5b1901ee80d3a792a6d9a1febe753830136601b1
Date: Wed, 15 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776242253
