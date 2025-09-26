Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB24286D46
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758875994; cv=none; b=UC9OWtVDs/OHfnxTw8zfuBFTYfcKcPEncvnPt0KDyynYkYHDcdBsu9rMEOmrDvnnaxHAexwWCsa8Wl3Ie+331EJmeJgDPFQ0qEc2+0oVJ6zg/feKeUYniMGIKpVQinyO7jRyeJUNjjHY18t6szQRUKGUsRGDdrEW7XhQAvQ/+HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758875994; c=relaxed/simple;
	bh=GQKo5+phbYsgpGgmOYofaiiy4ULb8YccfsEUyigozaU=;
	h=To:Subject:From:Message-Id:Date; b=Jf3KVXpVP5HquXfsErbpT9XmWkFnQ3oWYmmYIZdfDpqCzuAdy8MEhoai6EpaPfaHJ+AKcMPNgZF6m+0hAmsrcp2ou46oLdsRD98ucFQ4GKXd9LUXYNPivV3RqyPVJ4dm0RE5fpyFC23FVSoR/JUwaYicxVOv3IcP5u0EDLRH19U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ctiwv+eM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ctiwv+eM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B398FC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758875993;
	bh=GQKo5+phbYsgpGgmOYofaiiy4ULb8YccfsEUyigozaU=;
	h=To:Subject:From:Date:From;
	b=Ctiwv+eMmDXFtXh+V3FP2qIT4xw2ljvmaFngAMLS6XjapKtPjgggRlYCdNZ3g+oQ/
	 fz1NGIQWkCLShpELVlzKpzeuSijqRRUfqVYoVWrrX8D3b1cSrwaHPv7QTgv9NIYcJw
	 zr6Z5kvJf5H7x0nWkWInxxZR+kbP6nIhSjGYavlGawf48IQBy4rYtMtcJNya5bbh8w
	 liDQ4oA80GWE/9k8luvUFJ/pgyio0pEKE7qI1laahzVJKwgvILZtwpK3Y0jzA+iRiT
	 +wG72vT4pt6Rm3WHL4NPdYw0BMKUhhmzN8IAYUZgpWk0u0RWUvT+f97CO0AYErAtej
	 h5uW9GFh6mJWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE93CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175887599363.26848.13340819199050531293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78e25d976c81541b1b9fa20a190cd73a886d7f0d5f4be1f072540bd1a066daa2
Date: Fri, 26 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758875993
