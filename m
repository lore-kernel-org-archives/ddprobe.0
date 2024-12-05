Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66FD227BB6
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733421953; cv=none; b=TK82Z6HIQ+26eLTWRPI2Szrpi/uylS2E2ks0ffeL/iN8WxqH/Ku1LagLwNgfLfdqWttasjMDB5p+aRM0+T9kdayl2YodJxEz3DSQtZ0DStJtlj/23MUSYOiUilTk5kbNR4+77D8dJGngwLPLZOoHM5W1e65JA6HvZ5pX7Wg42kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733421953; c=relaxed/simple;
	bh=3eXcD/dbPyFCcEUsIWsWh77pzss1jbUE2IEW+RhqS2w=;
	h=To:Subject:From:Message-Id:Date; b=QsvVzY6KAhtqF1Yfq4EH2NQLTkUoJegzRbNWNyeYHzRSvSRv/cZ9Dy0mBO9Zk+lmGwrBxxlnMrU0mUikZ1nypZsbED/GGID6c6kXm+Idg/JtM9fcgPYRZ8nLdZI78801ZDeBvJs3+NGzD3RlD0tChUmhAr6rSw2IxN1F+dWfbnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWzUpZBU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWzUpZBU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6E2C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733421953;
	bh=3eXcD/dbPyFCcEUsIWsWh77pzss1jbUE2IEW+RhqS2w=;
	h=To:Subject:From:Date:From;
	b=EWzUpZBUusbeCIpWbyEmmCMFl8HYULbDhuhRkyzWCqZHD32lh48vwyasHsDirm2C/
	 GtxCySwNLBnfym8CVK8pprM31uykzbZxgVnKQnxleM9lT2Gdeysdf18sjLchSltHnt
	 tfnNWfq7BH/oJNfifXqXeX66xK+RabwZlq1dlwgEUO7JMmtkjJ0vZyNIeZShroA5sC
	 C8JnwUe0S3M8Qtlf/WEdBdvYrNnAeM8ZBl/Xxj/pHteQSOZnhc9PErnaWCOFZV5gs/
	 feErJegoGJ7Nok7OI0Ka5Y9FaJMfk00Q/mwp7A5rhTXpC4BUVpA2I+b0xmcrCNGB3E
	 wIMSP/pYi1N1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90524E77170
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173342195358.17122.766917920443053690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbec44b28f94e0c5fa609592725693dca7697cca9199c880fdc1759b6b52ed37
Date: Thu, 05 Dec 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733421953
