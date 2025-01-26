Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEE4156C74
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737921354; cv=none; b=kduxysh6lwL+adIr9TQW5enCxZZSlAVXb4iORBTqWAySafg0Rv/pqyP+IktIYti5PcrgpeoRM6D9UQrOcYfw9Jy3v4qaEaBnlwY8Lqr+eCGg50t9RNZGVyLEvQZ3XhXx4EmIYLtSaHTSJDonVpohljFor61UmVIe+r6HhWEGaPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737921354; c=relaxed/simple;
	bh=JzAuhafF1Lz00Aflwo3sNm9lYxj8qXguydUFC1WW82s=;
	h=To:Subject:From:Message-Id:Date; b=KLTvsjZ27JIHkevTHWHfI4xDyDwOYv583HJTbkjGptaTy3Pdv25IkYvDbQgdmeO/1n/RW9n+fy+EtUoRN0AMFlBMPg0/NATglauxJLtWMUXlJqMLrsS+6Wdcs76zse63i/Bl2CPxLdAJ74yvO0zZQzKVZPsDhv6wbINS2RPlD64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJSCyZSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJSCyZSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7425C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737921353;
	bh=JzAuhafF1Lz00Aflwo3sNm9lYxj8qXguydUFC1WW82s=;
	h=To:Subject:From:Date:From;
	b=JJSCyZSWW9BjOHlORH04vqPUfXwbJEftpqOL1tgO9OPuRrFKCtRNKEitUZYCNsjWH
	 k7vEfwxDf6e4m1DB1ec3nd63VNLyoSkkLZdyzRVgFbe2/HCby1XYdmnjdKVKkHA0/L
	 XVWsqstwIxbVQif9LSp54hhlHHcrZMrfQ+5irNeuLnkumuinANjVNk9V/u4fF8L9r1
	 oH8gIVK72R4WRKqPOxXr0Ea3QcABPYR3v9djOIfgwxcWpBlHx2tiIFP54rjF0Ko4Wd
	 ebVn8lRj0roYXO72Z6nUIrkPzB83r0q2MCs5/vUsn/t2EaJkWl1N+46v7t4wn5xHhr
	 waGSS7sKe0eAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9320EC0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173792135357.14110.8378903842887499416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132d6abf7a943c14687fcd76d64f3a47457d190623802dd1bd940e9d94890b54
Date: Sun, 26 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737921353
