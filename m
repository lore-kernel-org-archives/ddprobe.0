Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1876B2AE74
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753950594; cv=none; b=muEt8Q9oL1xg4O44r/9txghKc4Fn2gTcSM0T+z7HX5b+/ekBwDtlnWsGq8HZIwzrPncxDQy+btw2SDkkGRhX26QmDoZGFm4apsHCKGQXWShwZqVH98zhUd4WUUAftMeP/i8+TE5IHzlPXootPGBD+ntIV7xF63Bi0bjmTWt/Cp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753950594; c=relaxed/simple;
	bh=ZwRhaI0e63S/ZSM7/5OpTWcUPy6RVX3jcQnxag4ozGw=;
	h=To:Subject:From:Message-Id:Date; b=CbdVpOJeGjwciQLmO+mOGnsdKq3cR6Q56UFshpcjIBbnU/Jj2ZD8K2sgY/Bh2fH5tCPmWxngdU48tBsGYqxK90urpPrWwh6pRnNkLLE0gHo0ukAOBWMky0Ej/hfkakjUAxXEsoTq+/Ys4jwJYUqda0thjtlXeOd2VfBopkZs9As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+ceDXag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+ceDXag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A223BC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753950593;
	bh=ZwRhaI0e63S/ZSM7/5OpTWcUPy6RVX3jcQnxag4ozGw=;
	h=To:Subject:From:Date:From;
	b=n+ceDXagd/XsG7vpb8FXi26Ch9V5Kzh2ta6ZimaLLTv1jNB5j0M36QTiHXPEwPzml
	 qWFrvHvNcqaat2LFE5SivSQqc5a0PI5bVMG+EwEI38U29e2vxAQw5eP1EhFsMH0ZV/
	 92XS3VZr5E1ZhermYeuAxat/66FIJFccGHfnqGU7H2KhG1eMqJgfJlbHHISZw5AJom
	 YCAFGtf7wpBHV106Bs1dvFAgOGp99aJAKc2dzDqvugGA6BO4n43w5HIdINQflAyDRF
	 21qMhZYAFQaSNusyufKArug5xk1fbS9RLvhzKZQXfGDCELYxrEufYlGz/CbFP78MrC
	 20urlwewKL87Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91398C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175395059358.27997.16323445399976449787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67459aa8f5be925a8fd1306b42f9edb35e9f4d7a839350818786622380d5cd19
Date: Thu, 31 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753950593
