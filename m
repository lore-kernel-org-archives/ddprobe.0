Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2567019343E
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 13:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775394934; cv=none; b=bomWNBmeFGIm8q3AB0Q33lx8X8Xv1YKihJxFF7/www1zzVxdbrcYBVRDySzVT93iNcyDXgqlJYC4JJln/h/MMXSoAeDvkWBo/Qx6d117NU5fVkIg2WXDv49x2mBLsyPJHlNjv6lnIBGyCxZDtqtGT5qzGxBakuCG1lRpdcXwezI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775394934; c=relaxed/simple;
	bh=pD5j4/JhNN2Zty1RF1uqbrRQmCvuKRA+WUt/tBjeqJA=;
	h=To:Subject:From:Message-Id:Date; b=inzvCtGv9DleSbn42e/9lb653AFmWWj5Sb83NIxy51BIGBYTayfD7SZpWkFE673jx+ejEKhGpYj8mhuFHMbZS4j4PjvO4jE2QqakPZjXjAFb/dxbkTOJl85EJffJsTS1p+frpVMmp8Slzcv3KyQQZrfIm6NYcl73b5uhEKJcFXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GamcSE/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GamcSE/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C770EC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 13:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775394933;
	bh=pD5j4/JhNN2Zty1RF1uqbrRQmCvuKRA+WUt/tBjeqJA=;
	h=To:Subject:From:Date:From;
	b=GamcSE/hzNdfmm59FJF8hGHkrJwhSZ0Qkce8/efY5eULOGf/sZG5JDI3rIMgA6/wM
	 QR/QYjfHYeK0p+mnisH6ycqqEKpkTSUi90QtT7o2pogaYbm2whhR+64lp91ZoLEvvo
	 nRxntDSYQBcgE767u8+giXBhmxNBDt5rxYzU7JsWuPZgTPZ4nJq5rFluQglpwH4kU3
	 tfP40fevr0MxHT/kwWLLLclNF5SoRaj6JPkeoxiYt04ZA8755HZmjBcuPZxC77Lht4
	 taAshJKlphuCHLeqxp+Yrro7SH9j87p3kc0x8p7LXz3m0xjy0f6hLr8N7t2vXCMKMk
	 ORj11fBlte7bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08A0F3D5E1
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 13:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177539493370.11349.15780113042661228753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc3bdf6fdc6e40a3e0f99c6ac4a6e33960fa4de29494aa7150e41589c97b2da
Date: Sun, 05 Apr 2026 13:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775394933
