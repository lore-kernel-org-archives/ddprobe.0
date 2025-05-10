Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC925223
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746878994; cv=none; b=IllLglJUa5Mt32MSfBpYi6g7DjVecwTMDeufpMt8PDpcY6k2hnj/9vJNtlZk0n/80uwDsmkHWjfP61mB9XlVtZrlm/M/2dUid0XLmtZOW4D+s1w1sxTGLaIYL1r8mFUb1hbQThcrR9Vsrj8FfXCdhF3goiSI+hzjcoCAI7kZII0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746878994; c=relaxed/simple;
	bh=kBd+c+rQaRtzB4TJC4/nEaTskqnR+LB82UvSU0BmtB8=;
	h=To:Subject:From:Message-Id:Date; b=ZOzPyXCsBLSsmYPcVhtxi5YKNcDsH3earS5VbP65f5+kGz5Z0YBSpD8b18uRftgAZaHL5cyJRK84HSDBM8G866G4pFNiHJ/CeDdILWf2E6gExhkC1wamWpToskSg+oPOhDiwmA+AD8+aIku/V8ejQCCMXjF8QhvQ/Qzqr985ja4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEQQby6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEQQby6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75F6C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746878993;
	bh=kBd+c+rQaRtzB4TJC4/nEaTskqnR+LB82UvSU0BmtB8=;
	h=To:Subject:From:Date:From;
	b=HEQQby6mWSb136oCpl532W11F5xEyWrRKr4BFWd19grGQIgmCb5DN34Ayzeqy1qb7
	 feph554dKDjiCLUSmGenONuBC6s4hs8ZH46qlWzZJYlNdLxOONcthoCCaNhx0OxP4X
	 refsi7YXHAWwh6IClkiLhyKj6svUbG07R4nhIcs5Fy4ARkKOAonVtBM2+0QBDjcB5d
	 Kdq459Or+dg4KLPBLjRjqrD++nGawAHJ7uIZPlcth9dJnnOwFm5khS2RE97mX1706I
	 nRUvCCLjA+/Z3V3lWY0kEdErUmk16m916O0xsRvFA5+7zGFDUCuAFvF3jWYisA5ZDV
	 agvNszR7ObgAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F7AC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174687899357.13821.10046160968582003406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea807738e98e9b671161118cb5d7c383b8efe55f27ce5ac4bce281abb5f5fbfd
Date: Sat, 10 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746878993
