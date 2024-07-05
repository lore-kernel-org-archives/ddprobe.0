Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548102F52
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 03:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720151123; cv=none; b=WDzz97paWFtPXbcf5kCIZ0s4H8xEToj4yGfeW96cHEomawS9yl5w9m7jYqC7hiJ2AQocWQHj1sZ2Dbhem+rjsir3iN4lJX0jUFyrf9OZZ4AOiXNlFx3NNiuShPl4e/NCS8KRq84ZGyJJfg0mKKgC/2I7Ace6MmoMFCU4ptYPw+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720151123; c=relaxed/simple;
	bh=ztohHEIFlput+LL20nWNnOpqtmmfiPkQitkDTNq1KhU=;
	h=To:Subject:From:Message-Id:Date; b=JFS51sZi944ASlSZ+9oBt3M4XiDtelBcf7+XGmjGpJKTZKZ9H7Q3pfcs29CYOinv9utjEYKjC96xf+GBUVlEGVLj4C5JJhVBS/JkBKo3p1TRwALQcEUyXWn/oMN6CnXiE6yTtbNomT+nr/AlEeckCUy+YZol6oC+M83VZQMIs8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p01H+993; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p01H+993"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2F2C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 03:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720151122;
	bh=ztohHEIFlput+LL20nWNnOpqtmmfiPkQitkDTNq1KhU=;
	h=To:Subject:From:Date:From;
	b=p01H+993pfDuFHjdav3tT9CDKZUMDnOD4Qm56suCtCMQh2HEkarRytEVFoxnZz7HP
	 ZKrpO0+yJmbuxou6LWhAQqSMak+NbULjpPGbhrgwDVf0+QJcvrLURigk7tVscSrZme
	 GenrqgxaTdqC8XA+squgEXD3ah4iMpNEHezTl9Z/G9I2b8ebM1izgQI8wFtpRM9MEC
	 6sNqyFH851NuA4Vw3WVIWVJfUUuRZZilnf7CUuf8h+hSdIM5mhTAfXKt/61eTpSErG
	 hgXO0ASWefBiFsKpVVRQwhBqdrcHijExWFIKRb/y5nfX1aCBHKK3ZdjIcy+HYXVSv4
	 8GUTicgyBWZ9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C72D5C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 03:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172015112277.18502.2736041912566082018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c2572593c6492afe097a2efa91f7c2e83eded8520fb99317e39046edb8165d4
Date: Fri, 05 Jul 2024 03:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720151122
