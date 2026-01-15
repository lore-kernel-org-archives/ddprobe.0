Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B052BB17
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768445034; cv=none; b=TdQan7b1+7N2e9lsIwXSTyNQsYT5yV3Knp0PmNlF6qPNHEulfe+qoiCkYmll+MS0L1gSXLp3p7ZKWUEx05SlHPJv6KGEj7Bl1vL+qv6XK5Lt/4av52vSSNK6AopknnR+RS1LMDUfdxUKUDDKkQxE7IZfkPu9+yA0A7JXgbETA+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768445034; c=relaxed/simple;
	bh=yy5GLWpiXEk4D/NEX6Qo5rRtYVO246sfUdsfJuagXvo=;
	h=To:Subject:From:Message-Id:Date; b=MlFZ2oKcl/R6xBIWUJb1NCF7VI9/jzc+c7l5HwLkah2beNzeIU5yzKnnxAhqsT9xuQUcHHfD7GHn3266ORVKk5pwVyUwS2GyokXevqrnaxK9yOCHLNbfTMnQLsQmdmmwMWHwI+/KbVP7dwZqP0xSjnXQdYBvWuEFiB4Irhl0FFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyoE9VPi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyoE9VPi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1587C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768445033;
	bh=yy5GLWpiXEk4D/NEX6Qo5rRtYVO246sfUdsfJuagXvo=;
	h=To:Subject:From:Date:From;
	b=kyoE9VPi1WumqHtoFqbtlSX4pB54kmXTIQ13wk4BuCKD/XjxezVIyJOIemzL1Zo3q
	 MEpBVjV7yfwrFVx+g2xnD0bG9KPcokJ6pq5d23C2zRXIvG9i7qwSasCbC9t56vfkQw
	 fRrPzpu/20HGFECk/B2BE9pPpt/MLPcsai+++YsoRnhEo+AL5R+0HnpF8EE2m89idF
	 LVUVwYxS07fMio7YPRtf+VTKbF7hVIAKVRE7o/hXY11nFeQakY16DAjdFTp51oMrvE
	 t5pq/Y8ZlKO8Io2ejpYi5AE9YeKTGo4YiTZ+L7LMv9bqKaHbpj/KXRbhqBr1e4iAU+
	 AgLjaAtMNitvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F24AD3CCA3
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176844503357.10714.14817076028133059357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57a01c2a46b2f244dbff373a2cfd9eb3374af6ae4e25ed52b16bedacf716eef5
Date: Thu, 15 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768445033
