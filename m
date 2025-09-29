Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C08F2DF68
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759110595; cv=none; b=B6C+6rR6EFa1HNYwbyfWONzFfpLGGsDQkgCkm2YYydsr5ZzCk8qcYj5RJ8z6cj9o+eVhXXBT3XjNl7hdahT8DzxlNIVlyR0fUOhVslx8EpQKCnrnedsSTTlLrld/CygT9esql9QF7PJB8gtilGmzob3sgtQvWttA0txH+iatVxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759110595; c=relaxed/simple;
	bh=dcdMa8Qu13h8ShKQvW43CaSxE8OTtGRZFyX80BYcB3s=;
	h=To:Subject:From:Message-Id:Date; b=fUMZ5ELTA8eCasSffGtAj3k496LAS+0AvIj7TYwBXGQTczIa6ZO/HNhWHvkboWYtQGlKbn/d9QgaPvnrk9JiNLIgH6aN3n88D3iNxZebZpn6ycJhm8eIj4J9aVHBrPHVbOrhQ3nWUtNj1+6OBGJtqVn3ElTVD9ePqy0YH/Kpsi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Boa1qXoh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Boa1qXoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45F5C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759110593;
	bh=dcdMa8Qu13h8ShKQvW43CaSxE8OTtGRZFyX80BYcB3s=;
	h=To:Subject:From:Date:From;
	b=Boa1qXohGJ9CgjKcfQG1C1xVZYvdP5PE7BGkY5dRVzzVCGlPSFLgaXxmucLjrd/Z1
	 raNcDUGlQ7OfAWlvu7v4p1fEl4NVlP9u3QfHECQrp4KaFwWSvTAiYmehlhfwUq7Kaw
	 wqVjakWur83QzwY/zkqI/23/6ywcBNqaqby89hOePUj2/+YHn5HWuorGazv6Kf4UgY
	 lO934C/ZFwUCLI6bUd4Sn9Ab043e8g91ab9iECtDre5uCHr2qF3UIgUdrrW7hRq/TF
	 4LBpVEjGoxskD/YWLCR7ZcLZI872S2ocah2bcr2gdakG+PcX/r8A7HfdypllfWgl1E
	 zccBZamEcBONA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90135CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175911059358.23426.10830029307756625275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a38353406d075acfc4d6f69cbb56c949f239bfec3faaff01445528883e22ccb7
Date: Mon, 29 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759110593
