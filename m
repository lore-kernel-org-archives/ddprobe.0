Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277599463
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765614174; cv=none; b=C3UJIGe3qNHYRhBoGcbD6D8IcUQ237OO7Mv8fIfe8jWPUmN8fS4FElcs5UAWYMHK9iqoiV5vJXKS+4zkiTaAyXFKysI0GKGAlCl8jH5Icb1tAHBXpsrvv5J4ZMiGODe5jixY2mtJnsth9CsWMTBa+Vnma7wwxKUy2Dd+0ZmbSfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765614174; c=relaxed/simple;
	bh=cHTkGiE2/WN/eQ1T3lrkBVuckZhP1HqIZbzV7jXQP7A=;
	h=To:Subject:From:Message-Id:Date; b=EwYgkn7jKdcgsVmF86hhcmDvH2c07lxw95ewkHAfm6fTFOySOqPD/EXNWZekCVh5/SqP/CoixW7WrnMhwSk08vF5QZeJAYSE/RSj6CjZZipu8McwLOZJ8I5iNp5zDwLCY9pi6X3kGPovCQGNl4cwkuuhb06YIZ/C0RkBtrmWW3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkZ4MSGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkZ4MSGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DABC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765614173;
	bh=cHTkGiE2/WN/eQ1T3lrkBVuckZhP1HqIZbzV7jXQP7A=;
	h=To:Subject:From:Date:From;
	b=gkZ4MSGwjhaemTYNId+qY4UrILvNRm6ROaiKHSKwua75l2hjVkPC1aKBNG8capH4s
	 z+dSbnTAdjVB7POnZfZejinKYzaSY/5H1srewiXQKJtMSbEacVjhYPWiKlSLYSw/Mf
	 TGyvJjgh8O1SGolTu+urAd94uy2uFbIhzkg0CGoIA2KfigHTPy0RHm28NRlVE1XMII
	 sMpdDumigpYvqqWgSUAVavHSUU9+30hvP4T2Zwxpsrvm5g+YeFRySqe/b4YKXZ0IHU
	 DGDGgh06WLxFi7+bdun7Z4pXPvDAhsllEHpJhqb8Xw0XFRmkX2kkNgELgAapf2ze2x
	 wy2ECSRK49X3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C4FD59F7D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176561417358.4418.14672752257428691683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf0985c7eb33b1eb62f1c91d9218e5f50eba61ef3fe54113060023dedbb8404f
Date: Sat, 13 Dec 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765614173
