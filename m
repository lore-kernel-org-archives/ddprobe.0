Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567D91D55D
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 16:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718209103; cv=none; b=pVHD7hmULDPTRTX4QN+Gc1iX1E/pxxo1sdV5u3rVBiQ+yf93XK/jlVmAbn0xlkEjixYMq1XxAVQ+DqFxaGoJK7iJX+G8C1poI3jGR194g7qwOqdDFxXFLJrRW2p3jiPmYwaiK3MeFcN73FW7nCAmTUAJf0WVESfCyxMPda1pIXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718209103; c=relaxed/simple;
	bh=wcwUXZnu4dwlKSebmW2JV4I29WG2kT9SbZYg3v+aAbk=;
	h=To:Subject:From:Message-Id:Date; b=d6mRsFM1J5lxND9ybX3yBrHUAwzk6al/YHFzJDvCxaugZFlvUQwseZNmLUAOZ6owT8SWoxCQ3dioHRlq2HhAHBbI9f2dMwCf0FS79Wpc3L7py0qDxhTLm5DBpOVfrDUGppnHRVsDrXHVCVoL/CBGE/rFIMA7rHgza8OlcrVb2MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtTWUUrx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtTWUUrx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8206C4AF1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 16:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718209102;
	bh=wcwUXZnu4dwlKSebmW2JV4I29WG2kT9SbZYg3v+aAbk=;
	h=To:Subject:From:Date:From;
	b=GtTWUUrxTUkIdGesw1vrUcT2CdZZjFdf4r0IC6SR3mttTgJOLrDxttTkKbN6NvDxO
	 lVh6szxoJOIJm87CTxfopUUnybK732u62+lCdzQLbUYGIWFwndPOAlbg6Ez5HOvDms
	 7y+reDEFOtYqVeXhowbFSMdMWUG4e8LN9n6shIZfhRloH64YM1lIsMDarf3WcubVc7
	 +qmMmYnny412IFQboiNtgsb8YUHZj1Z94EkA/dHkNOK1VDJn1MLUT2X8sTnmBIoMLI
	 Fxn4k7evxl5Nx5p4beBpp2/sRPvH2VGlHgonoywUU4VVQuT8uSuKVcyTEWDjANufCh
	 J/FMpl1PsdYKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CD2C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 16:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171820910279.20000.5733950891973703547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507f3504583f208baa014cab3d879afb60cd3da2ec65fb18acc985236872bf5b
Date: Wed, 12 Jun 2024 16:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718209102
