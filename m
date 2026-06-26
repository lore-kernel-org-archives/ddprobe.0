Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF992F8E82
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 22:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782514714; cv=none; b=FyTR4vtjxPWJX/sp6OkCDAfPxgPfu405FIKlH9alDFWJIOU5MOcwuozaTDo5wS8rdU1nlreqbdLZHJe4Mw5k5s4Dt7WC2f4WuQ0VxAopiTenhFfIJyfyZ8KFbJQViDtNMY9+QV6Zxn2KkTBGBjoK3l0HtKWX5TcyUlxEGQQnebM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782514714; c=relaxed/simple;
	bh=t03O6/iCJfImuBnEiMea+w5XGUNggR0Zzs4OkbYksgk=;
	h=To:Subject:From:Message-Id:Date; b=R2ZA3b82fASlamNpXAMxCYkXvces/eV4NdGohdEMnWqE9lQO64js2h8zcpmtzrHDkjdrdPfM+4b2h5PkIliJTWAA/Q058GxLQDpDWjiEttjtZq5bntxWmKrP185GU3m+e2BxhBQwFBHrdNZlJUZrpEpgtDS5L/qk7+ohh1YTZuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGwtwEMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGwtwEMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB14C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782514713;
	bh=t03O6/iCJfImuBnEiMea+w5XGUNggR0Zzs4OkbYksgk=;
	h=To:Subject:From:Date:From;
	b=WGwtwEMjGTLwiWgei3NjGJ5/+uzKkH4e1rsZvjdaj6mtGP9g05HXi//AofLc4h+SK
	 CbQrHI9WCxGbrGoSpbYncMzFWhHigB28nGWN/1+O2kUXy1+oV+wDRpka52YY0383GI
	 t+Fbb4Kd2d9LFGd9yy4P8wgW3QQGJh2tK4BNVUqfgNtn6xIsCpIau9r2nCFnWqIMOW
	 +p3tF0SiJGd1FWkxswnI9eF4S6nlszAi8bU+tLQEsZAbDerg3VrnxqrRc1BfAySvd1
	 rFFeyXVYajB4whPuYk4e0RZ1M56yGpMRSnWf6mjPrPnLOxweHIdzu28gkJzf0UgLUx
	 Kr6zKWAuAutfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0700C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178251471370.1337.6289110730242965219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51abfb1afd6f0c8e6a0a277002b1efad9fcdd6a56e4c6d8b0d1610d96278dd21
Date: Fri, 26 Jun 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782514713
