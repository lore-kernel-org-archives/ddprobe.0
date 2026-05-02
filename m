Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F151A9B24
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777703254; cv=none; b=KDXsEu8bZLF9huEwwwTET156rgwet2Uxaoj7hKn0PzCDAOJmqv4af4CeZApGYfVEcv6HfQaheuXcU4WqIaGPgzu4T9jkXeNrBMeQqcZjyOlmUZ4C2jyjz8czDXIIKief5hnbuzxLNmGa2yDe+plFvXzYint9TJ/lYM9mjuL0DcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777703254; c=relaxed/simple;
	bh=27TaHNWITzfhssuAnh1ghkdDupQvsRA3CYsRr0+rs7c=;
	h=To:Subject:From:Message-Id:Date; b=QvjjtZ8ASqaRtVYuUdUjcy1BOoJRumSfxwcjCN9kHTQdd7d9Uww8DAhvn3qOTBh8G0Gzz1NYmIgB5nb47ARkGTl6UldHvHo/g5WvGwFiSNLAXD/d8+e+SrhZ4LNlR2vtB1HZ/q3Owb85YvHiu/M3CUQOSulgv1ZNAGvadfLKAKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGkH4zh1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGkH4zh1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8549C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777703253;
	bh=27TaHNWITzfhssuAnh1ghkdDupQvsRA3CYsRr0+rs7c=;
	h=To:Subject:From:Date:From;
	b=sGkH4zh1y6Io3k7r4kWWHVTr+nNKdKSHeOTNivAHYOEaKLXQ1EhIonfDJ2se2/Vv2
	 LavU6cgOhuwYLCJv7/9yttMdOk9nzrx7a3jbjZAVC0MJEIO6dORtS3noHzADbFnGaf
	 JJedL8si9lMQgLEhmVhjthl4A8/laP5a6BFIgOX6Z6Sy9Zu7ouF/VAis/f0BiGJ+Kq
	 C/gC8I3XVMc88jCjoDmp/fjtuATcGxZ1NARfikQura5SxY+lpT/hj4tzfax0AXFKct
	 WQ7536ueWw1EfFsyUMwG4Zz30T2VfnfO6OYd1FI2yxYS1zc0T4hCU8EW3ELvgExE6X
	 vYtZeMchFOUqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD44CD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177770325368.6519.11433104989453156781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd542c57e629ac8314e9964b65ef7e526756657c4853ab36cb810d8d2d199c22
Date: Sat, 02 May 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777703253
