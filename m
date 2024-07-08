Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4687EEE4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 11:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720437983; cv=none; b=hXH29qB1bY8+8nd7jGIP39mcdREvJvtctRAlAf59qSSzmOt3a99W/uI1XlLMkQ95kF98gff6Ve7mpLDFDOL6k5nom0pSqaAJG/3vJCWJEGVxwsURNplCKPy6+99AdOi8G6C83fbHuPRZaMgQPFl5XQDTvJ7Z+Qtv5JwRGTn/Ki0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720437983; c=relaxed/simple;
	bh=EO9kJjloWk6HDYYX1PlHx9MEvuvD2xOdxEvfDXDSueg=;
	h=To:Subject:From:Message-Id:Date; b=AvJPD/2XAQUQ41Ix9Ml+lWAywm+1kyA80eor+sHcWAmsjc/mZ8kfieVVBP0YyG873rybXSFeJW4E25fTsU713rFtfjpxg8RyX4u15UjTnklzjXpPeKGgy1Dz0c9FCIUVKFWj+DiJx/zI3Y70NyllKy8ujIKtlbVfQJNjoo/HsSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPYzEPe6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPYzEPe6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9908C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 11:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720437982;
	bh=EO9kJjloWk6HDYYX1PlHx9MEvuvD2xOdxEvfDXDSueg=;
	h=To:Subject:From:Date:From;
	b=WPYzEPe6rTu/iVhAaLRy3cRb7anHZYa+COUXn6qGI0TEMc+nMYptTVjxSctBvKua/
	 kxA/oZvyPKwVh6rudDKHdQAiFyJbdPaNVIWaeeIbBIM0jflFWbIVL2ivTf9AVYnFgv
	 ykVUCkvkNXGpHBwpOqu7I6j32IxFXeIZJcFyJqYGSoa0u4W6EbPz13rhBdTx62yog+
	 2oMjaq9BuxInokWtbTL4l1tlDn7NQG2vFNYUbhI+kd2XOIZephcORl4Q0hDmsj2nm8
	 kb/z/KU4MJ29j5guBk3RkqLHQ+ZHPOpluGdv0ZS4/U+8K9MobM85YzQUnhDsWEvJ3F
	 I8ElGdnGrEfBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CD4C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 11:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172043798280.24972.5453497296403819357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba237b939dc3ccf77bc65486d161b8778a822dc83a6648a94972fe976643db7e
Date: Mon, 08 Jul 2024 11:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720437982
