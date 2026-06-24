Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D577379C3B
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 07:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782285994; cv=none; b=a+zfCVMPZLwM/JgtnuJt5vEv1I2jCRKx97gb9CqDTZ8JXyw/HzKbFb8qBhdRihB1yUsASEcuV8f9b+589SGCkVrCPMr395IFVh/eqyNf6bInqtwp1LtBvUjCsYIuEkwoqJS8wFxiEFXK2wJEQM7uel7PbaejGUE5FqygcRv4eUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782285994; c=relaxed/simple;
	bh=MIArhPZgzWtMWmr0AM9eTMRB7hV/uB2m7qb6UllXtj8=;
	h=To:Subject:From:Message-Id:Date; b=lGHhN8GaNk4tBDYwgDzZCiG252TuzzLkgUf+aG1FL8giVa10vJdSCWhyU0kDarHbW3idHrvW2MvaW2z0LrNll9oSRPNpUsNU3rRnW6btJMk78YBV8A2CodBeyBSwAJJJUEatDr59Vakc59L6GgBnAtU3BdoStMK1w2lHxMz1oVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMnblyHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMnblyHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E19C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 07:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782285993;
	bh=MIArhPZgzWtMWmr0AM9eTMRB7hV/uB2m7qb6UllXtj8=;
	h=To:Subject:From:Date:From;
	b=AMnblyHK5FEwDrady2xLkvof5RBvppjL5+qFxlXeyJdbjy8BSVKtsuphdihYTijRR
	 0v/o1tVe3lpfsPY6V0Hg91s7ilSwW/vIYLEvDwaAvo1UMxRZO3mSBLi2Yoa7OM1WCR
	 ulpu2uqIOQe4jQM14oBDcPYvgK62NRlYr/sBHOAOe+O5pc0Cuq16ztCXjD2WDeDqDs
	 zBL/Jjjas556yfHcNftM04HBxOIUQj8KKSvSN51R5szx8UfJ6bLmngHDpt/d70BdKT
	 mxKsj7130jx1vZUpHHnpECknb/pnhOjzhTY8v/KhWMQGdSjIglcCFK52I8+M15WcXx
	 0M8GfQ6UkLskQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB597CDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 07:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178228599369.30816.6693586998468065012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f85f475046065c8b6bd4d4123efa999b10073ae460ce95097677b6ad0f14cc5e
Date: Wed, 24 Jun 2026 07:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782285993
