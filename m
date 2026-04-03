Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4343E329C57
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 07:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775202934; cv=none; b=VUQ2/UPII4LwQMTxp0YmGMc2LN0czvPvUUG5xMxPBzX7yhciVPDDqjUOtaCsLw/jB7RUZvLi+2jfc2E7kQj0zq0Q6kLKxxPdMNivc4BslqUV+OYeXHsJ47q65trA40IPM+PCG5eLoaRTUycn23lunJhT4Y5sA6ow2td1qAVa+/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775202934; c=relaxed/simple;
	bh=iazmY/snSTvAEikjoaTnr5YGaHjB8Szse/XRqkPu4lg=;
	h=To:Subject:From:Message-Id:Date; b=dC9fAnldLWLYX0yGF8PTBJncS8JEiiJ4nQTp/rv3Ekga1wO2BVTZGxtzvlQnty8yfX80e44h3VJQTlyd04n1ML4Uk6MsfmnVG1yY/pCzxUtFRkJAbvWZm5DYi0ZvyXfWHbyOk3nhw/S5Rbg4Cf3DzYLYOefJ4WrVQazewHe74Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snj2RKkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snj2RKkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C662BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 07:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775202933;
	bh=iazmY/snSTvAEikjoaTnr5YGaHjB8Szse/XRqkPu4lg=;
	h=To:Subject:From:Date:From;
	b=snj2RKkE4I7MqwwbK7JCbWU7FXnbRyK51AZn20kG0Pht/c9s8aF9dNas53q73QXIs
	 E5/BvNEKni9Ugui64ljqdIo1VuXU0T68KqPPEEtKBiOFwQYb7FMP+Zz2/D471fOdan
	 cbD0VKm8Xs93eKm7bj3yfcAhqUBw6vPGJ2CHUJiAn1jjp1YVt+ZfMoMTECllGBXxDJ
	 o/PCGEq+o+FgFhKo/mv/2BCXwoXXLRCLYYs44o4ogvet7sdJNfvvPIp5+ioGiCwN4F
	 N/USRWy/xwOUxGLZrNbTZtshCRakRtq5CCWKPnUj2qOXNtUiugwOWYswKi1Jm335Wa
	 XihsJOEHi+5Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE28D730B7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 07:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177520293369.32755.1351374938695590152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd2c0194c7cb63e8d874c7ea7b276d1ae48f1780e9c9fa9d2db72ef2ac28cf9e
Date: Fri, 03 Apr 2026 07:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775202933
