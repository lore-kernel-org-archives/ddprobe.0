Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B628197A92
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733829354; cv=none; b=CkJHiX+QgZzIF8LmXHd5a7SFmf3LUjLwUBwvH5JDC/auPcQBL0Bu+7hQMP99982tDV37Tai0gP79UoyABBDfnIS7diFpBYkF3HCfmzWBybEbFo939DRd6dP2VUdt8KdP7++k2PwqgauMoTgwscMU8ugBFEPviw7pejugmB/RMP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733829354; c=relaxed/simple;
	bh=/RLDH1NyUlYKQ8HZHllQc333wcJr3lY+rATUtJOQRXE=;
	h=To:Subject:From:Message-Id:Date; b=NAJU+HcFZRuJD5OMlCgVRXERkiGt/ysfgAeChACPiHEUvRGM2WTVplL4IHKHhZHTzAmKCbMczgotgKJRfRoiMo5jJfUx+FWu5zou0AEkLgTLsBRQV+KH4w8mjgM2jDsoJa2kQYMGEI3U2aex81vqON1R59hsl2Cb8PvvKXtz+4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkXe0CPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkXe0CPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB56BC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733829353;
	bh=/RLDH1NyUlYKQ8HZHllQc333wcJr3lY+rATUtJOQRXE=;
	h=To:Subject:From:Date:From;
	b=SkXe0CPOnjd93fSkXiwZz2H9aQeg+hV6koP89PuuopLN498Zs4GYsaT9U0hH/P5vR
	 aHifoyS9sGrNCwdLCFfCReozWJ70IiGwwGkhCNZXmrUTpeQu3/sfMzLAMANHF6jveO
	 rl4ycKqXPlYfNwsgeuV68y8OC7qAXE1CFd5ialFWN1XG/xK7OmeLoURm+HjPbHq77X
	 LmXtOkkAVBgDdZDrOmOB+6MRfYGwEkziOR9MGUHLN3srmbUWwekda8Ig9pUg7OdleD
	 dSVoC1X+a+rqxHooUA74OO7vsj7gFpLHfaYsb5FAY1EdWaiVsa0DebLrdXwQ2US/JR
	 t8dlnEWIrlBJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9720DE7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173382935360.13138.17199477929754034081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0dcecc08def9b1bf6032b407458bc3277441e4ef559028320854835b95212fa
Date: Tue, 10 Dec 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733829353
