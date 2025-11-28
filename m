Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2BB279917
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764298974; cv=none; b=aB6clpKBcVmjsUDwfPpl1vpb4LQSGsrWs6cyaW5+bH94ovFBj2bGBm691CwlDalQwqBGPTG6IUSIJR0sZp/CueiQNFatHO21sgaki2FJYet8V36rsNWn75TSM5XGKDcfx31/QjW0SoEVI3s/5wyg+UwA+9NE83W9l/m1RTSDACo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764298974; c=relaxed/simple;
	bh=21hR8StIZju+YimittghNPHQs14T25Swtn7zWIvdFWc=;
	h=To:Subject:From:Message-Id:Date; b=dYiTt+VLW5RQcvkgXTlYdvkw3iO2VN3cQE/f5bw+8O9cmKatRrBXI7Xg8++MaMaPUGEPkhbMhyRhG9T3L17wb09SdZMERO4cMf1oD/JIG6f5rkFNIFsPUS7UjjmZwdp72jG87PEzvtTol3VOaE8vP7e+QtD3roe31nu5UtTTCrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Syro4nD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Syro4nD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A34C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764298973;
	bh=21hR8StIZju+YimittghNPHQs14T25Swtn7zWIvdFWc=;
	h=To:Subject:From:Date:From;
	b=Syro4nD/pC1HTrTAPuvx8zxpJri1+z9/ZGJB3Dofa+DXF7Hr1aryt53t+LErZnxVy
	 KdmlWDz9NOFEcP6eQ2XfRKrfNhA5Z4k3o4bFMAghEfidgUWuhwJJKkyUFqAdi6nUTv
	 AHwz8xKNQa6XVM00KCM/PUrKX81hsnVaPDYYcdZQf2GNY0IrncaCrEIicYxk0iXI8N
	 59ahS1+EgDuDgUvcQEaWzHyiL2MNiRplpOxGU6J9wd2kgwAw2DV6bm8K8gPFTrdE+k
	 JHcsPqrSRvcsaK5FkmOxaxPVXj1DRNwUVpycgVXnhsfqMVKaguGYyTYLkf1OCLcZ34
	 ypBEP0EgVfkwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6544D111A8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176429897363.18433.15253982229359252832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0d8e3d4adad292405adad3949b0f05b3683388413cadb02e2a12c7aef3dda6c
Date: Fri, 28 Nov 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764298973
