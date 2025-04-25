Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F407610B
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745551195; cv=none; b=cBUkVpU5rIPThNlkAVEGrp3PW+1TWoa1bm3W/63WaH3QUSekt3Rzvv/3EzwoV/cmsrTUeZur6SxI/TIBmuDVvDoJpk0oExxqMR23z2Bz8hN/iOh/BGPEJURoa5FxwxBbc09aw7OyqqOaTzl2rLpYNpeFQWiqNzBB7lv8EWWOKMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745551195; c=relaxed/simple;
	bh=CVjIxHyUqAyFjhJRWFfr8V13spPeL/Mt1WTTnX4e6mg=;
	h=To:Subject:From:Message-Id:Date; b=Rud6Dd/nZw7/ASR8DQRig4jMQmbAvL2ySekNygrAyAdUphiQd453JEuDYONAaj5AJkxxAMMgCgqHo1Q/hNOIrlGk/4dm9f7rUBDEfNJGEIIvxgiseNEEQSucej13W2NyPlxd3U2BoPPFhnjHoy2sGDvPcKiPFYn5d10Z13drA34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANsmva+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANsmva+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20F3C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745551193;
	bh=CVjIxHyUqAyFjhJRWFfr8V13spPeL/Mt1WTTnX4e6mg=;
	h=To:Subject:From:Date:From;
	b=ANsmva+MuYPLxGT5rAft62ezlPA5LAu2VsvEGeIsQzO7Z1jukClGnFSrYcZT7ktfN
	 hr6T0cJxwbG8r0VwN3IbbsJkRzsAvJq+fU4rVj3oC9RQw2SYgw81KjtxXfHNr9yYRp
	 24QDz7gPElrYti91l87dNXO857XQWHhVmWbf8Ea1O5OD58D82Kxdzo/8xGoAndUDQX
	 QUIMpyi2vQtVW+TLF+8cMADHTLB5iYFZ7Zd6DhOW3/kGeJtCGGdSrKd9ZPMOA+GbXk
	 QUlnNIhE+oMDcqRrb/wz/DvLomTbisCdMpllOvFPRahwl5Bjf3hsnYgRXCHB4cunkP
	 1siGjtW3vS+pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F365C369AB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174555119357.8471.13150760177475944591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0cf0f3e14795df89deb7ba64ed724963ad0e288e3844e1f5f60129581b9d264
Date: Fri, 25 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745551193
