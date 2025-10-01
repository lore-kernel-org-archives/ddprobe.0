Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F882CCC5
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759277994; cv=none; b=WqgCcBWiDre4Z88f/PXglqIb6s26UgKnXRAMUmvrSeX0708ilr5hm+eUUMV1T5hAzWyTP91YZIrZYmtY/mBjGC2y5cqIoXyNZAhq3eAHupZCsxAp3lc8aVJzk/3vH/tdFiR6qpb0ozLGA72PXNJQ5HubSHWacLLjhj8pmJ2ML2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759277994; c=relaxed/simple;
	bh=845QJPVTxUv4DlKyt5gvNLaufROCRVchB+SfGi8kXj4=;
	h=To:Subject:From:Message-Id:Date; b=a4mItIn2U9yEU2sANw/4gLPbwpQnqIFfloyVXsQTymj/khFUXn53cV4bRnqO29eamQ8bB2KSbZ3uKyWkf3t+MP+1GVICS+zU2vq4VM69iICBlHxqhphUQwEbaz9FGzVoraWOdKxuBhu4PaY79pF5n+Hs9rtYIYGA3kWshitotdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdiOa+gz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdiOa+gz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4D1C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759277993;
	bh=845QJPVTxUv4DlKyt5gvNLaufROCRVchB+SfGi8kXj4=;
	h=To:Subject:From:Date:From;
	b=cdiOa+gzy+N2u3j/JHHG6KBA8J3kfqu7UFv8v2zyZwMTderWr9D4YellASC7yBEzN
	 wwytKd3CTqI+kz8uupyKeibMhLyc0D1ahlZVDaodzHxGJEYW8BHmQKsIbTmA79uYY0
	 yWilityWEefU4af5vl0h8L78pzGg9cB/MKvs2yxaAgXGyrZ6FYGyb7RoYnGTSIShZj
	 AFv2W9IiIxzaCxaZv3DrszEHxcZkRWsFQJEJvjEBS9ZdMHnCO0F3GTFxL29c2f1jvB
	 mZXccyUfov6vtJI0ZPz60jHmH3eKI3oFjkTmc6DJ/Pem+wmjG5jP3pAWxACYA8jD0P
	 YyuGwgKwJwrmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98440CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175927799359.16602.5750951666377663564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc63db1b05cbf7a54e77a2d7b0eac48ad6c9864c3225b5d0ce547a764b12ca4d
Date: Wed, 01 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759277993
