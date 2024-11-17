Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357CC15C0
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731866754; cv=none; b=VCmcri2BUBSLxCBa0IbFvhqJx63Ny+qH1cbg+TQobqsJ93F4iD/ae+pW+YiQjvVPRh9uFdDurSq9i0yv6RSqCWIRcvW/pKD3qgeJ4QrLCJfoZDhP5PqqextOs4za6z04KCc7hPa/A5Z8Bjb+rLeNgQalArZxAFUwpVMRMMxbK1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731866754; c=relaxed/simple;
	bh=M5ITIdcOMQnYxHEoTVatvp1hRQbLEMbHR09A3FTYlxM=;
	h=To:Subject:From:Message-Id:Date; b=Tb1kEtrf0cGhSgnPA9q92+qtjcHLRj3t01HZ3OpSWaAk6s65ECANr601EGZjvkIx+dhiQdVx/PMwWJs7aqTOXbTMVbobkl3xgufUAMmH6l26YKEcwH2EnGlqJkD4OdgLp6IZjYwrdR2SxmqHg7nXC/MByROSRkP5l3fePdyg+vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9rNvl0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9rNvl0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B0CC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731866753;
	bh=M5ITIdcOMQnYxHEoTVatvp1hRQbLEMbHR09A3FTYlxM=;
	h=To:Subject:From:Date:From;
	b=G9rNvl0i+HSqopBYiXcUOAt7Hu8y7ktH8QTIiyVWGTiRMKOVaR0on9ua3m+hy7u3l
	 ULXhuW/CJBjA8QZB5D2X5xztERmpjRoGLetwFWJQYHiH+XhPXYpzo5Os38ulwsrcwS
	 I/OUtMvNDaDV3ceDj8yCRCEQUlRLYadEKWaBYPkf4+Wp9D4b/Xib05a5+dMp6w3eVw
	 W7ZUkYnMQI+rA/PI/J0/GwnFRkstbFOA6l7L3pu/n9qlECprekvxz9BYTNaiizQIv0
	 0GZiOGGbnLcvOPOMGdeTPuMhAZfVMxn03aXbq0VsaIulztU3iBsvMB1JN5GPrCVNrj
	 3SpDDFS0Rdtvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCBFD10F25
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173186675361.18375.525230145193758681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfc88dbe7199eb1c7e649e8ac31a522e82c673c4f1bf60d9e9266f3a7d3138a0
Date: Sun, 17 Nov 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731866753
