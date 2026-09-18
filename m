Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DC24B1CF4
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 08:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789719634; cv=none; b=QBtSL+L7p3LkXt2SKLwyMW3KdrNtjHsjH8S6BzMnKQxPbiCB3pJ5odkjSxnePAwfA6O9vj0rXGfGw3j+6oit+qEDpitzhClDa7veXbKWM31mJyL8snwiW9OKdXG6P5F697GmWsKwx6pu7CwufBrzfFWoidxjPRN2ehMJfMqdWp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789719634; c=relaxed/simple;
	bh=qmKtT8PATNYToE3c9OwLY0muFY+xVuoY7Vkrm2eZjD8=;
	h=To:Subject:From:Message-Id:Date; b=sdmR12mR0b4UpJ/yHdhbVjaUhuzei1yFt4lJDRXk4XaXyLYdXc99yZR2jIb7jst/1iDfR1xivL4T56sZ1vjjA6DhJIBchcdljgLemz6Y8xFw5Ju4sqoU/muT+7uilxTsgClF6il3tEjEccori8L5LU863fetWxLXndlJy6cOhNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBRWSla2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBRWSla2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB6AEC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789719633;
	bh=qmKtT8PATNYToE3c9OwLY0muFY+xVuoY7Vkrm2eZjD8=;
	h=To:Subject:From:Date:From;
	b=rBRWSla2X5Yh9BwIhC4BTI/sNtQRzO55fSCuisEszAFL/eV9hz8hClDQJr6OtYu6q
	 r9OWDlcTmUG8Y4OsrEWAb4EuYTOFIql30mUoa2FUjrSAu0NiXk62JgTX6gverg2PmV
	 6N5XPELPBnbXM/cJzlbUUbHUhVakMxrOKXAN3nB3bKICiHxFXLJbjoc4KAAjlxIynG
	 ndlcNSF9VBfQzZ8j3ZKjdJKn4pSh3Q4f8/XNnb3AXXPpPKICZPCrU5rvObsv0iP6uc
	 XcZJ++OhoK4rkwRWvTpYPR8si6c15O6psjhD7OSrcq4KgjRjJQaiMrBS9QpUi2k+q9
	 yjoX7qQbeDhbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9831C88E75
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178971963368.8241.15938307212093064819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0ea4013215757f486980cc9114dec12e0cfb2e4d6700e7f37743f3c41c7ca46
Date: Fri, 18 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789719633
