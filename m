Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2979B5C96
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762705194; cv=none; b=qZ0BC+Hk6ewhZZbt6ZBQ3s+BBQCiDS8MHNx25cL5i31Qmaq2v0J5giLwam6+e4/lz8/0lwwT85+gUYBp24AkyCJn0mGQPZJYcxd95X/qIbTB8EEg0veOqAIxGJAvauudtLxCIHRwBDydEL4+1uuneQkMLUsklAEkE/4AdpRlK74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762705194; c=relaxed/simple;
	bh=zm1raKDnUB+x46Di/6gGNJqhFq2MnD8AU3LtGV6gB0o=;
	h=To:Subject:From:Message-Id:Date; b=phR3almWvJzfMW1X6xhrg6tTGj1xrh3mTs8dOMy9LH7DIGzlIdJ8hP+D8LXVFVWdYhz7cDWLKA60M0kLT8PYMiDDk/W3IH5J1dIsyq5Yt4LIboJW7FknH3ABZnXcFUw1WIC/DkaA1GePkYnjVxs7uFQ28beCiF8jhM3Lqt21h7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6f1wLu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6f1wLu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC75C2BC9E
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762705193;
	bh=zm1raKDnUB+x46Di/6gGNJqhFq2MnD8AU3LtGV6gB0o=;
	h=To:Subject:From:Date:From;
	b=i6f1wLu5y2OKxDPulA3O1DEfYj0qQ4UVbJSCbHdD4GeY28tEK/CsY20hubWdF23M5
	 MtxbeaAUaBHoD7A5IHvtSr4wExNlqA15uKndXvoymhqfLZNK+yIi5l/O775tUK/eM5
	 udB7lLjV55KAOKlub5uCleNMD7Q6H+LRz3NVh6j8RUscOZue1xTxK4JtB7xoqXF//K
	 55WqAl1WApj0XJX6xwsMn3c4MvH5xow0kCnnSxeudyo6OlHa6t3hFCgt8lMr8hd0Mw
	 H78JoXnFCGiUaj8IeVn1Ytf6+Au+fw/4IGO257x/mz94aLgijIo8zCckRzRLvXl6dd
	 9JS1YvSMDth7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9030BCCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176270519358.15095.13366313337022933762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9c0bcad4216a84f017dba63daa13989299e744d9c990902bfe1121609bb88c
Date: Sun, 09 Nov 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762705193
