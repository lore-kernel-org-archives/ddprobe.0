Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B38442464B
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 08:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787127636; cv=none; b=MQ9HFvnAs4gYOdtlN1KlDi28rpDNp+yufcAQYl8653X8tj4KtlgvJ5feoiIv73uxiwW/LQb8qWxuggGpff7OiVKRjn5zD1+4UAR7KDSzu9qKdF+RJe1CJYmPxXOx6/IwHpIUt3Nc5mLfNioA5udTqje5qDzEb2TAsHz4eajCDL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787127636; c=relaxed/simple;
	bh=S9pPFyCp70IIp3WwLnSFqlOGiJU3t08QWVPkum1rMJ8=;
	h=To:Subject:From:Message-Id:Date; b=bcnzYwHYhA9RsmH3XVIt2f/SAR+POAuj2x/K4CeKfR3C2FYzU34gHaXBf654AhB3YKDhQZIG7YyCsJMPZsQx/CsCJ1vfYYfE3kyz+phzIrzut4SvAlrwRSWsv98D4d46kjrqltUoalHOtybyCjI3gp+DOf1fCFHUGq65XbJz3zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZeea0WC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZeea0WC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3A1C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787127633;
	bh=S9pPFyCp70IIp3WwLnSFqlOGiJU3t08QWVPkum1rMJ8=;
	h=To:Subject:From:Date:From;
	b=RZeea0WCzuUjBrdLp2apkvrAWuIfITI0VB5hkojzf6UFoO5w4P/MgeSYQ/hycLtxq
	 1BuRnzmubAIoYnHBE5mgRwtNs97p0gRGpzl4/aaMCtO7o45yj0D3EUWCEzAq6brVzL
	 i+Dy7Tglz6w0G0UI5O0SFnp9qDNoTiBs4dh3Ka1T6DpOEbtaTLUzqfMvyojEnteVtx
	 S4eIW/7OTRGiu7ptftc1ypJ1Q4xL65RvERv8X87Q9kgOLVr29DpIGinCHPY8rWcbGW
	 S4J87WCNZwoNsUSJsieDZbWkoPcYe8MFJO2EDDrfUL/Y1j8w5pd0Arr+hOn3cl/fkg
	 d2Vi1ysyWhLHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FCFC5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178712763374.22406.574436214317613745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11da35d4ea1e3349533ed89c54f70cbb3895ec781fdb3de31c10b87cc6b40e56
Date: Wed, 19 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787127633
