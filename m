Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C48D19AA6E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 16:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717778843; cv=none; b=bTj6dblOFPt/CAwUCb3wb4qSsLYwaOwGzcBANIMTc1eZDFo7ROz9hN7zI++sFDAXmYEmWkYa2vj/MkOOOe1HFYTc5uhx2iUDVbO4hconxder3FArtryPZXotWn+ZD0HcsBMTN192lWMWM1KwUQXuzonY/nNysIQcZjBmokLaT5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717778843; c=relaxed/simple;
	bh=mWcZVE7gYMwQVRhdhvZNrot4pubN1l2noe9TqLgPvW8=;
	h=To:Subject:From:Message-Id:Date; b=FmHs2DQQarZKaxnroH7M/vJEqmAFI9y/KRWHO/bG2LS964hTI5vzC8WggUKoVbOacCwdTM9KWizJgjHVus0DRUGp1qsE7jElQr5qbmfVwNl/oMM8hcnjysFB14dGggP2X4EvX6ukdrztwqAMWR+lya3UjPpUmY1UTX5kegs4Zic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ao95qke7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ao95qke7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E06E7C32786
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 16:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717778842;
	bh=mWcZVE7gYMwQVRhdhvZNrot4pubN1l2noe9TqLgPvW8=;
	h=To:Subject:From:Date:From;
	b=Ao95qke7s0AGlH7T/HTMq5KALETE3PUbDAH9DGEBtaDg4lVqIiAP10uNX2VOZHLsb
	 YKEm6wiEgRhmCsGZC/ZeKNd9T61Yb1KZvzlfocpQ5lBlt6nfIn9lIOBcY7e29fx6sN
	 +RcSoWXXPZhTYuCRVqvGz2b/WfSOkCYklEZo93/J/sYdQ7a+/s+x1PjIHimnO1pxvm
	 QiLvfRzodvlvjI4vVBBroSjzLSAV38l7loIAe7PQkMAB4gEeMoU3k3+a8Jr4yZg/im
	 Sl04Tg16kcmXZqWSLE//QCBHzlUkZkz4z3WgpULrOTXcfqIbs2FO6k2qDiSPPVxNV/
	 eM2ERAnG5Y7EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA584C27C5F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 16:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171777884281.18773.3036405308491864869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f34a8f72ca6d5ee7f0d113d1c2e120b1e04484114ddec5834f68173ed26d9e9
Date: Fri, 07 Jun 2024 16:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717778842
