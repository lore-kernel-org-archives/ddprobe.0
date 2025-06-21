Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2041EE56A
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750490994; cv=none; b=jCc0GBk0B0+QOsQU3iqMAWsGFfcb8P2sUsgKrx9Ettn7qCEt/MTHDCP68L+MshthiXJVlBqzPIqX320ovN6ov0aO76xyM+Y+D5I/D8OLbtGwZsNhoBs7GBFbBk8l7X1QTQxVptoemghoSHFYnghIb+4f1+0uzki/eKBDY3vBXGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750490994; c=relaxed/simple;
	bh=9IeZYgoVRO7hTMXHkLyp9WUrjY71blaC75KgJVegGrQ=;
	h=To:Subject:From:Message-Id:Date; b=c2Kpy4/WuVmBQszQJnTQ12IYvAV+bgcgDWbc/MNe7WnQNw23yVqT3oSpCvrMOGFWNuXFULFJt1MgwumdQmRejcbfYpi1C0HVZyYHepH0nY8noxs1hgf3gHyHqYXU71ERJPAXcVsoTTrpD2lXHEdI2i738HXer5bFMhaVEo5EDUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRrw2kVT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRrw2kVT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2848C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750490993;
	bh=9IeZYgoVRO7hTMXHkLyp9WUrjY71blaC75KgJVegGrQ=;
	h=To:Subject:From:Date:From;
	b=YRrw2kVTyT8pVxc30kMI/+Rxds00TtAFpAZod+yw/zTl2kodotBowqfg1mY/os2tW
	 2cqm9W+dsz9dgeJBVbBxWX7jgvZrMAtzGoTzHxdSNRdCLAXijncYUlIY8vN/C9YiZa
	 /U7F0PvuqqHmbl5vr858Ryr01sZPRE0SRl7SH/EJXO6y+rjCSd3rSXv2gDPxzxgs7s
	 Gd9A9l0io25v/qvEvBI/3pMVT6ZjF3goWsz72RyeJBsk2gpnDJu4MAnaqED6ZHvI1w
	 pQLpgko+C7t7eDLfUAEqNQ3MB7LB1CXfvJS4kdmCjt/lpX9PYFtM//BIBRbnjOecGX
	 Srj4z15pkNoCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F53C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175049099357.11371.4126180195104589273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb9f8f84bd7700572c2c4e0fc4fd19c9876029adab688f6d75b2e9f595734445
Date: Sat, 21 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750490993
