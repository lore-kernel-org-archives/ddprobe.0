Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28547224225
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753444794; cv=none; b=uaEETpzRTNjNdhajesMRusulfQ4PxShOoc71fxRKV01+HunJ2HIpFVKyYEtFQUp1cl91t/H8koOePiV7EusbKiFdw9lyNyWX0CpuXmE5phIUd+qSRBB6p3rTj9LtGOZhO7ac/a3oEzSkf/05gMJfX2VdqMohDS7b4J5rcuc5Uw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753444794; c=relaxed/simple;
	bh=eaVfapyMTd/uqjcI9w4UrMjjNHSvDM2QOM9Xqjzeb+U=;
	h=To:Subject:From:Message-Id:Date; b=FKVarthJKA5favBEAdWuwt8/BPlkSuPZVQbN9rfhcCpkThKrXLdutzJLb1e1eih6/dhGMnf7yxkIF6buIGRLLOR+nu68XB8H+iz40gxpeOinxj1jpAxcaKypxHgyyuTiKw8KGcQyfY9IdxWOywCXdWZHOc25Lu64o1b0GI/3Fk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2hsF/+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2hsF/+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E84EC4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753444793;
	bh=eaVfapyMTd/uqjcI9w4UrMjjNHSvDM2QOM9Xqjzeb+U=;
	h=To:Subject:From:Date:From;
	b=h2hsF/+QGG6GlYYo4ckw2/SqD+uEnmePYXYCVyQbtGnsEZKufH4tN1nnJtjPhhOoJ
	 G4j/Z1r9bHhyUOkQvBMPbDu/B1utJPp9rZlCy/I4KP4Ytmr+TI+FRw9LbUQ3J1gUkn
	 OkUmi0d4CW3L4TWRLkNj0jVRywkTVuuCSWzW3EcQowtsGi2h5BYXrLIB9DvRQItYfg
	 UZou7GAx7ynELyFu+tlW07Cmgsmux2WoTh71LMqQZkUlY3hRtPx0YED7RfUXhQCNfq
	 zhZvoaog4K3GiavSYlUP8dyivTZT7h1MZypvenVX+d6bDfw6ko7VqPvh1Vw1utU0h6
	 UllZ1Q2Z6RQFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90791C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175344479358.4443.11858481564472498256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ca6ec73e7f98c83631b7f6792c86af89efb72e437c2bc2b7ba9623a8e11f32
Date: Fri, 25 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753444793
