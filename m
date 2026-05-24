Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43346314D34
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 21:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779659554; cv=none; b=QR9cpZ8cDNvQXKEJ1BvKo97XQkju0JMlQ/vp8iWVo+Iy/RBxF8rQ7f0U3elSE2u9ca0BVcz8S8cdQC7/92YzfjtYczvwd1u5Vgzf5YABLDUqfl5dCfTT/WUSpkV8stWjP9VnDbVtODOnTikZmPj9Qb06XS/cp2hmcMpM80B3/ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779659554; c=relaxed/simple;
	bh=Tkm51UU/PMDWATgcIRKF/oXwKLUO9lpz1qE4eXm5tJE=;
	h=To:Subject:From:Message-Id:Date; b=tmef91qKk49dldgVwUJjHkaL+BP15vns4uZOvuNTFv0rsthVX3fNGfuCUXQmhZQ100qejAdMu2nXmp+6TPGkxp78OXLd+dV/ZKJwpgiU1OTmqapwMxDiYoIAoNX+ziRy+QzR/ByX5eZ3IbpBLNnnBB0929/sZHr+PF2Yi3I5Al8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvgBnqFL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvgBnqFL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E6FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 21:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779659553;
	bh=Tkm51UU/PMDWATgcIRKF/oXwKLUO9lpz1qE4eXm5tJE=;
	h=To:Subject:From:Date:From;
	b=lvgBnqFLBasP6wpWMZU/t9+AHIrscArcQTCh/rb9KaEg25UVaXlZDFy1AGZd0+5Hx
	 4/eqkn48jfew6Nq6wCfOY3XKLb3gRH7tAoSi6NIp0zCgS4MvzK/7hfzQgwCE/hEiX8
	 araQOkENBA3TqixcYfWN1eTv50uPowgTLhQxSjCuZj5Au677cXuJPLE3GWf9pKLG93
	 PstdCH3wFtjub3lwYcV/+8NIrln9rfXgF1CPDuGZWB6onBq77twZQnFB0ALuT0zR4Q
	 Tf0V1dnn811mLsfgvOoy6tHd4DpppPsmPZREw7vn40msMceF2ixjKfzrHH8gJvI/bn
	 MX0nMqkgzbMVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF8ACD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 21:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177965955368.9926.3133959441726904262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19009aa0dd677c6a73a78046fe00a8f1ba7331a9804c317ac7f63ab251c42f1c
Date: Sun, 24 May 2026 21:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779659553
