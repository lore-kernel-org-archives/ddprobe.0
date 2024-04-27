Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E071EB25
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 23:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714260743; cv=none; b=ihlucYimhQUyILJfnaFfWDhSZ/MLp7eqHnItEkWKhTMwVsvB2mSdot5TiOfh/QqTIFXkavci2ujXm1mGR1NTRWGIsKfYcI3rnEhKhtltVDQBQWZOowlAOYz1oJPPnY5WE3qGf/65SDS34g/kkpUbwOx5icunZrPz+5ok+/r7i6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714260743; c=relaxed/simple;
	bh=QkYTvCXJ67LxydvbDS+tmYbsf4B0TUjdxD3RL01KBW4=;
	h=To:Subject:From:Message-Id:Date; b=eWGG9Ruf+EKhAYfkS0wVUp9rG19zayvWlL1yIQdTgcix3RhPKnfjKVdA9AYe0VithT05YYDQUMsdWPLbvVr/nZIvFptZMjjUjJY0ayjwB859llGCCrDMNdy0Y1SszAvINiKOLRbyuRSB0UNdE3fgromB93u2OusajagkOfYi/jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmx9i64g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmx9i64g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85D5C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714260742;
	bh=QkYTvCXJ67LxydvbDS+tmYbsf4B0TUjdxD3RL01KBW4=;
	h=To:Subject:From:Date:From;
	b=mmx9i64g4A62CVmGwxZMiH7e4tlEogon2F2fam0aWsnTjkHKukMfgJpa2fYQQ3khT
	 rbe3Lu1iNxRxHdqewzboPY42l0hr14fbTngbA4o0M+Qn1Ij0L67c4TRMjcxhSmTY+P
	 gH/VQnbky5/lSdfxAHiIMWtawUpQUKmresDz0K+KMCpVxb+4nqM2EPX9ecA0Z5zi/a
	 mWuiFhMhmwAdyLEHglJlMzpEOuorBZbBvt6/0jQslz6VAyjz4wbvcECVhB7w9PIKWb
	 njQewoiuwc78lvzQg/WbvNM2UVSYzPF8Uh+FWqJM5aCJUdl8X4UZ+ybxOdDhdN/snP
	 jOzM2Uy3O/emg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C9EC19F4F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171426074276.27375.8081429038162957703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 581bd689a6afa851e37e03859c1986c7379877c1db703028040d0711fd791630
Date: Sat, 27 Apr 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714260742
