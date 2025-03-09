Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5A0136351
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 20:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741553934; cv=none; b=n4/EZj0wpuLHXhkX0T7vZwjqpyA7t7eU3xmdvWd3opbmzMC9zY7x2fRSeOxSYtt3HWCIgdAAPlWMsPywPHUUoC+Y6whR9fxofCCjGF2K0LwPtay8N9I1uB8ok5zxem+BepFhshe9tDd0IK/1uw7sDO7i8GswVeg1SuPILgv2bsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741553934; c=relaxed/simple;
	bh=yCftxDBZgxy23CgAx4IGszwnxqg5/9kOfsFz0yS/R0c=;
	h=To:Subject:From:Message-Id:Date; b=tjYXQVvBp1y+aVOOs+9UBIEGfKy0Z/zqntXTKjQDhHEVSWOF2ywWoodfjPE8lPPTM8iGt/5jM+XRZcjwOlp1zwLLQHOcNYSyzFG7lxS3xodxm87ju0udAX7s06+rVxhXaZz3b0CKhf0Rk4S1BQcDTIbuSth7nHuSw98IvzGRh3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iphx5TO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iphx5TO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF16C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741553933;
	bh=yCftxDBZgxy23CgAx4IGszwnxqg5/9kOfsFz0yS/R0c=;
	h=To:Subject:From:Date:From;
	b=Iphx5TO+2eRFpHoPnM/iQ/nrVu8186cGiFFwdj4+4pNxCr2smLSbPxE+dxoj1Qn6e
	 boMAo98aLQhuRnCLvN9kcW8d7DasolEXu+GdZWw2DhNUSkTmCfAbKgSnh76G3OHGhQ
	 y/mmk5JakmenQ+vasZ0I2AIPtxcwFea8Y7n30BCLSo+hc10+FsxK7414zUjcRp13lZ
	 hnAATHuPAE9BRElloTulU16uztBpzSv7lqdITgAAiC46j81ZadfaWmUDKyi5qAQTDe
	 6xzPDbztpL4TjImp3ig2kEh9cvSS+Zw0kV2wlJzb9Khe7qwwMceKVKBR0pr42uZDum
	 p6ysRJJL1c4yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976BAC28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174155393359.1206.5910763310889610061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 047f64a6fec3beec7e51cba22a2d8c719d65e564d760a4d3e34284775a6810a2
Date: Sun, 09 Mar 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741553933
