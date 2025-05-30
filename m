Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9051B808
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748636394; cv=none; b=Jy2Tm485w4kkIZZCG44Dvj6ONJisLf5FjcVJEyg/KBLHm1AdFE9M2SjWh/2h81YNG4NZEJd7EcpPFG1+rcvo8+60XUzEkXwfq2WqKrOtFYVAiy4uNCdNFJQAvK+ExcQ/WD5RAmbXO8RwExijWj5lpiYPj5lv9iPYF81ApHm8FvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748636394; c=relaxed/simple;
	bh=xWdkDmNXnich85JWMf+k5IxJ1M0rXfxjPX5aClFyDJw=;
	h=To:Subject:From:Message-Id:Date; b=b83a4EXyx5u4r5WSF9YYDI0VTj0gwIQ5W/U06E7wms8QthgEkck1YK7L+DqIZWrD0vhQY2ZGk4K2zreEp3vKbGrZQJFl7W5DyKiCxr4fOlRotIsYTjb2vjfrlblwggxkCp3QbDSRrZXeJK9XmtjjRrlvdmxvLGM2SvuUFFHd1dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJD9hPgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJD9hPgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E544C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748636393;
	bh=xWdkDmNXnich85JWMf+k5IxJ1M0rXfxjPX5aClFyDJw=;
	h=To:Subject:From:Date:From;
	b=IJD9hPgVLuy5KMJfxQj6DRIEs/GymxLDzBOWt1JXLRQ3fgKnx33Mat9gpGPQQCvV2
	 C4CrBYZKYsjYUdSPxyzmEKDnCmOXnRb6PFJ4LRl8dwGf7S3f48rBl+hOgAj4+6MaTM
	 ca2wEzusfSS4MqQcp8Uzr7n4tqBkQ/OY6AJoYcpm2Ay1cjcmj+WcbDEX56BQud9ss4
	 J7d2c9ThaD2+wdqq2JdIG7qPTHHVKaF9QVMsS76E3YEBEBC/Op35E0nx2VqQr+kzvK
	 iTp4ygXtHNw+F/t3noFFH3asS+GaBaOf7FE20BxEGe8Q62+Ov0rcTsctKNB+Kki03f
	 kC3IMppIUO5Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E632C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174863639357.30593.12795475475810855254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 626b77e1ae1cd7b49acd4d6a38a5cda2c2995f1ce4870d51d014a41dfc7dc526
Date: Fri, 30 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748636393
