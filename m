Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0F9946C
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734140754; cv=none; b=rvzEgkC6gQmtihyxpzi5e45arTixuA5cYNBySj4iMyBr6YZS5GIibhalgWl6w2y9MvzIOLeFU0mBrR+Pc6xELusWmU0/vmkdiczZvquKRIczEzYtHNpL2EEoHc84TDYcuyYsFbaMFvIK/y0oRibXh9EHTHJTLCHH89/prLQaldc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734140754; c=relaxed/simple;
	bh=dIzNQVp4yuRvSuy0akzyOs9XkOODeAGvw2TpvQDr6Bo=;
	h=To:Subject:From:Message-Id:Date; b=XGlknrgewQp+2kct53xsAYTUSCUUckVmn7uuMDtj0F/FrV9nofxsEyVIt7RuMZRIggJzxXJcz+rUzpfQf/8jojZ0OYuVDz1uSNKXwWSO/P2GrB5C5G63j0BKPxr9Zj0F21+tSbYy3BHHoSegJ0JlWf2Vi6XLj/XtpTxYbYW3n3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qibtLCV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qibtLCV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4EDC4CED0
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734140753;
	bh=dIzNQVp4yuRvSuy0akzyOs9XkOODeAGvw2TpvQDr6Bo=;
	h=To:Subject:From:Date:From;
	b=qibtLCV+ZWKoHCucvBWv2aNipNMRto10ucDC4N1SUkdLrWBct4/MAQIGdGtBwvrdj
	 TqJP4DRJji+Vs9FLfbVFC7QiXvG8Urgh3mL0lDVa4u+H0GQ+h2Z9jifzawbsHBb1Kw
	 SSxqrbf8jUVguH5oTnXJf+nHaoKaequz5D9Jcrau3kqCpNGHU01whgPTK1RGshdVi7
	 W28PkOvrf/QtnpY58rGKdBLktqlQarvPd8fpHYcbBv5IX2xGTQIrDzGc/Ze26UGtTU
	 h8oCDRzSEI81pZdi/kxDhuRhC9CJTPVdETupULKRQmXv/T12yyEY+m3CtWkeI0h7Vw
	 Ld1f3shhZVqGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1864E7717F
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173414075364.2195.16321213316529151506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af850747ca4389c04431a700d4bcac356da1b21b1c139d83ad58d4dda50d2e7a
Date: Sat, 14 Dec 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734140753
