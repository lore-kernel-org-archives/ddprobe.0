Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6A910940
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728711954; cv=none; b=QfSJAR+Rm86GJ1Vj26vT4woNBO5vMOVlnIz3pz50jsFzpbcYtRE+f7v1K1ycC5WPEsY4D0tU1xlBwpTO85FDaPIy7tI4a7am9YqxO93NtnqwjlV58KtiRr4V72aiug1V3zxiKI/TmGXzpXbtMg6RM0Wuz7Z32rIWtwfNeeAvdL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728711954; c=relaxed/simple;
	bh=U4a9R3mXeoHrINEOHfK5DSzzCdTV8G14W/dwLn6WtHk=;
	h=To:Subject:From:Message-Id:Date; b=bm/tZHhX0s1riV8k4alL8jRRBaXeRQqGL6M4kt+PWSABKG8Coz9/DcpAMQerlmzNbLNWNK4Ym0OoWEc6BcO1Frfu9BxBkzw9kGtcW7+4nVu/OHJNcvSkvNIH/lG2CwsOZ7a+lInjhnPgWgGx9gZc9Kq5ZdfgcRCE/hiQpGteX1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWSbti8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWSbti8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4973C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728711953;
	bh=U4a9R3mXeoHrINEOHfK5DSzzCdTV8G14W/dwLn6WtHk=;
	h=To:Subject:From:Date:From;
	b=bWSbti8CrLoCaZMB6YWHagrfFwLyqC/arrhyvP57DcC5vop77tZIIbzS9wS4rOb0r
	 ZtENSK5Em64/srSdRhMMi7dzsg2t381oSOUYJ7aH56z0GPjJ9Ugq19TSKAl1Q7y8Nq
	 D3cNIy4Cjg5LIOlN38boJdcZOPj9Vs03c/g98Yf3m6GUw+mbApVAYMy2vLUFKsHOrD
	 ZjVwNuA4mpEwZzEF4KQgN3JQfVhlua8vja/elI8ygZOqF1ShoL7yDh2ewDuGvMp6yx
	 JdIG28a9rQDrCQS8Ay7EmgOk99Ixnhi6rBKc5CzajDkm3nAl1iyXUkPwifJAo93Ynr
	 MAPFlsmV/PITg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A43D9D0EE1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172871195366.12712.8061494437057665019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30970d8938e05039b7ee904c7ba13ce708b0700b2a9c6646af3074965ae943ec
Date: Sat, 12 Oct 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728711953
