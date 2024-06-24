Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DAA13A3F4
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 13:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719234143; cv=none; b=GDJHy/jdCjfXXCy90K7lCqCkQ+PBsGx4eA6DVvTzOOSSgMKN52qlqnw2nZvxh3/4qAoINZ1q3Gvgxf/dxCQQcsb5Y0vFXAzAowXgR5Qu9p3ft/edmt251OjP78TQOJztScXF+tFJoqAJ6M4np/GmSOg3oLemVzIscBu0RPdeUsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719234143; c=relaxed/simple;
	bh=PDim74imTx7+YL4FEap6ndDk7FegO1XiNfbBQUztyLc=;
	h=To:Subject:From:Message-Id:Date; b=uZcVFPQnfXzHpZQD3vgYAh//ghLngVlOIj9s9rWbh2B1X8gge+SM6kmcmGZb7n8/b7zbA4jz2uxP8uBFxNBhUZZHGY/UR/PTy3TaM//uXPGeLVpbwF5j/tsvbURDVYa9rirrWBaBDoKQynx3iJ5evcMbS/IkRelAM+lOvLH1fsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g88vI/dC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g88vI/dC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA601C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 13:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719234142;
	bh=PDim74imTx7+YL4FEap6ndDk7FegO1XiNfbBQUztyLc=;
	h=To:Subject:From:Date:From;
	b=g88vI/dCrryq9MO6NCyilygkdWfrggpUDX+k1n5Zh7naUc9GEumYGHsC1Ioppby2Z
	 s0C86ikCQLUTvoNnO1f0rhN2Lflz/Yz/VpIf58mDSKdLLYloqxbPy7UiXP5hlNioKe
	 URZxV6ZyJGxAjnGctqBCRj27ay5ZoIr6bWn3UuVeqGrpppngbH9sPBYWW/6m2u27U9
	 EGUSVg6iReSMJFX2iAe6bIOLqrBQQjDbiCp4yPXKRcVVGZw5dZ/DewBggz9Hq1V6qm
	 n0nIDZ/5Tn7EKSTgPZRmrAyv/g//WC/DwYgtXztsPNOUlk546xsCWUDIeM5yYKmr/f
	 QpXZ2Ap4sXh+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C46AAC2D0D1
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 13:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171923414279.3122.7611343719614220608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2a016bbe503c14d9a82b932ad1feff5392c891133c09f1dbbac256dc30690d5
Date: Mon, 24 Jun 2024 13:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719234142
