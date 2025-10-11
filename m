Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3067A33D8
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760203794; cv=none; b=ihSt3eVqsBc2pSzKe1v5XZmS41GeWGs4syMyXfzYfDy6mj1WggLMQvwofWsWzP7yf0HoJYVuNWfPiQzwGr9aZP3RZtJ2yrO2kYFweMuSwPtdK3X3gSQnoz006fxuU2Ow+Oo+AJ6dMBNgPUFmBLC6AOZ2lHfdEb79WGQRx1HySic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760203794; c=relaxed/simple;
	bh=sqSM5JHY85YGF1Vh3Y/g+SaV1tQNaMUmK/n3fPp5guE=;
	h=To:Subject:From:Message-Id:Date; b=Rs03+NvH1rOOk4rtbMdX5jvScMpaEzGiS9EYCD9Dgn8di/KMYYlqklL0M77lwXfrPi6BGhjIUnFes9TwPYqHBevr0iXO3UV9N5MBDUGXBYpXunj//KOHlT8Hz+KZ8ojvzA7vvzAV3Ixc7piA8I97n3RdlejtYHhuPrkyo+NxyiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s770ZODE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s770ZODE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D2DC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760203793;
	bh=sqSM5JHY85YGF1Vh3Y/g+SaV1tQNaMUmK/n3fPp5guE=;
	h=To:Subject:From:Date:From;
	b=s770ZODE2sspTnZ0M87GhaDX3xRYgo2IO51a9pdZ8PSQ7irmc++Zysy2Yddko5VrU
	 l0gSS7jY0JuyOQOB55l7cMza4rrvn+LjOPHPbdcjf14pv6aI/uy6zMct3YOEOGg1yI
	 i7bnPdno6NlaMbXcKjrTlKZIYi6yEBMgzBshAkLaZMB0NhcBwnv3UbhKjKDTtZ3yAr
	 MKcy57GW898t7kDuIShjD1aNwV5pg5NJPzxqu/AFrz59MYncX84HvVADTheinVsUIF
	 wtMJhbGBUnLgLJQRipZwHeHHVirhBp4KAQsM24ZVkIsfdUscwLeDCghSZ21gkxH6ov
	 hRncG0IMRQHww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95133CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176020379357.28748.14610580858118303247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b974f997c1724a26a4cf059372a07351f7ff3f03a7560c0281005ef3804f36
Date: Sat, 11 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760203793
