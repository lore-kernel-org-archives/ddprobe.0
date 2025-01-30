Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECD3143888
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738266954; cv=none; b=CebNz+Bm46GUHaAxssEF1AmQXziX3SThHRxWMCWei5I8H1hwO0icAMgx/OGGRhOVhZoKvw6KqLTjTVogQcARrlV2XLMeFOHwOyllT/oJPsxkkQJHaGHDtB6zQv+ts3ACLUm7RTzLYGHjn3RCU9QVmb3oNYyrCXkyNTzBuo+JcF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738266954; c=relaxed/simple;
	bh=i9m/KwV/YnSWw3spTeiX/ioGEyXUSiBg0HzLr7iwdWA=;
	h=To:Subject:From:Message-Id:Date; b=oVeFeZluvEXOS09xtJ7FzFeLg2FqZM2vX1z8A/8X1N2NxP2GKpdFJJEqLqV6g93SX2k6OlR/xQa7VdTcrZ2NvijqB+QPWGvEzDquIBG+r/7bPligoZQYUc6rryXNDFDN83LN1gQMv1xMkCGMy8v3CDQxQZYHDucJ2Ur0b1sQHoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxRdvDAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxRdvDAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85C6C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738266953;
	bh=i9m/KwV/YnSWw3spTeiX/ioGEyXUSiBg0HzLr7iwdWA=;
	h=To:Subject:From:Date:From;
	b=IxRdvDAzLI8a8kF18GiV8MyShhVbGn+Ic3lh+6b14oSot38VRwyq17LGrF4AQ7cv6
	 c9Gfupo+oXiYzfOXqpmMnjYtcGy/9TWnB+Lv79bLCbCJlhqzwn3PciAzJLJ2ner0ua
	 lu6p2BY6pQ1qWbcdkp34gSIOvSgmMdfq5JaFaQgxj8Adea3jYzIwsyxSwHQLoSIq+h
	 TGSApjjbVqOxJ2Vcn1qkOVMXLxhNThz7SZJs/zqJDVDUxgeDjW5LSc0h5idJD0l/VA
	 2dlYyysIQgOnMgAs2syMyRFx3htTjsdhla5X0aY32ShBXHmZWMw1xoc+7gJ0A7dOqK
	 Hskc+Sjyf9Q1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DF4C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173826695361.24852.15489753021219830121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6768fb582a4fa2070d9b7e265c618c1761fe3e1e4af52fa5a2c64681b114cbc5
Date: Thu, 30 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738266953
