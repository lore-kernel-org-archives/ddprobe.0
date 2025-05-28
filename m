Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316642036E9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748453394; cv=none; b=rOZMv8lddmfYK4p7BfRelHgFS8dE1h1ONu0LHeloCGELyqywN0ik3bPRVsSW8HnwXGu/YehDFEf30VONIzz8h4ZFupZ221WHWDcmmC+btXSbW6jZuhPX1drADSojMLk8oOPaNgHOvzpxx7Rd8EO6zoKyvId5x26H1gzpmEJ+L00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748453394; c=relaxed/simple;
	bh=FoJweURxUokLKJ7aQ8Dq5KbBe4+PfNbDO8QTIaJLSMA=;
	h=To:Subject:From:Message-Id:Date; b=mUyLoV/z9XavQgBY5DflGWEc14dfBZTiZAFO5PDHJOSxANA/yHmnjcK9r1UW0llSyArDm7Lyw61R6Oi3YGBACJF1cMdFvAziiBT4CITu25pD1RWZ0S5v9vc0Wft2utK2PisDfuOSyS5l33yMREbehgRupMSvjqA5ZeyfKYD/LmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvtE8rYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvtE8rYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F3BC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748453393;
	bh=FoJweURxUokLKJ7aQ8Dq5KbBe4+PfNbDO8QTIaJLSMA=;
	h=To:Subject:From:Date:From;
	b=FvtE8rYmsCfcDlo/7j6hiIHFE3sb79WSGWCH+iCoZN30OuCZ6XPF9V+55DoHOkL8G
	 /s1PbgO4YICU3tV6ciC3vy8SuFm9KBXva2MSSJymI7DVXnG4bOVfgR1e3zzUx16FB4
	 sTm6WAg3Hy1lB49l42wNGWrTHeQLji7E8BjJatJ4XJZK4IZHFzvdo7nw42p02Jt4Kp
	 dgCZyukBAgWaCEWp8s4nI1xmL4Km3Z1RL7eHfqmrMc8F6WZb/IpRsfsWwFpsHmBbX2
	 EXSb21Y691S/+eJFh/sn4GuY2+jJMhiD4PjgEP49SjqT9SLhcVtdrpexoq1JSH5/FK
	 4FuDN8NVTbpUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999DEC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174845339361.12419.15964928281005243202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b7a6eca6416a932f4758e9a471aac40a5bce831d7b354c686b4863ec8985ee
Date: Wed, 28 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748453393
