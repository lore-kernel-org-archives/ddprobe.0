Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109FA4A02
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769817834; cv=none; b=rc55C4WZB1QhzfdZ+FO9lYd7YxTezCRHHW0V/kwNys7SqdSTTRe/tSjxrKm05v8tKfzQyDj6Fd4bZv9162x5ZMg2g2Lo4jZlnv3rw5AbvMQGSP+BUnAs07uBPJhi52cfpexs9ySB7O11mMOf0Xfo0AGweaHlTRDkqr2mZJQl0CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769817834; c=relaxed/simple;
	bh=Lex3mscPEkHNeZ7wldmY4MKBk41RT18EiT4mvQARhWg=;
	h=To:Subject:From:Message-Id:Date; b=BggxxYnqBmwinuZK3S9RUtMfgvnSDSSFpmU3RuDOs5BMwRLeXui6t+vSS4Qd5ahy6Tq8NVlcVbEZzzQLgb1c8YhA5sGJ9yPYrGMB2x/IsBVt9ipiR6qqopfDTbtVYKqslgxyO4oqdQ6ABgf8wnY66eh+kvDSrFA0n1WmKC4z6LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbS415Pc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbS415Pc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8160C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769817833;
	bh=Lex3mscPEkHNeZ7wldmY4MKBk41RT18EiT4mvQARhWg=;
	h=To:Subject:From:Date:From;
	b=KbS415PcYmAPuv66Aof4Y6lL7AyoUxObiGogcbV671+ki9vWk0vhQq2ViASSGLeco
	 DZ0cHYKaJru3ETpLxSoygFrQmYkR4Vi8DjuuJt5z5C1gSldXyGNcK+I4aCfK6YVkis
	 E256jEWYrugFAlgWKI9KYTlSH1dtEHvO0K/E0mtku0VULA6Q5+J72C2vHl1X3rfEqq
	 Q+/G8oqnd+FrmWlLa7HsrE4duSGpEH88vBU/2z63uCfHAteGrmwAGjYCEOrQyNcNBw
	 65ifL5hD4vgytbI5ybfz3PG9Pn/sxN1P+BLCNB/9+5yC5eceEj7N+rbXUDYPdRNtxA
	 suhzF9/RTYXBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96860D49C9E
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176981783358.4624.4316766995273107055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0571e5b9537901e7527200f2406797e6e2cec1e7858818d877f2963ec6bb5962
Date: Sat, 31 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769817833
