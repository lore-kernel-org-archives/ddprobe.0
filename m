Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14846221DB6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755643194; cv=none; b=I8Wa5C+0YeSjkDEmnVc79OtOHHftkDEJ4W/l2W3gO8AekcsC/k31u29Ygf5XiGjVWuGpyXxdxn4gvZMcANQwBzcnTnyXjaLpC7BLUsGwCZOoHeIYDR/uAhlULYU2hkdM8oj4eGLvszdmiZtKqPV5zUk/ZPvHNrrAx22KQm+0L1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755643194; c=relaxed/simple;
	bh=tZ7rs5hwAv55h5Dqi3rJq7+UJteLNGk9lMxSNKwYd54=;
	h=To:Subject:From:Message-Id:Date; b=OGJiQmuQXdmBISehPpBa8VpJTFkKMDbwSVzI4tckAXAjU+hMrsc5dczZv63W8rE85Vs3kcvh/+Yv/n71AuzgRsidWUT/alb40mNEy9htNBz8O8EDv/HphWDNlTgHy65GczI8Lf0lxxNeYbzJ4b/eB+dK0asaCMRabYJV3Qvl0CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVKpWOBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVKpWOBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A021EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755643193;
	bh=tZ7rs5hwAv55h5Dqi3rJq7+UJteLNGk9lMxSNKwYd54=;
	h=To:Subject:From:Date:From;
	b=TVKpWOBGg3ogFEeTCfeM0lvXXX9I9EXmQ3VjfqWkQLGVWoS4iMiCd+Ev1YbYKsSla
	 ch0IbIfiupBI4KCfoFT8ruWwujFeQhBW3AbEQr/LSMZT94Z1lGmX4B1+nGu4opjg7S
	 3SPO+3KJbBT+4hG7xOqGonNHKXeBG6VPXnuifirA5y+oDIFfTLktAvpGgTUPE8QF5W
	 NfMo0GwEOPATmFsQ4QmSZHSdbmEJQ9OKNkr6ONE0XXCdqCeZBNvZwSh98fp+B7mV+E
	 KsHCxTGaUzkYhBpgajkgRJ58JLR0q9PSDz+7dKXTTbGpr7snjpbsnUIVDGICU2J2II
	 5Ep1TAAWuhMZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90845CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175564319358.1646.11656608301775502814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2455757d5a7a5460ef4e130db8b37b0be130cd72c8ef9443080d3b552900c017
Date: Tue, 19 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755643193
