Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC7A23B0
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 04:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721103323; cv=none; b=D4FFJKUIc9MBMpeFWN1D9tjy6lD6W0jGPFsLjI9h/n2AO0RdYov7zS8qteec9q56QQkjX1mAg2yXsVW6/D/0U5/xws2i2rbhbWkVpjCN6b8quiQwxtzEupCZRTUDRO1kdvmmCb4wSLvA4y+0WHOBW3vdikzmXHDHFM5znHokqks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721103323; c=relaxed/simple;
	bh=KyEvs/HVIADmygbMdnmPIb9+/xSCfFzT0AiI6b8s6zY=;
	h=To:Subject:From:Message-Id:Date; b=nkFufwne8IjuNrJ6crSwKCzkJMA1zx2Wc3OxilJmVw7GGbeWPWRED6WUrvSqtSff0h5M+cw+D3A8p1B4B3KxAqDGioh6/Ob//Fy0ygUfCF0OMyqyXjKScOyGuKw4t9z52FR8RQguWMu+5RQGCOLHPhGtbgrU5TYc/GPVLcdQYxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAzthRvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAzthRvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF0BFC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 04:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721103323;
	bh=KyEvs/HVIADmygbMdnmPIb9+/xSCfFzT0AiI6b8s6zY=;
	h=To:Subject:From:Date:From;
	b=eAzthRvya0QnwSGQedvjL/pM2MTjRihNW/ZnzSlvXr0livJOQz1G6W4oW8ukesA1d
	 Cl4fZLivEopkQfjhrl+Dg12v0e+0XwNJhb5OUTqEI1kGKoUviZ6POuEarDorwMTbHp
	 7zHN+MXxb/ewxAMYid7d2jJlwhmHMI19/TgmTN1ldoja9nMNes8u86PnLa+r8LBVsM
	 amhLSllNOrbXM7kXDwpcGdj+q544bMVSdMfQCTnD/vWtLI5KhqS9OvM/tW9kknjcQ5
	 64mrtztpMpMQqr9V1WxwCfWLeDvntKLW36p7yDx5MTiYUG4VsrFVhD93TSLFQb4uy3
	 Y0ATnTkfHQbKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9518C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 04:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172110332282.32334.10100237871456587660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9ed35343bea6f4c56e01131ff4c0d924dcc8f76f1f146a3fc9365601dc2de9
Date: Tue, 16 Jul 2024 04:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721103322
