Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCF12869E
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751594995; cv=none; b=ElW9lF0wLlvXjpvRKi7y52bTQzfeBovkr5Q+QungLqYzOT9rHGOta6vaq+BmiWGfEdq1uSWKEY2B3uE/m+3ydw+FnlG7POuz6lO5JyFomUIkFgRtwepgSmzwDLUSBkQ6pKgTOUirpEVjcq/mQRblCnKYuz/42faHZkiAHYZp4qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751594995; c=relaxed/simple;
	bh=mzW/YYplNRGH8hFjZWiyt8s1KjA0frFiVjSc64x3X5g=;
	h=To:Subject:From:Message-Id:Date; b=mtyVRlsz28E7P1n5ALw+1uHCGtYTAHlu4lTpXgVDDbL7mVcYcqS0djNgfIfDoQJCdLxiSJb461pFfwr6dGSB/YDqUgJ6/x88raW/EepX15ObGCbw8Ukt2ML7Gek003JX1R9sZ1DC35qq3WQL/mYbiMNWMZBscZ4EpkLMTHWmHMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUIUAYWW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUIUAYWW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ED0C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751594993;
	bh=mzW/YYplNRGH8hFjZWiyt8s1KjA0frFiVjSc64x3X5g=;
	h=To:Subject:From:Date:From;
	b=ZUIUAYWW3klPbBmEKFBDJFEBJxkr+IqYe56EDj6ZfDSXyHagjhyDqggnx4+8X2wPm
	 wH4IiPvdlyoR1wcv/kB38hmcE/V5fWJ2IWMwtaUmQgCwgP9dR9EdGjMOCzGM4W0xPJ
	 /0tiuW1XTfBNjasKZCODxNVfLh+Rrbshl6mnV+u5vnpAC3o1c4GLkBV58Qa7AtPi9p
	 wSpkNNQJh+97cQL7A/vBYnASwjLaB1G2NOxS5tcc+5h41nzqbssPbrKwVxSuKJo+Pf
	 ZfjWTvM7SJc/rnISK2HxCtKZpKvIruuAUUxBRi0HTxrGx6OZMYqxKuYWABjuvWEfKY
	 767YXbBmX5LCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B76C83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175159499357.19725.11488463001844353289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39dcc192f6bff556f1196cae42eea3e8bc46ef428ea64bf2427be25723d8df98
Date: Fri, 04 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751594993
