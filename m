Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D04481B6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753995594; cv=none; b=TjlTm3V7l750UJlRfl8V6Yv8D8YOsrdaccl/ty2HWbQoWniKUCNRz9xV39hE4zSwGRqUBWMq5hyIiG/BRy67E05kMWPa2oz0rk3TttejVYos+sSFzmVWX7XD5sq5YA944YmqocHAblVFIHxP/yQz560lnYfTQOAFJD8dunQ+jmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753995594; c=relaxed/simple;
	bh=kjfeeuj3Z+kPyLZlrwzfQtkeZRQruBC/9uvzql9jMX8=;
	h=To:Subject:From:Message-Id:Date; b=hzgFZyEC5FDtWWqjuqTk3jWFGFgRwsTg8sW+OuyQ428tdNlbjMjEYrfFZri8dBeO3EMM1gaAODVeWjc+K62Dsfr64qQ05Lsk4kk7Zgkqt96ZgZVepgMXwg91NWm2i4Gw1xUnWpuNGv4Bn87s2v1KHZqv0ZfrPvkVcQ/k0dP6Rek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1enXu8N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1enXu8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DC6C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753995593;
	bh=kjfeeuj3Z+kPyLZlrwzfQtkeZRQruBC/9uvzql9jMX8=;
	h=To:Subject:From:Date:From;
	b=Y1enXu8NM/WBA8BqBI98cv9fferXB9R5EcDD++wDmFIBZzbHmuChAwlH7W9XYV5+V
	 vQM83qkD50HQx0xMQoZupE2JjFAahZXWfYBWmILtA+/nE4fZor1vObyY1k3KeKO+/q
	 klYCe7IN6pFzt69II5aexN2o3nfdCCzMt9irVPnl9P9NGtfeWVC1nLHeoN88koyQtG
	 /jwctVxRjZx2PveR1IxPjwF4XUPYLIzsp3PpUmXI7cv9uU8ndheaaAy98rlGfZaJqK
	 z3Mw8eVUoYGZ+d4Q7wMbYFDAOZAC2FqKYDf3EDkuSmtGwg+R3PN9bMFdvRajt/ttN7
	 CRr88yvzf46TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C95C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175399559357.11153.7588254741922685692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9dd00ae58f6e34e54e813b29b269fbba325b8927d9b1c90ae1364e8c001a68f
Date: Thu, 31 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753995593
