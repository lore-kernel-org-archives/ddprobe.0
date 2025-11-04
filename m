Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B879D515
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762218594; cv=none; b=D8/EcjD9Do0d2cU/RBhHLeVI9ULHG0hdjZHL6zwx4LuKsiUv8S7DtXkgFXHdjQXNfjCMDVvQuiEwpmQBbJoOt3AVlCr4BmF5eRE5K0+5aZeS5DwJ1leF0ZAHROjgFcAjYmj9gTCNqv/Ct2rDhyuB3uAFutLl34EBf+e3pUQm34g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762218594; c=relaxed/simple;
	bh=TT6Iw3mheb+kcXUTPeiGgF4wyQULZPmOn04kxmfCJDA=;
	h=To:Subject:From:Message-Id:Date; b=bGb8hoWctpNdqioONQjp28rmEv3/r95uceNJYbubTffLcJ6Sp7UebGOv/l4JdZW4Tu4BJK68MPRThEecYMSVWMCOPmzcMlih0QoWG4uiCWEykPwUfva0VkSOVbnHw8yOSBA+foULYUU8d5FqM2yEfgDSKzSXOnlfHFM/IDJTmvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvrFqQch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvrFqQch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B437BC4CEFD
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762218593;
	bh=TT6Iw3mheb+kcXUTPeiGgF4wyQULZPmOn04kxmfCJDA=;
	h=To:Subject:From:Date:From;
	b=FvrFqQchASVWl1AmXql729XTbzCjx/OAD7SRPQSdqL6WUb+ItahZkEV2k1YfTuxiy
	 O8EGOKK3LPs2LR2LutColSxmypaRaoacX1Mvdxl5bk3c9w7vnqubRpIx2gnXMXZ8vo
	 X/Mn5Jccsm/E/aQLxpZxNFkyf64NFkH2SSdx1ub1bMbCidGnwUlCtHf1L3RZlS9EEe
	 gYn77ENcV83SiGTjyHbVSQ3pQbeOjmiBh7VXC/MU31Sn9y55Hg69WEdae5mtDS7U9h
	 f0FIxriJJZeL7zS4ftDMKZJD0vLk7KvYS9RPX3FE6DWuQI66jow9YpeO2aVr/gt/hE
	 GExcUy2l4d8lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A619FCCF9F8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176221859364.12056.2923020661649463252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8873fd4caac73f5047822c358e0fdb70cf9acaddf7440e58ad836630b4626abb
Date: Tue, 04 Nov 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762218593
