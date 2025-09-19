Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7566B1C862F
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758254395; cv=none; b=upU1JYQBsblB7J47AY2oWCbABeGSpPglp5Cty9L5e0WXBSdRUWQrxhR31SCQRkw90RjtouJIajL2eatbHpUu59Nu76c48XFSfs/CnMm+pVUIeaMxE5PWhNSm/3naceXT5eHxykkChJNYDQ5J5/GmaJnhYJ/lMMjpJAclULYVvOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758254395; c=relaxed/simple;
	bh=W18kVWSLYI4npeMtXZiCzY61JUZRSxfmpt0OwM8+2+A=;
	h=To:Subject:From:Message-Id:Date; b=UBE0tIKtd2TksxXqmc1/9s9d4RxKyDAxuqTT64fHvTqR25attcIZ99kD4c8eIKnOcQ5A30hMnRb6JBadqRUlJh4vzln59PX1O3bpQYbC075wQxkyhM7/ToepHrF4w+hasOyq/bXpQu4Oyu4lznNKPA+VwvUaGae62bXE7aCjLHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4YH3s/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4YH3s/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD0CC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758254393;
	bh=W18kVWSLYI4npeMtXZiCzY61JUZRSxfmpt0OwM8+2+A=;
	h=To:Subject:From:Date:From;
	b=i4YH3s/weuIHt8DXevxImpAcPQ7P1Wi9WnXSyoeafUp/GylNPOHovvI9RmcX5jH2n
	 afnKxxqdQwGEUw8rX6/28Y0hKUd7AxO420P0NRo7SArLo/yQD1G8m3dWSRWhv/enQs
	 Cl9Coa9X/ajmWmI45Po3/5bYVqOluUkyZHJKitvgOG2kFTBM/0RkglsY9NWYFVe6Do
	 q+ts3oBl32+HoOhdIhys8uUGvUzeFXjHNDPviY2fUyWULBNk5SAQ0wpjH5MBdanqj7
	 hoLo5mBHPMEp4eZaFa2/uDhP3oibsHG3iwgaIJ7TiUpBYq+RMvp0Dg6dhR8Oktbh3T
	 +CIlA6SLTU7hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5A1CA1013
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175825439360.23411.11019175690581498464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99987b8087c311279e6da726357820d307eab31a7c9806eb60d598f22b4779c5
Date: Fri, 19 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758254393
