Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C35325A640
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787625634; cv=none; b=qLKc2aZ5ShBYLQN4NEzZBJHs2bybJTo4GqQur3LgQZhOgI3b+o7GXlAuOypb3hQKr0O5gWuisaWXeRmx9XMXRmIOwi80Aec9F1Qe+fPbj/zv7qZVVGPg+Ro+OhbXUvlcahlkdEbXoQ0RzDqbkahNvPYyObPXO1fcjrstxEEtUK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787625634; c=relaxed/simple;
	bh=sudIZT8mgdIMLPDYfuaQ7SIyjrO5AD/wGRuBgzjrFoI=;
	h=To:Subject:From:Message-Id:Date; b=Cj/cS2bC6bU6HsRYwwj+MnmNYoczwHQ31ebTUs8WJocowAgvPpa1NLx55YnhW4PU4wcd/xsoxvHYUuOEo8W2/sS1ipIhwDpMdeX/DF2JIE8RSV3YEwtXipBsEFLaZTl4O9zq9APRi093mfBrX2CxzxU/GXw53G4AR8SlA5VVW9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VI3c3Wx5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VI3c3Wx5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E664BC19425
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787625633;
	bh=sudIZT8mgdIMLPDYfuaQ7SIyjrO5AD/wGRuBgzjrFoI=;
	h=To:Subject:From:Date:From;
	b=VI3c3Wx5eTJ+PHZj98pd/OiS7csWx5hLW6W/MxESsnNVl+MZy+ofEiA+wfNye/CqE
	 oa0EieV6ZyHVAgQIYjHBMf9WTVhvVLDeSH4VEH5tRuLUH8IiZxiwDGRhwAzs5Nu/Jw
	 KSx6BrXD1lmB+IIRNnljvCwz7vZ/MTiW6m+iyT0PXB92kvyzCrfU1aFPw+1qT3NCJA
	 U1MeEjpJARyr4vwhDPiDSE9M9ME8z6WqwP8UFJL5WSNq6pZvlZWJEY5YJVwlVBX2P2
	 djyPaujVFqfYMnunY09/KK4Xof60YAEe9JF+oYXBE6fiyKK+qG01EFxJyQlGV6fMeR
	 ukZtty65nky1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6E3C5DF9C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178762563369.22726.3832405091594568332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22a264c2b0e41127c6a995ef2e708e70af9f6ec9a9f40d5b5d22f076fdd45105
Date: Tue, 25 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787625633
