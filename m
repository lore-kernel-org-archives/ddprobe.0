Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E55220CCC8
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733328954; cv=none; b=S0W9s3Rllp9JuBD1ZN9qCrsfg49Yv8B9iEKZvTelZTWOA/SejrA345lB3XAcgVugLnTogF/uKbPc83bcKBsCIJZRkD1daHMujnl0zIa792lAOMzKFXnCmP/YMrmR7PrmMVYTbaM16EGYrJOD2XEnErVhoH25AfcfxT87Q7GIdvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733328954; c=relaxed/simple;
	bh=9TnscR4PxPC5iAVoOvFPDD+Kk4Uqd8bliYjaB7eOAFU=;
	h=To:Subject:From:Message-Id:Date; b=FCCVYQjdbb41Leh7SJttd2AWGV8Iw98yUJaXrLY5CPRk1mS/OzV0b2hPfhxGamwB2pIgO4B/dS6I9zch9IZvsdzmwMkJbbD4oHiC17EFGMvSIJwZwFHwcgXg9UvgIwtM8QzPRO1bzCgSkeRkRff3BJdhwn0S2qBuEIKJyyCzb/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giO77+di; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giO77+di"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B1BC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733328953;
	bh=9TnscR4PxPC5iAVoOvFPDD+Kk4Uqd8bliYjaB7eOAFU=;
	h=To:Subject:From:Date:From;
	b=giO77+disATZzLeinuNFkR3RomGE9HFa40UjiWjUm6mJCTzqke2UgbBCMa6/63+TW
	 XgOM1I2NX6UeagkY2mYv0mPp6jU7UbolH/65j8xXYXX6gP3X2QVhzdgo4rcoCeQu7X
	 OAnO8AamdODIuwq0GmDjNOjh57tI052OZpMnH4jfiuwYJUtcucJqWwmA617PGOBltM
	 8UynPDoM5XumaK+I0TRahoh/vgejEkjqnqn8ObxYrDGRDZ1dVRJUEgedO6k08dV5Sm
	 lUYBGH1q4ak09nqr8sbrZV0xkhJjitBCL1KsV30meNwkO/eMN625gurO5CqsqA8J4R
	 iOBfoFtFWYyVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D497E7716D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173332895362.2681.10927245002453009584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 957b4a9b62460052dbe0720156841c0a3ae700577458c2a8a1f26bb65b325bad
Date: Wed, 04 Dec 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733328953
