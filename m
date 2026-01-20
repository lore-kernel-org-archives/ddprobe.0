Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6441F8755
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768877634; cv=none; b=Il4f/+gyhgdIMoy2TWB1W+/tjp339PYr7hKh9mZQh8akalg25C6vqdHq46vkCie4fr2hBLLvauWHZjDo8HpUH7eRff9fPvkn76CkqLzeyXgtcUT2bEQ8mi3Vt47WY8EGzJ9i2KU7wMVk68c7tYqac9X5h5ZFifi1km+3KLL1KM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768877634; c=relaxed/simple;
	bh=V+YwsGv37sbQOIzPhnQB1AyinDddz/Ml8KFhhRZs6iw=;
	h=To:Subject:From:Message-Id:Date; b=UIEDxh6weinfbVslDdMlZRK+Fbx6YRoFSHFzzgTVJiEj69OOasU67EwJWH4NZjSAFOdSUKkj/rEbKQ0GfyQi8C59JkN6Ebg87PPkXnQUrsFfieVaQ1WWBy7/I0MvImneR8NDbaLB367qJBIier/ZD7qAjldsajMUAtrwTYiHDeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSRVgN+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSRVgN+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC4BC116C6
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768877633;
	bh=V+YwsGv37sbQOIzPhnQB1AyinDddz/Ml8KFhhRZs6iw=;
	h=To:Subject:From:Date:From;
	b=BSRVgN+V5AbWFpBNF4Bep+zZ3MhVSqKI18iGM2fwhwCGDdES0LvfPgtPl0/nMj3p4
	 K+9HDqje04kOye/J8NBg71pfVMO1h80XiVn02VPbCT2cWGHS/ztHnKRWU8I0ImT6jk
	 Sumg3asftGLvBwDkH9FvdmInZwVyqYqOot0YgnwYW+vW93gfll02/ARYJqITGllb01
	 KyACwPKqKLUGlYbdk6feRpbp9tzOfIpApqlN2Kl8G0RUaHc1ZBbBbMa8vnokRonAwq
	 sXYeAG0Fw25ZmD8AXT3eK19CEY/SIBDotqWp/wqfG9CM1LbdZAvfb1IrXvCQknkyax
	 WCY1NjJYvEeaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9048FD2ECFE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176887763358.13906.7725083087460179739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a26a8acfc43a392392a6d5d914009668860c3da374d1b4540e9b1e6ce33ac54d
Date: Tue, 20 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768877633
