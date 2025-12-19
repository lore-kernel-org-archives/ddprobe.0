Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148B32DE70C
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766167434; cv=none; b=HzdgPxZfigbsXYHTGCdymyYwY7XX0TWm/1l4xZRUek2OESHC605SHVR3AkRssonl2WYrxQGNkAXrCCbIEZqJ1R+GQk97leHaRg/lzKqcxXFkgJ/3qtqiy617q6Fs4IffIlO/UxrYdOyyZOnzJRP22YRPcEo4ukFDfXQsUKH5Wec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766167434; c=relaxed/simple;
	bh=cRNSfXyA0EbqL1guZ/IJU/GQP5a1UBAKKpprzVdaBig=;
	h=To:Subject:From:Message-Id:Date; b=picAu9y1/tzjwt5IDPnrTd7Co3BBrZDPdUffvX3WzEgcH6hp2nnuktmjXoS+tvBXHUdk3t21I2JBzofRvBJwXgy8KYLfHkdhp+NjTNOASxTUepilbiE1OxU9LHTJf+cuW5eftRz/4dMrw8x6mjueR+bLh41sF8w6yZ1yK4T53/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PwnQA/y4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PwnQA/y4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EB5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766167433;
	bh=cRNSfXyA0EbqL1guZ/IJU/GQP5a1UBAKKpprzVdaBig=;
	h=To:Subject:From:Date:From;
	b=PwnQA/y4ffWnJSuIBSYZrFcbxIYwAclPWRG66Qx5fZXgP6KnjHytYxZ2SHecoAX8S
	 eeXFCBiP2vwxwitUIbsc9QDJYcAM2Dp4RhiK7YwYCccEGK5EhbE0AK6NHYPpxMN9kD
	 opDlej0p+XPns75aPtQP+TDdCyZygb52b0lRo+1adXO1OikPtxvRQn/IH0+nEC4oSc
	 IGQTRDOEjSbK2VpqhSiuzQujGXleofIz1Aapvi3coojdlGdDM5mCHfeuxh0XJUi70H
	 zQplqON4Ds+pWpbtTHFI8bQEVCKoGNLJuTlFgHZwTaABdF+c4HpxPluIJCRtnNgJkd
	 k6c8f0zEsSaJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93815D7879F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176616743359.23150.15706645444835373605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f81b7e9152bfadf9cf4d7ddb2a504e3e3feddbc9d13114373bf3a566a7e46649
Date: Fri, 19 Dec 2025 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766167433
