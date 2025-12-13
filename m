Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE22EEAB
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765603974; cv=none; b=I7Wf4KZ1SEKwEA9x8zlULamfNC8FeXcT8QZ/N2qhgjTkfkXON+8xzHbsMhBQnajZjeVhjxHdzqctsL+ddHbc1TmXx/Fu+sQdxx2tvNdSW6HhOCF01kuV4KlFspGmSKHCCxDX3d1vW0TZK7QwRO4Pr7Ipyx0/HatH8g3gCvqtjvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765603974; c=relaxed/simple;
	bh=dyS9J+Zjqy6gyurquOxtuNJFToALB6/m/v5s/Wp29ZE=;
	h=To:Subject:From:Message-Id:Date; b=R0/Yj+4EpGZy9M9rAy9o3it2f2PPQNtV+deSyrSlC6z9NtSUnea2ukXzqxCH/+g5Pu8z4EYO9UexpS25voBRGLhF0DbcQqac0u2Wt6Z8NEHIt9iIdxJOXJ4H4TcvJDrwIfU59avLfLQfvUhrmznkR8VJ/oRSXB/W4AyvwTCZwls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CspiYH3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CspiYH3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4F1C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765603973;
	bh=dyS9J+Zjqy6gyurquOxtuNJFToALB6/m/v5s/Wp29ZE=;
	h=To:Subject:From:Date:From;
	b=CspiYH3nwajL+REd6lN9oJhUm9BpR343OFgNjvySmcVeiPFARKmRMSLeshDcSzpqj
	 AOGnylpVHlJThUjPh1Wam4mzhBSb0+RKlY0z5Tduxpzkx25uYFa3TtY8k0c+kSOvI/
	 1Pux4viZZokO+fPV25sc82qA/sbP4YbzLpI/yES6ugrdEkHxyg111TDftx8/utrv+G
	 LdSd44FHVwTZy90sL3/nD9u7isKeBUTC67WdkIzclA+vgH16w5IWlpuFKMlyjBZeI8
	 HzS3kuMepr2OZzX4+AmK8qPxbK1hl2wN+narhqgsHjQB1008TbXziMVeKN1+bYyKpZ
	 YbUbpfPplgaIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96550D59F6C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176560397358.30638.15077205158187375156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d537e631d9ffbfa7d59adcdf926b89db4c27f870a1bb3c1478d851d07e11f64c
Date: Sat, 13 Dec 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765603973
