Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414B720E313
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750061394; cv=none; b=RM8eNeEHOlAaHvh/UnJfLvmIDAr1azs0q19F/cUFGYKGyRcGFkHfdZ+aQOs37b+ERDJkUUh/Tmxnw7ZYIe1MaGjVLWt3xEotG7f3DfMdw7swE71BM2LfXUNUJounyDJycPSJ3UWR93K+8TwaDqXgMuMYLD/nWHwb1zDf52qznK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750061394; c=relaxed/simple;
	bh=17xPEYKpX/iZ3mnbdxDkOFfuyvALqTuz6bDucqpqgus=;
	h=To:Subject:From:Message-Id:Date; b=KghM7BGIUm48tQVhjI9o79hsMv5PYERuZGEqTnsQHSWFP8CIX27a4XJi1NAKzOPRtTor7ry9+8WQEm8xmXw7n9nM2i1PEmL7DPhVjv68mXu29vxfwOscYu4uO6I5t7NNyUINYEEDwkTstCtC0TGGT79bL2/w+FkIldx9JKVTlGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=on07aMtR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="on07aMtR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0693C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750061393;
	bh=17xPEYKpX/iZ3mnbdxDkOFfuyvALqTuz6bDucqpqgus=;
	h=To:Subject:From:Date:From;
	b=on07aMtRYjRSaz50ksX9wvVIMav9lqpURbnQ+0upWsFgzf0nJwb6RFnHvhBUH8TXR
	 bbK7ujNQn/HbZU2mp4BWefgpY0Uj5bCdjYLdcRZUw21CObcTKjBZ/KV1yK0M3jGJlG
	 tXlfVeD17HRcPTlAnSGtzbGZQ0KV+r+AfP5S/L1ZNrHsiCh49u13A7P8Syqx78KA5E
	 oqzbVeKxGEwQOw0EJn4swqRm+4ujQSj4oMLy5WVrWktji16C1kJC0npxE/Q8Cc+AzK
	 OIbPCv6uve5IFz6UkRvT5eWQZtmLARWHYO0fItz99DpSMg0AwL9P1wpvY3+zrV4l5q
	 okmCrP3UAkc6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90652C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175006139358.13839.4252883827526445164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a753b25d0828427077e629ed06a3f3f2cf27f37c71a480cb05787bc94564aa
Date: Mon, 16 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750061393
