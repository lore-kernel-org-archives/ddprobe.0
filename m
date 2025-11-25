Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B2232BF21
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764094974; cv=none; b=uoZl5sGwOeU299MoDPaCpPWJvfCxW1Gr0wUyOdQanZQCAS1wADSmmHspXmNP2qsIxWYsPm1gj53tylj7SgnHOB46MhkDbbXAirCmdPrS0bo9dox0WjaeABjTj6yywtNhL3dMIG5HrqdPSnfJHHMjZ/XdV2itEkwYguPs59Lofr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764094974; c=relaxed/simple;
	bh=a9AWwYVpktzQNWht9ybT7CIiIe0uZfcBGWXGhDmk/pg=;
	h=To:Subject:From:Message-Id:Date; b=gr3UatRFe4cYmw+995xdYQw4BuX37r9Qp2n2bRvt1ZTx9/2e6UL7guFC5MkzN1p/c9Wy80bVW0+KyupQLWUrUPLyo+5jZ7+l1Sm6seBvdsZO2VLzTGyXYbAog4ed75wmgfxOS0Oa7XulmDJfaaZGIXqB8HSIwiF5d0DepfJObCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ioxA1S19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ioxA1S19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D77C116B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764094973;
	bh=a9AWwYVpktzQNWht9ybT7CIiIe0uZfcBGWXGhDmk/pg=;
	h=To:Subject:From:Date:From;
	b=ioxA1S19WLIvEK9gnypRmqUorxSZ99ShmdPznPFJfJt17T+FqS/V0fP70443orviW
	 9uLI/vtl2FXnYnEORV5kHyKDkTJmsC7Pp33qQydxOJ3JtTmLO/pE8IHc+FXUOVe3ha
	 b2rSq+ltzdFNyToeJwUkZXFkIwBzj0erz7PF3wZ3GgIH56IucXIKQa+DoMF4xNO8e6
	 41n7DddMiNVW1KV4U0KEcq9hZ+AND5YlLK9mwmp3zpOEWyMfF0fEKXyJD3l2JqmyJR
	 B7J9I6oj9hDOfIoRiu68z6VbClUq8zyLl4KljUjmW4WrnZRZVX+Da1/VL73iAN/2qn
	 maoUb9UaMA+qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A334D0EE13
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176409497359.26323.3248672897863263730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bccfe73549448763b85786531939ac2a9bd4ea3c3e1b8d70180f190e55f6471
Date: Tue, 25 Nov 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764094973
