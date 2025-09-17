Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9762FBE01
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758115794; cv=none; b=gKq9KGvbZbuSAkhQ26e2f4JCNHrpKywRIYda5K1uN3zZBrnOGOyCtY1bimsZeLbHEQXw2ZmEPlGYvY2lCWss00WIJKZH3YEyzl1cRKlmx0WMkhHU8q/5vuQh4H48bwK3fmQsO3NDROzgtmcD3rkpvOEWN6Kkfnb79VKXCnP0Z0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758115794; c=relaxed/simple;
	bh=lLbgzRSKCDMGJav8tOz7TVTRwh2AZDYY4n9cBekf5Ks=;
	h=To:Subject:From:Message-Id:Date; b=mzIHwYKmRxZVSn/Tg+hfdzHSWhv0tiAgUbkORbweX9Hk61ZoYPly481y+TI08xfHXamWO7TsrcKM6CzkGU8+PpPEraxNz6bOdyw7h1iYrTnDjpEYAYuWwkcdDgkedyotVyI1w6DwjuurbCRbLcC9YdDvqNJq1p92Wf/zHftoido=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StcVrqlU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StcVrqlU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6014C4CEFA
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758115793;
	bh=lLbgzRSKCDMGJav8tOz7TVTRwh2AZDYY4n9cBekf5Ks=;
	h=To:Subject:From:Date:From;
	b=StcVrqlUCTs1/hk/xsVuGBE2i1hIVzowciH44teOF1+vYfO7fme1ptPud2AZ26tkR
	 tdxexogN/QPPNpsdo8mneMej0kFs5W7hwFLZTsY+gUda4oghbAQUNAiqf9W7JIP5gH
	 RT43ijB+I9JoWK1jhBueieoEPiefq/A8YR3tgxQ2ldir3M/0vewg3rapu1pxeENqC5
	 5kBGVjY9sgWcbGE9Q9Fsn2fIBEmeP/DA8vSeohWCxoLFI9mu6l1nvzWeBG2r+ewgLx
	 R4FkEZGr2/pueTFsjkQy2Fad5qD3Q5OcGzvqc+50hiIBaV7LIVa0CHxLOLEHr0RixU
	 STuDlHSo80TEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B93CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175811579359.25737.6166456319530589166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78f3b20fa6fb052424b48205f11ad6eecfae97f386608b0f9dd548fbbd177561
Date: Wed, 17 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758115793
