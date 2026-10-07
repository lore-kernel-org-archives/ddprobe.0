Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5712C3C1A
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791336034; cv=none; b=CxsMmx2um+sUFsnxPmKqVqi8zzlEAMzR8RY9I4sBZ0ePD9CmLSOw279VOC7I/0b0nyr36faxnHqNlL/k6+gtz9GppWTamRiHMncf27Rf8o0NboeenCQJkVK/fAx02F1L2/MH+YFABduhsEWaRM6c/WdyJcuZhY1ynfk1P5cBCuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791336034; c=relaxed/simple;
	bh=92nTzFRWOutJDPTq0Doq5lGz8mAn00lU6HpkGa0o98A=;
	h=To:Subject:From:Message-Id:Date; b=dOFXpUR5ZnqGRFHhvxpIyCK7MD2jeTc9oLPRtZIu85b4wX3Pe2P99a8kYhpcXKUfWSaaaHN6LXTnuExUw07y560tF/9HhJh0Uds9wWeRjRgghgpvwdfnayEjCkq2NxNIBqQabQRF0i2XOfV2AT3NPQGU3mdklQlSiFxqIAKdGnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idHw2DkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idHw2DkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33EFC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791336033;
	bh=92nTzFRWOutJDPTq0Doq5lGz8mAn00lU6HpkGa0o98A=;
	h=To:Subject:From:Date:From;
	b=idHw2DkMa1h7dZoUlpoKxuW6a0PrGdkXeywkOIVDn0QI/NeDqGT0ZA8TlS/XxCNyN
	 EYjAPpuyJII53trDoN+0ee52+q3ktxWtRLFoPKnEJ9MAXVSbt7Oa8V7fopx3i8LXYw
	 9LKV4FtHchxULPctP3McxKjrfKChUa+D5qr1Kt3G5wWZtDEjIwyDshC3aHN9ZBr3m2
	 CqL/4NvXqNiCpY9/26+1Jq3TaFEH/OE0VYVCMYtcB2QRFRJlmUUzAjHkYM/S+2RZ6h
	 hWKgZwQ8NCcHyTQZGoN5l6KS9YDZVfWsqTvAOre0zHuyQXn90nvvwknRTBJuXPiRH8
	 UMYkc7WcPkvfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC83CA5FED
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179133603368.12940.11361480877865066718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 114e9afc3a13ce4d2780c7825774ec803df1e49e3c043a75ae44d0928b9a96a5
Date: Wed, 07 Oct 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791336033
