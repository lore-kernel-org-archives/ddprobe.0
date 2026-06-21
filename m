Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C891A0712
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 18:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782066394; cv=none; b=s4mQKDeYznCUHW+xycp6ifG/pBbJm7V+hrt6mLvb2pp/2yJWW+Osn1rJHuOd4xROj2U7mcmrfx2pDWSpbxhWM6fX+Jr/75nkvvy7tSWRBcUEPjLrkPygsXTS5mmhU96P2ma+c5gXrfY2Okc1nEwHs5kQv4wExOe44y7ZWDd4WUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782066394; c=relaxed/simple;
	bh=0yJazigRDMGJRAjOqeBVgO0d1XzR+ghA489r5oSHXVA=;
	h=To:Subject:From:Message-Id:Date; b=s2B9Jj+p7iyLYiYoHQOZ6WvB3ujbDNIfB5WnG8c0YmSsNitECCRJSD0wh85wiQy8YIDMK+uOtl0MA+XlGjusEoVhGJ0ssqYGQK2cb8MDdlzdKv8CNM+r3deEICopM6Gr/YdxL8HgHOGZY+aNkowBoRn6NCRk892L5ocMEYiqeFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWzbVcKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWzbVcKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3CB4C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 18:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782066393;
	bh=0yJazigRDMGJRAjOqeBVgO0d1XzR+ghA489r5oSHXVA=;
	h=To:Subject:From:Date:From;
	b=rWzbVcKJybS+jQmy1zxqxuPfOAwxMbP/PBqslbR4RrhevCQkOaiFtnZrp/9rC7i4a
	 ArEATG1bfmohZa/QJWLIfVNAQ0oIYMfXOalZSsXEf9RisY0bDnS4KNtk9ZPmnZs+cp
	 2Okk5QufrRUzTz7BRNu86RonCVpGn/yBe7XELIkDbv716bQo+G/aPTEV50dUxty9Ex
	 388Eep7FIkIPNYaJ6G75vFu0leCgspNWzoq/B/srwqrtP21CBiOFtTYhepv5zT/1Y1
	 cDtyIYKSmtlXEoXHzseQ2619IcnFFHaaQgkDa5yYzj2QU8G2f6D0n6mh2zL5Xenmfz
	 zUkxd+caRZt3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA34FCD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 18:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178206639369.18953.10283050846842457328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bba904afe25496c6c1de07817171e309a049f392fe2900b4641f503991b7de3
Date: Sun, 21 Jun 2026 18:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782066393
