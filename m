Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC1E33C5
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732860954; cv=none; b=AeFN2Mb+72rOHH9vq4pNWNcqPeExn5OrQnR+5x7frdAOI0O5tzp5C/+8/w9KvlJlmPJ9Anz6EmtS6m54RMu4qEzKgf0zsh+5HZhs4FSwNFbLbpq55f8pi2sq3FgF5OJVJVlSwjywCg10vjuD5XCmoxs8jI4+WqZqVxs9Fu1TRyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732860954; c=relaxed/simple;
	bh=mHp4mw9hh5uP0CNcZvGQUuQCxNcmISDQsSrojq5cSUI=;
	h=To:Subject:From:Message-Id:Date; b=gKkaQKDK1QDyptHcMUJHruzzBjaslXCEUeqZ/wsn4OsCRXwl+VR+uT0TsSYi3QdF4/6am393kzh5gu+s5uCqB1pfJT9CGzoqOetDSWaaEg+/VZgF3Mspv4VzwrNCdMcigTrYWrRCDPqAYHS5ch7x82JXZJx9yE8gZ6mEtwjwrVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PICXLisB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PICXLisB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0761C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732860953;
	bh=mHp4mw9hh5uP0CNcZvGQUuQCxNcmISDQsSrojq5cSUI=;
	h=To:Subject:From:Date:From;
	b=PICXLisBakX94BhjHw/L1P5t5IDQPEDvmYEx91xdY2L/YDcdTokOrnxDviByNkDPl
	 JY120zowTlx5eG+miuYdSZf/oGPl7/106zGvf1CxXCHEP/MbvjiR704zDzhIjGWktx
	 0uMaTH5IqkyFqnBFOHF3b+Jx1uT7dUKylHx69SHaTW/ypDsuctPHn+OgVjg788A770
	 tJa4GfyH0xjSvRk3SD2y5fScHPlkFsgpZCHsl4wU7rpWOhunNRGxO+C5XF6cFoLahC
	 FDGkUoJyua7704GAoN2ixswmGDVBopbE5aVYoclmjT+y+WXAe9V+u4Bxtw2g8y0GNA
	 KXkc+BtOqW/5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C57D70E1C
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173286095360.26481.13243612619834913586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac30d2c7cf9efe0ee842987ec7daecfbafee1874048ab195f2d902599d392f97
Date: Fri, 29 Nov 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732860953
