Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C3C24CEE8
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755869394; cv=none; b=XnaOJ37rWIpGl+Dm+FFAcESdnLDrVBD33i2A7Vau13Y5GoD24XZNLgEg7eg0nFpz0vMx/mbhxfqkd0X4fjxXBm8YnYFHL5ibo0wkaXwh0ikVhg1wBfV3DF2rbhVU2xw8BuanGr5P5uLI1ipnpq/LvU2JJKfdMrUan8RCG3GqkxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755869394; c=relaxed/simple;
	bh=A9CyrRBo1+3Ls2kgN9tbS8vu8hDa/ypo6VGA3OF5QUw=;
	h=To:Subject:From:Message-Id:Date; b=rZPqAjhlSUDqmOABDL1Zl0JL5BXWQqmXaIGgxH8r+TF3svNoZMD2yQwA4xLTuNikmv1W7GtVsmvKAXiWIzH7GTdGjVNqH20RKsW5JqyQBe+KkLYK5T7yD8VX7RIfuRIWYybDUJAiH+7cIk3whiTDEgYgLYmgHp959ug48avyEag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSLRWsGY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSLRWsGY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E28DC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755869393;
	bh=A9CyrRBo1+3Ls2kgN9tbS8vu8hDa/ypo6VGA3OF5QUw=;
	h=To:Subject:From:Date:From;
	b=PSLRWsGY93VRNS1n6Kz5vEPvJnPDmJz3kIvXZj8y8hp/7VC92J0UZ3rTwb+0mHMnb
	 LMVXAUnzEZSnRJJqLxdOCS8FFkKtTwl4q0tNNHoQ1btrlbNfqTor8FqyODTZPBGlXi
	 MkPfUTOw8qsVucGq3SJ8DQXWAEPmifV3qdn94h73z0SeIGayxxE4p/S/gYB6eQ2HKI
	 pFMpg1NA/5Ma1bbWIpbrlf2tRhO9TmLlT8rwbWzXi5Uc8REmqxOfU2t6Htme/Km3h7
	 pNR2u+bl//n80LTMvaaLhqmyhAGvTzCD99Sq5O+hJm2/d/6dWdVTrkm8Tlcy7AQh4s
	 eCUPxMDN5SS2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4ACCA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175586939357.10267.3953565407985840650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78914314de17aa392406ca17b9475ca8b6d07c45bbb92e6c3cb9f32cd1a19b4a
Date: Fri, 22 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755869393
