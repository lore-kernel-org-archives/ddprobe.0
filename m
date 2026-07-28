Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A3612BEC43
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785217234; cv=none; b=tONVYFZd+IEpmCmgdyUMIMZp/Yn9zqLPtygZgxI3zeEO5HwpWM+++Fm4R3CxYD89b7q0B/myo2SfVc8FHZUGoO3gXFu6icyyZQezXx4WphopIqnVIhHdhk7ilnb1/uua51IEgAbPKtl3avCNZQx7H2LsA2bb/tb1MPaOIKAN/aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785217234; c=relaxed/simple;
	bh=/iJ5wboJT0OqF1dQ7+nBcWlwRoYoutm6xx6Avv383VI=;
	h=To:Subject:From:Message-Id:Date; b=lj/paMkbEl7ly/22jDifAI6gx4ceBARwJKWcuSrCzmKoGpO/RBtECYCKOU+U14LhvjWDGy4hFMbiw2Y5zSmWqKWpqZhfpKpDd+h/8a9VfjDLxEOlToQIkKoQu2T6loBIUocUve7Sc59f2jkvbz+kfv1hCcBSL8i5khKC0zOh68c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XV27dOBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XV27dOBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4E3C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785217233;
	bh=/iJ5wboJT0OqF1dQ7+nBcWlwRoYoutm6xx6Avv383VI=;
	h=To:Subject:From:Date:From;
	b=XV27dOBAHOE/SFkcoeWtWyHEb6tQoCB9RJR5+3JhjtsN/C/pHIOMOa4v/9CW1AORW
	 8Z9DXJXyBB5LKPdSdRmzOjyWTAOreTQ2wPsmBbsDBF4s/X6TwBTKjsdFgRxB/6ZD7V
	 mGodE3Mg3FXZLlpgn9Ks6uzH+ITm6X1shBEFQhGTaBVfgaaobn7zw3gobYKnubOHcm
	 DPiqfXqnQKt7cU3lHCLyHnK816O9o57ThB5Z2tez2c3G63TQj6i7T0wV3i4m7AQWRX
	 elSM0qJH2MVqJECzfep6Pq5qtNQf9MbYsGBihwXBsCrpGALhA/jZV5ZuKcGnl68q/s
	 drLKDKlenqJiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6506C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178521723370.23959.7211632436226766042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e56f6efaa6316375d0a4a572791cb36501182794f75f189461da0f804c6e03f4
Date: Tue, 28 Jul 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785217233
