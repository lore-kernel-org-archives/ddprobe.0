Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CEB16F273
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724673954; cv=none; b=V6zDSUN1c2g7dmEvxsjoy2wUAD9uyFCRu+u2bs4rCC/iN6QdYkkQMlQs2HkAzpcihoBiOWmQs9limTFceHik8Gpce99FX0SGN6J6XCDi+ks1f6mrWn0rKB54XFYS9c0RA+VdaxamqoqHA341SdOudfHMEC55c4zqVipKXWgvAAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724673954; c=relaxed/simple;
	bh=DjcHVaEfljzChxdhFI4m3KhiAir7fqC2JmcU4AAbMjY=;
	h=To:Subject:From:Message-Id:Date; b=lc7M2WV/kPqFXLVg3tJXmSedtWvtv8t1m27RIQoOEEX5ySPi259pNtztOFrdHSGVxzRb1Y/b7E8tgcenLdYxueGGqZ0XgGsbnN7u6JhxXzd7HlhiLgEG3pMk9WxPd9w8PXPrsFX2aOadVAeUvvNo7qd1v4wf88PUwjzzV5GWMyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSon85ss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSon85ss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC59C5140B
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724673953;
	bh=DjcHVaEfljzChxdhFI4m3KhiAir7fqC2JmcU4AAbMjY=;
	h=To:Subject:From:Date:From;
	b=PSon85ssR2bYe79jhnhi6RtBNpv4DLJWmV8YCA4gIRWis0FDcctsM8GhUzAHIQh+G
	 xg+05jFYGM7RADvs1Ceg5fLYP5Oj5DJChgsnUOziWnZTjV/WjfKNOkkWEvLna4+3qk
	 TBREO2Cl9u1VmXe3cZQ7WcNVTA6RhqsrF9/v/FpdnFP/+U6pK4LepTNY0cmbhoaY5Y
	 9oSIxCBKKA2Byy0ebmx7h/evwMP+jcnvhne2DAGzotDEt+XoNJvByQSlw0+k4hh2Ts
	 5Tp+QYwxtCXqu15GIluvuYWfTALI4sNQNZwz1Tp5VZsC4bAjAi109p0L+RHFXNF56q
	 GBTMkoBWJ7B3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B821C5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172467395362.30001.12033670124679119851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36065b7b4d57d5dbbd0eb1e96655ea7b0e5295442d67df57d5b4e7f8e545d902
Date: Mon, 26 Aug 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724673953
