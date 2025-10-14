Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF3F2877F2
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760440193; cv=none; b=acdb0jrBWxljNOaD2+Km9XL00KOfKt7v0X4sJBq9/3m+GnL87l5GG96V+wgdzPRlduIxTfzYRlS4MYVIM4zYZMXv392lGXvLbmZgZuYRmgXEeRZQTg0FqIKZ5yTUGlgcewUp8uOP/N4hF7kCCKReCHHGVlvXCibPagbK1lTksUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760440193; c=relaxed/simple;
	bh=QK7a2D9XCkiiC+j+yiTSqyFgcuLcSb0umLhdtjjFCCE=;
	h=To:Subject:From:Message-Id:Date; b=iyb02eK8UmOAHL+L3QKw2MPaQaRjyZDwoIJol1zHKwzN4IXfuKqBghhTbJp0G1njd0RhkC6gOc4LMKr3YgClwCXrOerPElxOGBUP+N22zf1+RATmq5PK3NThIvn053lXPdNrkaXAfesax85X2rrqpCAC1rNwgGFNQADUPB5Bgug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGCjviky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGCjviky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC71C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760440193;
	bh=QK7a2D9XCkiiC+j+yiTSqyFgcuLcSb0umLhdtjjFCCE=;
	h=To:Subject:From:Date:From;
	b=MGCjviky0JN+DQyAoON4gG0oTZJ5xqDyeIYlFePglNva8uz+R29+BK2H00J/jkiZU
	 pzlXB+E9CxSYPTvWw1lPbEW0O08w2JlO73WYc9P0yVdf6xMgJF6Jy/8BJZKS4aV4Eb
	 bigr64KVQ1qAhuYXlaZi89AiO2JI8iCsODt+yL1Sb4VfkhV3OkXGTrL5n7LD131dgF
	 bcTFuQ5YSnGYtOf+q5p0zqwwvSvMd9fN0CPsanIBBt0kLsq14+14BH2dJ1Ok65M33W
	 gSrImaPMupvCOwK9jvCeHYr90OF8G25bdpBX0UhKEvi5UpUVpVqjO1WLqb6/fuGfGt
	 VH7xtyWF+9oxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EB3CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176044019358.13517.18018857081614073876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09a8984eebfe6d7465c12b95b47e393665737032a315b918e77a1902ddf1888a
Date: Tue, 14 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760440193
