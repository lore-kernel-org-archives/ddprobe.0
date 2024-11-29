Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3979E195980
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732883754; cv=none; b=Tzjcp4goGLv8bVpv7sWTTCxqufdGALXiOd+Jzj6A1Qqwh+cl0fNoee7wfEd0Ah+JJbIjM3HkNVTk3OkTB7c0m2Rvzm4+LRN78DKtqkS13dLwqCHh3Wd6Vr4CX/O0To28QRk9JtoiwBdqQUjHgdZCRiZVFZ93eKSyRuhRcaLCQ6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732883754; c=relaxed/simple;
	bh=Edk23O0SCtPGOQqWqgHoVvwefPZFfpaoiyG81jPsJF4=;
	h=To:Subject:From:Message-Id:Date; b=fW7DJxRxjtOIQoYq93ueOMLfBq2+tI4by3k34zt0c1RBpVDOoWdggJBgdkHsBDI95HiwvZU8iBkUStAozBWX5xNQZZTrrYnLYCTOkKB12VnMvXjgUcjW8B055+LXFWT0tcxsoLiChKhPRk+0hU7fEhmE9dEALOjDRt91jS3HR0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOt7k7aS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOt7k7aS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7648C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732883753;
	bh=Edk23O0SCtPGOQqWqgHoVvwefPZFfpaoiyG81jPsJF4=;
	h=To:Subject:From:Date:From;
	b=rOt7k7aSKla1D50CYfhRUaMn58850871N1KvTwm7ckYlxbSbiAVrK/ywnh+MMD9ux
	 9cAr0RDauV6tlo54uKafXdYEo5cXcsVvlAydZB9QD0A4P707YH/CcYSQCSeoTo5H9B
	 5u8ANippd/3COYUrpJxDTIUd3c1PhslFQxCLZIhDQBRqy1ordkyn0CcG8vTO52xP8y
	 FPaSuXSirOt6lqT6R81K4BBvqld4Fj/9ArVcB+qVKGy2gv9NqGeBVxWe4rdcdte8b7
	 UAVjFnHkOhMGlhmNdvtFNRPcwwtWxSSpdVTbcZCFN2dBVsVGLUMdJpATY73lJ3tVnI
	 a8sXsdDnsgQ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BCED6EC04
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173288375359.16127.3620550697904806770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3713d6f7193edaf3281266dbc77531144be50a21205cae66c07505edbcfcbdb0
Date: Fri, 29 Nov 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732883753
