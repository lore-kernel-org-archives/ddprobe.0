Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7E31BF2F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 18:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712947163; cv=none; b=WARx5Hz1DyyzO36ZSMkK2hhDc4Y9fy9zuWxgkllRKE8xgowbqnkbCfem0Ydq1TvcXXIY3hMjRAAVRjua0/bT35WMTaoyqAxrCspjwuE8ZmT8W75t3AnxHDaIZT+Mc782LV13wEPQ4tlYcNqfjA91N4kf8/WrXO6fEjePg/0eHNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712947163; c=relaxed/simple;
	bh=u9Ploh0+F8SoZSDqWZiV6BCQ+cvOIQ989xVwtqI9hhw=;
	h=To:Subject:From:Message-Id:Date; b=uIHZlJUmBEVaKW1xnUoNoAz389wXZ4JsHLq1hQzEd+wJbRTEkyBMpPCDkJUoAz1J9uzlj84tebE6Nvw3U7f082d8eeWLlSv69ayZgGNitlq20B1rc6zoKESDT/+nY9ddljbBnKa2y6or3Wl0Ac2PUTga237urmPRkB2gllMHaFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I21X4SPB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I21X4SPB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E060EC113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 18:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712947162;
	bh=u9Ploh0+F8SoZSDqWZiV6BCQ+cvOIQ989xVwtqI9hhw=;
	h=To:Subject:From:Date:From;
	b=I21X4SPBvlhjmT+b6kVIKDb4tyMFijqXMjv8HwkjMh7LtghplPSKitl61bb1o37QT
	 3hr9kgu8qYu8CZeMz+KlZlq2pFuio+m0kMRvJLG0fM0J7IaEMcUh/ZVOgQRfY8SGxR
	 hyb/0ILUGnu6J2m5eEwcyTJG4QisgjcQFFGzj9QPPiP1TgpB8DWdfJW3hDeiXujeQi
	 fS60eUhmtmgr7fD6w4Xl2hYrooFsy46ghweTk8p70PW6uqk44RGj/L4RyH+II2uHQe
	 80shrl4AzmCpB2/yf+p/acmJzVfgqxoYtPsXca9+ajwX7ZolGX41GQFHL/IzWuUavK
	 kEjFSoMIRrf7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C79C3C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 18:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171294716280.17826.9109499476793117604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a54b2f3224a9787fa17f47cafbca65871d41ce6b5286045d4427e07e35a637a
Date: Fri, 12 Apr 2024 18:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712947162
