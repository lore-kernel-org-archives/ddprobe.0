Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21850522F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758499794; cv=none; b=eXOyxpWdSHlFZ7MReECzho6BR5wEYC1DmHzmANNRJjNIb46mmMwWPjqZZZhDkW1/HaTI7RSoi3UTe+ZU421gsKf4iRiCaJ8NdexpJzryNLPjFwzSfSFAtkhmLaKOLmPezO9ehnxZYk08JANvdD5W36cHX+LlS4U0NNLQRy8mruo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758499794; c=relaxed/simple;
	bh=ol8Pq9efhq3mzyG5jmFby2P37Qmyg3ztfNlJ0/vQmF4=;
	h=To:Subject:From:Message-Id:Date; b=r33xTp7S7wrhQU1NFR5WsxJuh11qE/tngw14AwnbzAfHYnKUIDlZ19Mopi8VhPhKqC23lhf3HgH4A+0hsXsHYyJxCzVISVQTb0UMcfO5dwkPOvwgRNJMiV/SL8jZI0jLNPDN9yNnTypa6gZlMrv48+2NomTRdUxpf/xXsM4R4SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQZadMBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQZadMBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DA9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758499793;
	bh=ol8Pq9efhq3mzyG5jmFby2P37Qmyg3ztfNlJ0/vQmF4=;
	h=To:Subject:From:Date:From;
	b=SQZadMBV4mKdEbKj4musGJTaIXTE+bkYmN5i8I6alzIgMYBCHT3mqEw87JPzwlpHC
	 ayC25kvVAw8+0/DBKtbzwqu3T7fxwvvkWEkNrX87yoAZQWlWGlBDq20pOhmSKQwy2Z
	 GmNYSYddZn2wZaonQi7qrEsuYFgkc/Xj9GmFJyID4FEnBT4vhlvjBMPaPhEzzaax0r
	 qhHRd16fLxOJBarldCq5BUSkOVyQXAGl1gwMUMTSAHdXPijRRPxp8kR3dV9ar6F7O4
	 YwC62NGVhdayxxvdiyii+M3zDDVGB0AHKKiij+BT8X3wqCDftD+S2dkbUJ5Zn1mYlc
	 B0ApPTBKW3Fog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ECDCAC59A
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175849979357.8292.868412244968147423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eee89c1924c25d5a163ae04dd04f0c2f510f0b89f40b5934e9e42e4303c52213
Date: Mon, 22 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758499793
