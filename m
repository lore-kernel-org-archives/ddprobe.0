Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EBC247291
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758091794; cv=none; b=Y+2LQo0CLpjpy8nYnZ10HyzoI0eLVDhyrdyG9Szi+mIePFpkUNLWoeIYWTiksdyX249ifX/rNELo/t0GU70DakIH5rjMwAJyzMz1+SEBM20ejvPcncqh29eQP32DH1H403e9yqYqi9gifnCw4Tulxtst1EKAL011JSBumaxr7OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758091794; c=relaxed/simple;
	bh=QU71q4xJG6OEeEv0Zu10ka+TxUTmd+3KfWE4Yw3Vnh8=;
	h=To:Subject:From:Message-Id:Date; b=XH5vAFIRC1lkWfj19fPIKKKliaQ21nB5IcigeaARXWhEljzYKlEDGQgL9xQz7zgiKb4j2im/TT3KkYTpghucxZO37uHMMGgchNhOvQChMA9K4gTe4xgGxb8Zf3CBwQlQtwH+dPyfeJ9C3pKi7lJlDzdRNMQgNN6Uyp1B8PETMTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KE4cqkg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KE4cqkg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA85C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758091793;
	bh=QU71q4xJG6OEeEv0Zu10ka+TxUTmd+3KfWE4Yw3Vnh8=;
	h=To:Subject:From:Date:From;
	b=KE4cqkg7gEVe9mn0KDKk9jUOQTtpJ9syc+8qYSm7lLUxJd1nKrqCF/UVKd1/pP1Gl
	 fdsrfjlGXT57CheNYU7HT/NCq9DNBXfNnPOZAGz6naDf46EOwLMtILoVUK98b+pxVL
	 5xm3P2Owpoj+efIrgzauQe2C/PcczA8h15gpiXHF1b3e5UAG2/QkoBzhtncyerHyGk
	 cSLwo0yECsZrKeH4Yu+hPO/JLiOUoDttF1mJQ5YMhzFQjnY/Bq8dY/d3/mY58aTkn4
	 YusKyLmSLWZFN5l4x0HNBENSFCAqr74RETlPx0+oCR4Rz5Ny4rHicWfvizne7qUK7X
	 JA8+GG3lZYjiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6CDCAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175809179357.3060.7256900872753527146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78f0d2807f8df3cba6aafabb56c07558e07e607910df825c50e07305656bc7c1
Date: Wed, 17 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758091793
