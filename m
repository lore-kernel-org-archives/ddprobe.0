Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4787F1ADC6E
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737608154; cv=none; b=j147Grk8XFhgnC7mecw/UeeMOa5KsCM0ZyRuEViUW8sk7naiBpo2YRGCbYb1zF+fAJ7VG91fy+pwm1KOmheEX04X8wQITj4RaqqVmEXNIxo9VBmWbUDrNaRhGw5zczxtQsY+0bm2Gkex630BbV9fzp3cXd7hrE7RlZkhYeo+GLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737608154; c=relaxed/simple;
	bh=aHShXyh0fA0hVvCbdJkCujbUEpnNqZ1YtAk2+oG25qI=;
	h=To:Subject:From:Message-Id:Date; b=BcXFTJk37DJZplkVlvtlVcog2Cqo4EBDtqiXsDzzKSflSYhamK4e9blwLJ82QxC68DBd1VH+1ZpVrZrh4sp7M98YGdDJt9ulv43Zf06lFY7h4lcd0Tt16oOyVpv74Ou6uHCgnq7/PMjaLl3BgaamRK7wETOvZPyEhGlcvYbolyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvYFDk79; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvYFDk79"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52FCC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737608153;
	bh=aHShXyh0fA0hVvCbdJkCujbUEpnNqZ1YtAk2+oG25qI=;
	h=To:Subject:From:Date:From;
	b=TvYFDk79HKRkaHujgUw6iUayXxIjs4Fb8QSENRtJI0kYICz0NhcmD1OsN6/iTS04h
	 llFL2nUgiavXdQUyNpz6aNq/Cx4LZLY9KMsR+Fwv0K+Oe4H73plKEf0plzVLSAk+as
	 CimCXG9mg5dZKFnu04K34Vxw3mmbmWqM7f8xh06cGM7rKdg96qDZHZCZZtYuFc1D2V
	 ID97ytkzpAcoIrgoBxKxvpKdAuSaxpfZhjIa1zUrqm6uSDklBTZlRiWb8WE3VlyULO
	 Yc9rbm+/yaG1iOgtO/FNcVC6EhNb/OgLeKFCw04pyI9VAUOtrYZwljqgUI6qZ4qbC2
	 ukflMockEzEZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9456BC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173760815359.3091.10979622104948434015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0562e60af1387753fb4ea0edc76d67f47b007eb58bbf2b2e17d542d246d29ab
Date: Thu, 23 Jan 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737608153
