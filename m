Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54989347FCD
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791345634; cv=none; b=VL6TbgNHhnLjg2EtSoCwxO8ediH2p6eHJNo2E9aBuA/Q9kIhhp3E90jhYjyCeL5ev3eufoZQMwREKBStUXDN+WRckRkjolWOh16i9LTAZUJ+WKgIu4bc3imUEqNdtsrn/nkU/c0REPpon7XP+r62hPk5K7/0C9SgKm9wc1hBR+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791345634; c=relaxed/simple;
	bh=n3BN7odhVNazyVvmco7zw21i0GEM6MGo+kfDouGNKf0=;
	h=To:Subject:From:Message-Id:Date; b=WxDl+cK4S4G9qnOzvaGhL5CmEIrDgLdbD+E5woSdFEwgarSStxSuNDz+6AzBaeYasonTY1HzKM+8hhf0w1WAkfK+sH63IbDBIKj0BypPwh2H+IhcuPFrkDBgkPsyxZe0EIW/G5ztHBGZD0LbzOEFzA8rOWRLPY9Pu6HaiNVZOQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKS5v6Jz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKS5v6Jz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41AAC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791345633;
	bh=n3BN7odhVNazyVvmco7zw21i0GEM6MGo+kfDouGNKf0=;
	h=To:Subject:From:Date:From;
	b=cKS5v6Jz6m/vdWdS+wU3h7oqHz1W7xliFBJxG1WRwYHjtpKJanLxPZSElLe6NZdMQ
	 pxrWiBdFjBEzdJoT25pHUzwFNLI0l1rwJuZ1JCTEyRfgPQJJdW8Y3hhEdeMF13vo1G
	 qOpz7BQormXZjVvsRKAxaWxYmYZR6mHtfQdRTUbI0UV7qXOVt3V08x4AQZOiW7l++j
	 ngEQJ43QOogBrMmuFlc57+Zecp6i/xTJqTuYkR7fscwsRMFlWqNykAQknsZ0/Hoq/K
	 AatLb5G7VL/EzNXMiySnvZoSGGq8YX7ILtFzLcDDzQwC0ifG4tcXLAbOfhXbJN38oS
	 t4vp94IDj9ybw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24FACA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179134563369.7470.15588746229364028542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d0d1dbe1bafa9dc783b053c08fb3e80e712665baa30137bf326e1bcccc010e
Date: Wed, 07 Oct 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791345633
