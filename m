Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A95450FE
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761265794; cv=none; b=AGO3cfdI2O/qE7M5nG4CeD4OJIecyNyaDqIQM+bBsFHhV0wsGt1m7rV2qO3baSiFzw8As4oZRgb3WKVU3ozdf3IYyDLhYizNKQfooZg0GhX1bYsYt4fFzCFAUjJLhs9yl62MJ6fz87hMqJ2/ceJRP4KhKG2Oi1r4qC5psHpfNq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761265794; c=relaxed/simple;
	bh=4x4xglsdjFysWCJjhk/CdC4gnTBkcQUp4jkiInmOgX0=;
	h=To:Subject:From:Message-Id:Date; b=uaFXXGhOmGwEcDsd3JDYjWR4cC29kI3tUxONR5Hc2m75kve77GJv1p9/gSuPoDQYoCpbwjb6WxP63ekWIm8K/cKESCiVNeDGh0tKp6OpYE632vPL27lGokyMkufh618ze5ogWYuw1gGvGwOUM2kTxaJteLLfdqIjj1mCCIPkFv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQ7MlsQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQ7MlsQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87A3C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761265793;
	bh=4x4xglsdjFysWCJjhk/CdC4gnTBkcQUp4jkiInmOgX0=;
	h=To:Subject:From:Date:From;
	b=kQ7MlsQtQKmBfF1X5aco5Zk711PVhFYjxIslz4tX1RL8D4lAYM7AP4FMNsT7svV6L
	 Uc1iN2dz5OEw/a038D4nFoqp5TSah+ra8/9JdYBCJVNMKU8mYB8XrMvAcqf8DehKf4
	 +fbIhV8i2X8kbeMZvdtIFgb7/WDtIO2nvbu8hjxk5Nsxbrtby3RD9zwDdZhffilejt
	 3B0iYitS9kWT1BPuPpi6Li2jkuL2ytKsxf4T530NuBk/VydO9y6nwgwiTG2FKdY9y7
	 0OtiMCOPeX6aU7+PpOxWOrRd0IF29TzO9udRAz8RsZo8Lh8xsgaAS/W8uqdv6ppSq1
	 KiJpcJMmAr/5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950E2CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176126579357.16257.16503757766884885170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed05206dd1113c08e1d96a23373229b47d1f96fa106873ffc06500acc1bfd04
Date: Fri, 24 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761265793
