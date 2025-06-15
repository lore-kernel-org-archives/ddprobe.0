Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4494D1448E3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750021794; cv=none; b=C3dvzsTY6I/eU8jyhVXPO03KozGfbYMHKJWil87nD/2CGbdLjVl6l5+vI1wIBA6fiNivcRRaxBqJ6GhYt7f5RnISa0pUHrxGNiukc4YeWHzxg1BGUGfShMOiitDSkdiYnvY2msutoWSagZcmHi4shX0PfmcAeiy0zgd+FG4FJSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750021794; c=relaxed/simple;
	bh=Sbch7fuz62W5C5UabGQ5wczG7BBaFZ9xJf5Z738Zhys=;
	h=To:Subject:From:Message-Id:Date; b=X2y7bem6y7CD/FQIl1N4a6F1w/ocSy+QBdDkGOkFAo1dPR2QBvuPVMMsKVvxe0vKDR9NMgnX6WYMS46lWx9y9Li9IREoOJyoBJZzuqRrmJDAIpzPE6QM4LipZET8+NsUX8nsKrBQBO2QWr2AOsNUkd6g7g6iY1idcTwArqGLJb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cna1Zrs1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cna1Zrs1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC171C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750021793;
	bh=Sbch7fuz62W5C5UabGQ5wczG7BBaFZ9xJf5Z738Zhys=;
	h=To:Subject:From:Date:From;
	b=cna1Zrs1HGydIoO/h4TcTzS+bD29XzjmJtrfsTuuEhp+mhzM8DxBEHKJ5cSJhrN9p
	 fzhYIL9exbdhhYtsr16XYFjCtorN4XGUmzQPNe2lhYRnKx4KqsY2AOiFmHGaXUadrm
	 QbP5obBlyGMLucc/rvyCT8djimwPBNE9e3o1OIJD2Qof0xP35AfLmU9f8ghTVrKQBf
	 ORQknkHVCVBMZYf5bELqWB6fqr0cpqfaLY79wY/ku+m6Mc5lwQRKtiWYi0zUXnZ4ii
	 bfDYEcyuHFOX4FRjRDGMp7krKMe8GuPEdv+6r7QCStros218X0lIjDygejA3BD9WxQ
	 GzL9ipYcCbAfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976E6C7115A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175002179358.22315.3447244229221887574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a0e8de4b6062d3e365a68c3095043b749786cbc3b8d04cebe90c96c5441edf
Date: Sun, 15 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750021793
