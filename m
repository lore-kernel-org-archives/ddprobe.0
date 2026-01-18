Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D8D381AF
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768770834; cv=none; b=gEG8UhAWCJoSEwC4i3o8pG41KyLc2nsuQSgKKItVTWqu13UdO8WQZIljSLH0VZTRD1wSiErGz6vhJrSRX8jjljN04epYudJKv1bp7OeC8DixWduSFegb1zIUcJ1DFROh3XfsZK15HdxABPUcWZZ3WCiyly8PgLxsb3T0fC7Wi6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768770834; c=relaxed/simple;
	bh=PN7ySG0ILWdM9r8DTyhmGRl3Z0zyYwbrYLyljWjepXY=;
	h=To:Subject:From:Message-Id:Date; b=e1BAHSRmhx+HiaO+isbMHB/Bf7iyBv+dyYA+2KIeAea5sl+D8n8FN0df9f0E2kdZwH/hi1xK5RbOdY0DUe/uZRZcSXC1ufmvqBVfuXtgFfKZdSZ6tqwTYwhXEWeXI1lwK8Hy/u7IZYi+FeTp5f+s1EEi2xxvf2wAhwoAxn/KE2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqmluO4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqmluO4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7664C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768770833;
	bh=PN7ySG0ILWdM9r8DTyhmGRl3Z0zyYwbrYLyljWjepXY=;
	h=To:Subject:From:Date:From;
	b=TqmluO4sRsk08ubsN+CEdo7PVOIdkAFMg0dcNyp8LkO4NXOu5CWV/ybshFOiiIMQ8
	 ak3NLvGOTdZSQpr96JP30FBPH7Y651e0rgFx7AMcMdsjnzAqK7DSasXV50t9K6l7sc
	 qRPMMtvuoJGN1kh7ocBg9jZ5UUYgbxQgRj/o7TDUTNsaumvCih+KTJRvNosG7v74gE
	 6TNzJOi+0I9Asxhy3Ws7lgbqpHUOvm+6Lg7JIsPv2G8Q3d6hpgZmbHj9wNZj+46D+6
	 CrO09WuR9ZFNuPz06u4FuN8MWKpl2ndSM8Dg2vDXltz9TikuJt0pRf+RBFfYVbB01V
	 hDIQmh+Ml8gtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950ACC98315
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176877083357.32337.3548996268790641164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33b77e305060eca0be72ae6d672acbb3d79b0dfef6b101425886602493af2ba9
Date: Sun, 18 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768770833
