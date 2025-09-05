Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3F027814A
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757070594; cv=none; b=k0cSf+xpZXeoVC+8J7bSCvqFbhXzUBmAp6WV4hx5Kjz+w7399BTTZBAhEZHmFKbJrDDc6FurF+49NXpx7OXd1W/3jrjp4DrHFq7zUWX9ynKdyoP/8Ys1JyCMrS+dV10cjD6viHU2h2h2/MBGUTd+gFvGiOFjlDJvCNIHVfhkj48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757070594; c=relaxed/simple;
	bh=mlJA6VliorXjpmmTRsipFq2yXOUyIOaELLzbaL+OL6E=;
	h=To:Subject:From:Message-Id:Date; b=Lr1WFz9HEnE7p9/braTTZ53kOpp1f1T7rMOYEkb/aimiPMZmDVf/aQ6i2EpA4RG2bN89HwBDaTgxkofCK7J4ukYBnUetSUbDp0zVpRjJ2OzduzQFdc+Q0BNBGAkMjrJ4yvqA1bc56GXK7wGbC5Ng6rsJWSRXDNPs8c+7TtiROm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYcVAgd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYcVAgd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B34F9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757070593;
	bh=mlJA6VliorXjpmmTRsipFq2yXOUyIOaELLzbaL+OL6E=;
	h=To:Subject:From:Date:From;
	b=rYcVAgd51UHUIkJb0tva9nbNZmDoYlR3zLMd4u6XoN8h1WcC1AfvoQZOLXbtyYzqs
	 dq/Dupm5hb6U4rUTlZ2n8SW/wOhvpqj1hodKofb4Y/mUP8XwrcpHbiRXaeeLbXGidS
	 yEdEmJ7QLvMAzRwcLRX2z0u5Xm2nEnEjO6DqgW4Mq068awVb1F1gOU0Lf6cZRFCCpm
	 xalWgbeUZ1k3k/5X+Ik7EiuOZki2yR+CTlueFABG/pHzQlSzmIxLHnR8iAE6lVeANe
	 //hUcRyj4j0vbWnRYM3vFCeNEDUh6CAaSrC9zj+z5NWdi4HdERcrQRBMQyiGLP4Ydn
	 549SFKVK4uF+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC2DCA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175707059358.20669.2538998848794655578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c347e0029d74796e784965ef1583c715adb01d2e954dd30a0b04cd8b1a5ec6
Date: Fri, 05 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757070593
