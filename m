Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004A218BC3B
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767498834; cv=none; b=AUTwBb8kKh1Lm40NJWnk9FJjLb3ipOd8xuErceDAEj5nk+119bZ8+I7m8Q+hKkBQTP3Tudix9xdfB+Rc80IHgPvBG7aOguK1thoqavzhbQiUrK422owR/nD+mFI2XW+Z4bBky0dSL+ffgmP5RH1PzD4lOJdiROoN0lxMOWV9RJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767498834; c=relaxed/simple;
	bh=VCVmOw/ab0HcU4fb0VkV5nkOx74hOExn7xihkADeoP0=;
	h=To:Subject:From:Message-Id:Date; b=JdGXdoNeJkFRXXGgpE90W/eUyO0ubMaHA6KbrSkHgnPkMC8GU1Kzx/ajPjYypmb6HUrdzrm6Ra1lYZJuL8MX32aArIiZSAQ0PfMxdQEF4RhTQ0m2KLStJVXj6VpW72mYbNtceu4r95PEI4nauHrCnlQ4rTOOrcp8wWFelTqBpW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DU8hsRzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DU8hsRzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2342C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767498833;
	bh=VCVmOw/ab0HcU4fb0VkV5nkOx74hOExn7xihkADeoP0=;
	h=To:Subject:From:Date:From;
	b=DU8hsRzZ9IkRRNJXMj3uA5usiGriT9XeAV93vs/pZp/kydstgXlk4L1Uzb0tKeS2S
	 sVsCoN1THJJwzlw6tj8WmvPo9nhv7prUyu93c5Z5rI8iMzKZBYri1k4j4jj48gsCQg
	 NSUwbpL4MqLXeKcvYAqdBim/isTsILRffyX2Ayw28a9om6nCRwce6DHAkw/tvxG7bI
	 BS1l6WSnTSFP0IoVhOA/PWBYAn8ZecbMMObL0etfN/pRU24JTqYHHtyC8UxMJgYAdD
	 Bf65HZVMenFz4Hjorgosqihavbre0tcAwte8kNOwwDFPzJSUpnr8RWcsBOytRLiT6e
	 YClK+jJ0I50pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FE4C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176749883357.25401.4571233574559359781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04f9e1084721b336da2e5ab47844435930f3d5bba35f2121b5b48d13f8480201
Date: Sun, 04 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767498833
