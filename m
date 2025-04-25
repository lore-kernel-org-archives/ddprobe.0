Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5C412B73
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745608193; cv=none; b=DdQdR2O0YHcxvIdMcNIJaLZOTIpOg0qkAxim2EBmEC2unAyKUobR6x84ICNI5VnOGe/hH0m1TZwB96gpsOYBp4IX8lw8H+GpyUpcnrfPGGPRzyXsGqlM3U2LGSv0zIntIhHozMulRIuL8itjg0yO2dgMg27ImZ/+/ZndTT3NQpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745608193; c=relaxed/simple;
	bh=+JK1pdB+yD9XgIReAg9ITnFkZsyYfRPKWIkW2Im5MS4=;
	h=To:Subject:From:Message-Id:Date; b=pO8jw0f8TpAgk7lXPzsRUVmcaCfeZ5NuvInT5QUSjr18nscCHEqYI36WXedFsw5ry9i4UgEyAu4ZnOUKOGOApIOVVSreG+qyXcqwrIMJcs7rhOPt+4OpN0x5ZmsToceVW0fZLVWuR//5QrQE79esvz5YRprpuh23GnDt+yC3fmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jceaBIB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jceaBIB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A138AC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745608193;
	bh=+JK1pdB+yD9XgIReAg9ITnFkZsyYfRPKWIkW2Im5MS4=;
	h=To:Subject:From:Date:From;
	b=jceaBIB8ugwWlEAxPQTYnxtBD5R/x10Shhqgy37xzO6WPR4E5XMAZ2ib1xe/vyKPT
	 aKiFMFNhesuLKvkvcIZJRu6zZ9Z0F6Pci1/NbWn0F16q9NlYii5OMb7RknX1AltR/Y
	 XwesD9EUwdVCUPeWbavFuM0ZK3y1jO1SK3vgwkcc0GPbx/CtV86d+4lKJNA0QQRo89
	 EYEBm34kJStS7g9GSLVikc/d+yo2QS5Tal1F5vwcEMgZcE0MYyefxg5VBPZOB5Jgn7
	 uWDQ7SEV/IhksmOVdmTcc0aFSV+7GF9ghC6sFYv5nQJOPqWk7TxiQp5WitE6Xvu3TQ
	 8YiNFvenz8Rcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1A9C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174560819357.649.11125925955614436591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 159aa504ff5c827d37985c426424504e27471c7ee29cadcf6ba3eee25356d771
Date: Fri, 25 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745608193
