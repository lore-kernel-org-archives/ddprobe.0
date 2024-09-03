Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2604C1DA614
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725396954; cv=none; b=KZyaGossrzTGmugX14tsHZz02AnbNfpoh9UPVy1t8PeEUUTxlB+d2kcwVDcNTfgzy9AUaHo6SUHtIjDU9Rr8RTuvAZobmtfxwbglQh41Szx5o4lGh2ufzCp12frNtD3uLd5xQ3rMQhCCIvUFdwaoniBJXyrqcE3H7HORXVnVsWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725396954; c=relaxed/simple;
	bh=WhRWBY993FT6kpbR5isJVCROQksNAUlkQBEV1STjcuE=;
	h=To:Subject:From:Message-Id:Date; b=enJ/pD91+x6BXTiPFcIVKOVcQY/9P6TYxjMMklWSYHr3VBQV+yjDTwAROjZKqMkyeceg0LnPJEVKiZSuDC8pRBRFdWqQoZ1EniqlvRbMcgXghPRbkwyT0DKuIKCjALC39zRuNwXp8dindKeUiEyS/ucXMLYa/m0uHMrCwVhA53I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXX/jF1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXX/jF1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B549BC4CEF3
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725396953;
	bh=WhRWBY993FT6kpbR5isJVCROQksNAUlkQBEV1STjcuE=;
	h=To:Subject:From:Date:From;
	b=CXX/jF1DRLCiY68r9jhKCKh2VfkRzSmTuvHW0ckF8VZyEDMMo9C0d+wr7xa4q2jOp
	 2D2doW95AKjtg1G/RoAewmds/0AdyJujqtDg5BxvClXpSnReaci68IGC6szPfuoi8Z
	 vNIyXnHJygBdA7ND8Xvyi4peDmjgHndtWa8/kPchsAmC7B8o63DryFXv7fPbcpkmXA
	 wIBJSam0zu31DJhD3zHVH4cxlKilDd53rdWF+rgsdNpNiYEQBDF/diUSiXco57uAfR
	 E0JlSgDeryPZZmGkLJQo44q5hBvjtZbgAj7yR5ybg18xQup32FOGn72SRM/uuCm4dH
	 IlJckHHkeGpGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A31EECD37B1
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172539695365.27355.4628754466782930950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72f83b0efc3e0d0047699a75aa49faea3279e262563846f435a658152b4627a
Date: Tue, 03 Sep 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725396953
