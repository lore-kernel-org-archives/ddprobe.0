Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A6A1353E1
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 17:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713115763; cv=none; b=Ept62f1g415XFyYnjQX7Evd7gVkGPNNMmA7rNDeu6OVs0oX7XxrcUHxvPoBe1P7H716BB584kpMtA9CsfwJd9oqdHRpN6+08VvitkqcfMvEtc3y3FUgymd/VWUv6sKhCKkCdYS+tUYCBEIlqbmPaKJGwcPIaIe8Q4SmgU8Ci7Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713115763; c=relaxed/simple;
	bh=iVDqkMe0SX6WXrHZg0Khg6nxsIbkLCoCH1JRDmsxfiI=;
	h=To:Subject:From:Message-Id:Date; b=fqKbNIBCmyUdkcLS2co5PUFi83Kd7pRDu/fRoPOevT0HnbCttmgkfRvPKtnKz3KM3I1r0abTc6cIyQYsixU4vNiHY4Ja6i74XaKGchVd456vlP0AdR7LslkMPhmZV5mNgH1QYRNlWfvYpvG5yJPEvVah2QYhkaWJuIE+xva6to8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmPjVSMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmPjVSMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D233CC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 17:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713115762;
	bh=iVDqkMe0SX6WXrHZg0Khg6nxsIbkLCoCH1JRDmsxfiI=;
	h=To:Subject:From:Date:From;
	b=PmPjVSMj8Gidjq/DnQG0WmFSiloDa0cWWpb2GXTA1A/58I+6jZj30so6ufyU/g/ZX
	 3W8+Y0Jao+VFhqzO4w3yDLMTJa8SfUUWzzb/m/NIXirGK3G+SH4ETFN0csQe0G/mZA
	 9jXS1ctVZwBKg1NFnwvbnlJRhJswrAIvJjYRioz7xR8xo6xQ2qdAPe0Gf9NJU2lPvv
	 1xSJ2JMUSZtTPGu6wXs6kRdVwfOYqRRXO2e98IxrURy6/7SkTLj1X6UlMVY86gfbMM
	 Y9mgFZtdCosuE5y6ZTyvJl+Vl92vJYUYPiI4sLlV1jPQcaTpvbV9giO47YgAgkzuoD
	 mCuFP3dfCceXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C053EC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 17:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171311576275.14203.7227125446364619270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89bfb26d101af102e018e389e76f5513502e49178b55fb4508e57681a34f4b2
Date: Sun, 14 Apr 2024 17:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713115762
