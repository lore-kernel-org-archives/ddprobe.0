Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AA4146A66
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 05:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782883114; cv=none; b=M0RNFLAkwO/XE8UEynnNfg6LqIPWxeKxbnHTFW3fdpHg/MfwYFl32gGRlXic5D0qkUxKCydWyhc0se7xe9BrhbtIGwys5oHWBUmsmsdjjn7g1d58jx5X7VfNcTN5wGy/rMO8X72jWw0+obtAAMnuErrZkPncXV2P8AdKAGaSO78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782883114; c=relaxed/simple;
	bh=RqRH2W+Kw4hwm3gG40B7pZF4BBIKmvlBc1AMul2o9eQ=;
	h=To:Subject:From:Message-Id:Date; b=Xv+MkxtF3X+SqEJxFHSAy5slSZjfU5MdXiqSaAoVEAT17FFXWlebA8HgfmTEuejnnEmWL4hLX9WtN3jG9RNuaQQdryp4/nxsLJ2jOZy3270gKBDksgcIbH81hGt9oQ+9wx2R90ijlSj204prwC6YfTG8av7yos0JWHVMFMeHEzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXzjmaiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXzjmaiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1665C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782883113;
	bh=RqRH2W+Kw4hwm3gG40B7pZF4BBIKmvlBc1AMul2o9eQ=;
	h=To:Subject:From:Date:From;
	b=MXzjmaiDKznH7qa8/Ip72zKR/miYtsWi9+KOhEuWpjBAd/hzwmdP9LIIQ6gcNToRc
	 ZFlR2pfZmGmfUQZRjUZngTC/ZfmANDJ57GKcHAHg/yuMsxRRAP6TltIihtpEMyVlOd
	 zcs49HXJqmSnHcN+g4OSFSG3zIPzUq+uE8+TeqFpt8UENGVO+hjzQwDYfEoC63nSeX
	 EcRfdjKGcJwrgK1u4azJu4VjcoEFGBEvhi/BjTYBU8pAjaERiQQhOBj0hCgkjZI70j
	 F5M3ThYD6Np9Nv+yhaKumByQ02fpwHuuuObnuFhwnEZYJMYFo39pPGpE2CaomSvM46
	 B3qeB+GGWKLyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AA8C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178288311368.9213.1069544847086148497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 741a9d459343a974100443500f832ff00aee4cf65206cd19262592608cec588b
Date: Wed, 01 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782883113
