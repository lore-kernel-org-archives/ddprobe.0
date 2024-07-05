Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C98416EB4D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 19:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720206923; cv=none; b=PBVRLfQZvF9xJAOIrVL/NPaD4wk0Ptc6egkMNll9JAY9VmLQVqCwlzNBmPPOW37EpPcQHF3uU6aI/L2uDhJxAGrS4CwJ/oj5UOczvI1EcUKOFOcoko4ptscRNOISwTYT4hpntuCEbhUy2jbweee8oLci+NMUO7p3cXcEBpg4vgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720206923; c=relaxed/simple;
	bh=DwcHR5quMbgws37kzP80y1CrAsV6/bWd8g/orBW1VHo=;
	h=To:Subject:From:Message-Id:Date; b=L/XIIjMyny95P3my05tus16pbO+6vSffONXA4F0mTI8NzPIYn3JYf2i/3PNGKET7i3Fhy55Z7C1FJtLcjqeGWkJ+zwxnJnaK0yMyTAluk+VVxfTDC5M6K9W7oCNoHSvQ6EuAjN6bqFehriM7tmjkcxK+wCPcna73+cySkGu7z6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Seo8xdTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Seo8xdTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E82A7C32786
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 19:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720206922;
	bh=DwcHR5quMbgws37kzP80y1CrAsV6/bWd8g/orBW1VHo=;
	h=To:Subject:From:Date:From;
	b=Seo8xdTVwwIfgBDaLLqZnIBSMesq6uhdavctNFMiIHn8yYC/Rf8lqc8Q5BFpT190u
	 OAgb84UylpzodjisnK06sgN1rPgSAsicUTZ+WfrBfaCTBfWMuTOqo7sSUWZ+pOtdQJ
	 Ncv3uHnjjcvZt3lE0RrPMJvnSP0jGUpRWW9uHnLIN9jNSpwGJ9gaODZ2Q5YiAkyWpo
	 af3zHIhtw77x1ZJkBgW2BI1BjyhKSm6tSDkIcRxaXAU6FVpeC/nusHYI7zHS+wYM8L
	 aZT+W0Y8G16e5+UU4taoyfNRcM0+OVDaazAM1mEyhLAdc3Hl5d2wB8iIKGMeE6ho7B
	 coMGEJp6WQiAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEBA1C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 19:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172020692280.22282.16243422307379754847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b56bf76616afd3034b15528365da8272d63b5140ba34d82f7f00d0584b29876
Date: Fri, 05 Jul 2024 19:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720206922
