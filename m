Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79292267AEE
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 21:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739309454; cv=none; b=poXXacAi4Kl4G19sfNqNoQIynvsiCr+X/MyWzCstX+6qs7pUukhw1P093aXfCsxb1Q9jJ3zDVLCOZLAVwjzQ30M7pgWwoUUm2KytC3inrmQtNmgpcqi5SB7euBKljySFZ+PdzVVmgejfiFYAE4OpDhyqfYCpFcqYjk5THXvyMXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739309454; c=relaxed/simple;
	bh=U+KD5JSmKfmqFGRGL9qTAnWYz7UrpOsvThCE8rtR7jI=;
	h=To:Subject:From:Message-Id:Date; b=M78DFAm/mC9AmReQ+HaCqtIjTmznm0lr9i13xEoqvi7GdtNGJl0Zs8EJ/bzv3W5Dd5npiAdWVOqSUGFP1mgZrH5LriMev6+YOBXiDdkOyj/FoDMgaOONAjtv1maexYJJnLe+9pts1drYRMaxKjE4lJDWFsQrt9IOpEaLQXfDBoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7eVU2if; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7eVU2if"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B6FC4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739309453;
	bh=U+KD5JSmKfmqFGRGL9qTAnWYz7UrpOsvThCE8rtR7jI=;
	h=To:Subject:From:Date:From;
	b=r7eVU2ifH4BRFUBCANNzKSHnKT7PL2sOwYe2hvSebf1yEkbB78r2dBmcYD/GJaNIh
	 ot04BGhJqAT3J8FfR/kOh99KBLh5evyVxqAHnVm5+ZB3YmS7UyeybeBpRBBNx5S392
	 V3lhiGNp3+5Q5BKXO+EdEbx90XVDT7ZjBgonSs79G/UvrqRhKueRNRT/MJiCWLo++1
	 7Cbzf1PAi+Nx3ssURLjLhh8Ix5DMyg8Dsah8o/IdC+8s9Ympm+vkxy1M297K9Zal7K
	 cV8FX6q9b+zQhKWyNInZJ5L/D8vCBXUt8zOZwdzZNytct++pRnwAvJqWhE2ZnOWMDi
	 lQprt8zI37o7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4D1C0219B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173930945357.28720.2226656316268892611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69eff78a8811f68ca0a18cc78e12b39eca43c8081eee7a488cf6cf9d4cf7fac
Date: Tue, 11 Feb 2025 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739309453
