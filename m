Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CCB158538
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769912634; cv=none; b=U3+0z48eN88NCz2CTtGZcV5ye15JBK003CsdaD26shXFQNQx/q8/XnC23AEYiKRo+g3h222DjrbYyoCJPKIBge84fN3B7pqv/KgvjE7PHQha8rajfi5j7aSO2/58s1OY+YGBuoJ4P+VdTtdTO6By6EShvOl6xCGc6VZoYGBee3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769912634; c=relaxed/simple;
	bh=ISSJc84CaHJ5TG+M7Fw/+C4Q/qR4xzdeMSfWIPnEYpc=;
	h=To:Subject:From:Message-Id:Date; b=m0EERdEzJYHG6h9O098GJuMVxYjdYLXk40J8xDDT49Ticns9vK9W05LMZ+QVdRss2M2NX63pNSPvmLTWPjWs7IMBQl2bsFrSYE3b+IkwwGr5WJCsusHrzlYT5/9tpNa7qqTs/dSdZ3F37DxHlqDBCly+gSyxj+F0AiWuuGvD1m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPzjjdL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPzjjdL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FDDC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769912633;
	bh=ISSJc84CaHJ5TG+M7Fw/+C4Q/qR4xzdeMSfWIPnEYpc=;
	h=To:Subject:From:Date:From;
	b=tPzjjdL1WPb/eGhntSyvzjcuBzVOGL3y2b3vn45UIjfJYjzoL8HfxZEez2N/iVVZy
	 BQIYoPZSIZhL5KCljDrjLTnDPn9pD+AoRSUia/vxI0o+ehJS1FeUwQqvdJxTUtuYxb
	 e7nRuMjbImhumF5D8efFWiJsSVA8PIVicYHubOZ9tD4nhYyoAUkzyn1LVBoMe1jU9g
	 TzAeytCL7xDwyw98PSBST77+bX7p5bf/QGoLSHPizzUzv+pObAmk3SCrALAHaZvxRj
	 qoq4CNI4guluwJ9aBdCdidQYVmmQoU1pZVqFR7bu7m9d4QSo+i+UhZYUK7brlPGAKm
	 RsItqoMKgOPHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E4FE7C6F9
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176991263357.807.6593342259849244240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0fb48811fb8cbd80120e3dc4adf4c12acf8c8615eae6f3ba069495ae0dd056e
Date: Sun, 01 Feb 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769912633
