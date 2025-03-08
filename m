Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DD51EB5F3
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 20:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741465734; cv=none; b=NGm6WV0CJpVPOd4NFOxvWM9n4eVMO93y90tDhEaKksH18cBdnazDVvgIQUjLdfhAhughqv5Lyuw/OnDY+yjvr7uoK7DjqbY73pC5kULojWQu5TBYDPGcFbzdRoMh4K1/mFvdM9OBmo1pKvx5DhrEfoBtB/ya+Imdl+Cf0Kdt7HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741465734; c=relaxed/simple;
	bh=NXy7j1B4WpQ86BVjVE8+zg+ydPW7ckATMd/qVCsM6nI=;
	h=To:Subject:From:Message-Id:Date; b=c60dz5wUb/7hsB81DXnc4JV7vTSKFbBjD0hM0/mtZCmNqmgrhjLGSbOifvMZR2EI6VSOpdRWMSnvSVuPCN1gk5LPcCw6Mgerjn9mio6T/hTXicwqzCYgAaI2XTuh0SkF6LhpQ43bidGofMBZdw8vV6Z4e9Jm9QvTFPF7KHgY5yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQumNvMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQumNvMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3A9C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741465733;
	bh=NXy7j1B4WpQ86BVjVE8+zg+ydPW7ckATMd/qVCsM6nI=;
	h=To:Subject:From:Date:From;
	b=oQumNvMu+GYfQ9x2BLrgcfIw9NeQW8JVRoHj6bnLa5oukBSGqcLI8NRE49MDiA2Yc
	 rgPZaXjSujJOXtfsbPMKOU9aHlKQu8x0PsZqq/iSurfn8OPSG27ojFQzinNpu1slnF
	 UeLfdA7tiQFc3Z01woZkKTZu0iGFmqNZpd5AuhxmPBct2SaqJuj1SmeoSVqJiLE+tP
	 ohFLSp6gMbFYgfxRdap1nMPBWSOsd/0gu3XidY3KHWuWYWS0rAxvYwJXnOtav51bKy
	 UvsogK+ZnwQFj6H2M7LcmGXPP0VvTXEMG+zEu8iFpihBLdm/w/YFf0nIt9a5ZjrZCn
	 O4VBA9qfFsFRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A57B3C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 20:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174146573362.24182.7571952764022761143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85de9ea61ba2765c237dc20493106c992cf8de9b138aae280eb65d38c9236175
Date: Sat, 08 Mar 2025 20:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741465733
