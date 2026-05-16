Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4242537474B
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 10:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778928034; cv=none; b=GBLDF4jx9bOzayCdMV8k7GqoZIVqMKomQf5YRfaMvCRco192JWJ2F2Jf49oyPwrzmj42T8NLU16fNqwF98wWqtZ5o/guw6frw8xsCqJAxfHea0Tx34yr2x3Ggo86GbrAiUY6ORHrr4JMbzw4UqE/CybraIxkXUhs7DyPBmTNYzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778928034; c=relaxed/simple;
	bh=eVwlUttydqu8mJmQnPvFXzjefL5lBjRtXQCsQjl7sgA=;
	h=To:Subject:From:Message-Id:Date; b=qStG3ETHy1AAgn5Nrl6AUASi4GMnmQ6wxk17ptp4uc8+mUQU07167zXZuBQQwDv554vuioYNDnSje1QJj81rpKcvoA6yioLzPQJNhMMBaT32GRFu6ejNgpL/VjSbkyYPYcBJLZTUDOUhua4vT2A6KHD0KHjZ9Me8Dst5v0gwODQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uu3+7Utl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uu3+7Utl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FC2C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778928033;
	bh=eVwlUttydqu8mJmQnPvFXzjefL5lBjRtXQCsQjl7sgA=;
	h=To:Subject:From:Date:From;
	b=Uu3+7UtlnZq7eaiBzObS5P8azxwWiQn+/NYpN6gqk3cpyZVI4GADCMdpl84DoX7+W
	 EUDTyQfO8Ksd5BgeFDHZ1qYuU9J86qQgLjllAam3tfK8EaZ27mgXR7VL5BT90c9tWE
	 /dqRlgCbuMKobh0BN+a+To5rEHAu0wRhggugZAIdGeYg+/0heeWi03ydq/fgTAvjdW
	 XcX1sgh1u+NJOqtfOcmh7SBzIJHTXVhBFmrMliUEFFNUDJbQJRvyOH1pf5h1MC2BVI
	 YPA+DBC/rUflKSSIWaNcIvKJ77tIV/cj4IapCxMFuYWIhqz+5q/Zru5HJm7s4O0t9r
	 pRnnD6qY1iGUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5668CD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177892803370.10755.9776989893290189936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01934b0ef71b70973782ffd7749f2d343971f7d8695cbb6c201313019689e01b
Date: Sat, 16 May 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778928033
