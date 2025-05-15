Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E352295531
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747309194; cv=none; b=HbZF2zbOXzsqUcbsar9PyzKdxokgAeihidjlBy+4xRLgFglAnL7YJgcb33ysWPm3KJE+fnqvr8ufr50zQxyaLCXww5zUWxK94SGm5FcwSJQYm0QMf2exqX88L0boigxAbM+eI94t+K/oy5lK6fjAmhbY4TdoyqQ8wb5gFeP5MM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747309194; c=relaxed/simple;
	bh=ts16RUzwQGQL1bfR6hXVL/HdUp/VcS1YHqaSzkhxvIA=;
	h=To:Subject:From:Message-Id:Date; b=ZuoNVBdkAm43D9GXx6jUwE1/hbqoC/RK9O0DYQsmZjDsdbgxiUjC8pEENnko3tpFS64LkeE9/ao/iR+vF0ou0HGJaUdSXUtRv2dZj8bOyTGb4hf1Kll0s2DRNyCdM+XMQ5IPSC1U3xjfNxtWPiXT6olSFCibVgGnR4Ngm374FGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRdAURcv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRdAURcv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1745C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747309193;
	bh=ts16RUzwQGQL1bfR6hXVL/HdUp/VcS1YHqaSzkhxvIA=;
	h=To:Subject:From:Date:From;
	b=jRdAURcvq+yFq12+KqgZFraWjvNXvVnNAwRsNkNOBtfjrxge3k/zs3/DFLMtkrXNY
	 rKf+xla79sTezfm1cWDFvk0kXwl6GEoDlNpWw713rsKe6TVVV2CdEXs1/H/UZrYyPD
	 FOz+iCu3aRriEx4XlrGOFaNxK8gBIGNKkdA80kYRXolBLJHioLDIZy8G6CjYiTr5Rq
	 kYnjgprDleW7pRTOSIB3vjZqSUeCwdW6JlUIjpAHSScf4pPeLg1uRC0CFlpc8i2uzY
	 9ew0Yv8SZbo8eonSmBT6lth6hx4T31LewN1WvWlLmkvPliiJWGTDmmNFPEGo9CY46M
	 n1HdWAbj5t/Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9146BC3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174730919358.5769.13611871464049454581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 265027226512c078aeb5589c126bff6b7a245030d363293aac11db73bc75c63d
Date: Thu, 15 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747309193
