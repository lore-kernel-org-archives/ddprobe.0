Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB613876CE
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769689434; cv=none; b=sonI5ptRhzM3Z68DzXWaByr2yDsDHix0ZumopbBta2NHJkyv8i9nji8VAp4cza2aaAf1KhYMMLs9+Np9NNclwqdjDvsu3/GnSx8u0+JFDFIKsT0+l4+S5VuLsGuYdLp8qxBDaDHxFt32RJxHgxq162cRdwtPq81vdbwXeLzpKhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769689434; c=relaxed/simple;
	bh=/WhdYuM6sdDAGC1WiHVYZcCgrlTjnzZvUgPK7Uuwxv4=;
	h=To:Subject:From:Message-Id:Date; b=uSGjNVOXniKEh/QOPox4dtPcVPuT6euKGEIyvEk8xtxHH5BbRteuTwJnSut0lw3tK9jwxlcOHPCkVU+/N1KHYZ8tzqWMa8GmB5in9kwD4KVflfe9jsKfVCJd/bEFYaoXpJTcAbHHnK1QUnWwjTK1N+y53Dl9mu7/CDd9kKV8klA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YEsthdcB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YEsthdcB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47DEC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769689433;
	bh=/WhdYuM6sdDAGC1WiHVYZcCgrlTjnzZvUgPK7Uuwxv4=;
	h=To:Subject:From:Date:From;
	b=YEsthdcBRBoPZiRL+S3KXOUpGPZi07JzasjzTfn5UhII8Xi4/eTPgIlghYgTgwssj
	 MoLo9uyXFB0gENSu5IWYs/t4EnY6QN74Xe5/k40b28FYRQ8YHhk4Qzc5Wq8d+AIeYo
	 Tt9Sghrub88YpZu6u9m/f5SDnwKI96HPtnMocq32mbD/8kGLsXU+g1Y7x4V50vBSNH
	 uiVJg6pw4jPtJGcHujtjeBRD4jzFhk6NQPScF6kU3OA7XgYNYuCzoHAJRvTiZJ3iAq
	 Tildlxm5Af216/nWOIeE39yWNt6TKWxYBUlAGMvoVrqk/vJEJ8nK7LV2iUqjtbM6CU
	 8Pvxm0snfNJMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C35D6100C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176968943358.21408.9575124336603269158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c7bbfe5de9695a1df1ffd4c5601cbd56b3830236729281982cec06cacf75158
Date: Thu, 29 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769689433
