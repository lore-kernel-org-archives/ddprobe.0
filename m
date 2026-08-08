Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF6F3BB48
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786219234; cv=none; b=Nmdo4m0eWVpGmBOv/xZ9uhGpIyv+xjKf8RpSAoKBlNCeIAdqxiRet9fpjh82CiFD6HxkXUJbQaViuokWYxt+SUCKEX4B1I7OcnmwAgn4Unt54+Au2tyDFoil/7eHdUbMzVrz+p40ngqUhMwMKZX1Qx2WPkRgTTeb0cHgAukU+Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786219234; c=relaxed/simple;
	bh=uFdLp+ItLQCOGNberpf36Fyo+Ikpyhw4yBZuOdosZNY=;
	h=To:Subject:From:Message-Id:Date; b=E99xcv5+4eTxpxztP7nu/Xz2K1Y9XQigyyZIOS7be4TPMUgza/PZW6wmpT0mVlslZuQGkgZOyRRILu4Z8ToZf8h2/0Zb4+j6Ne/iCqIDyQWre4v+KXAftSlsTPS2m6wetU5e0Msyp8tYrcUBMQ/262Oxxxry0ftlg+uKwC36AkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9evEyS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9evEyS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9946C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786219233;
	bh=uFdLp+ItLQCOGNberpf36Fyo+Ikpyhw4yBZuOdosZNY=;
	h=To:Subject:From:Date:From;
	b=m9evEyS9orcu40Mz6iBwbvnHfzcfzJPJGxFBZ+sVP8qU3t2inG6pkXOYWvymLfLJ5
	 zfyHHXsUzsuR/kycJ5wHPnpyaXuj+XkNnWtYIYoqe+P3yNG3nQKjPKCYvihECHt1xG
	 499anFUj8xVJo6StB+sqExzntbmSOu3LRyuhMflsZYUAMB3vZy54Vn0DUZKQrB/IoQ
	 nOfvI3Wl0mQhjgS0+nPsQJ0HxH1gYECsM2kGCYTVBjt1iwGIJLtb47LV8URNS+tJa6
	 MTqQb8SzQi5zRoOgfXL1l64+MA5EigC4md2R1mwPD031EO1DlCeqR20L/VtaoHBjdD
	 clUWtoNMooHnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4CA3C5AD4E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178621923372.17315.16683450552902292309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23b8e5619d2cd49eff3ea245ba65410730f498c5982f78db03af5f4a8cdb7be7
Date: Sat, 08 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786219233
