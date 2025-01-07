Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201CC80BFF
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736218554; cv=none; b=sT9smv/igM5VutbZDTChZezmLdQ2qkXd0gXB4GUXGMMBJwSgu0hdeNFUsCPyNASmjsMMzUHzLmxhrjLDXoCXA4zV3oGGMAMM+DwyyUV01a/liK2xnOFIc3K73WBc84WSlhNVgllSVq5+RMuEqj2O2guGc6X6rWZMwLbRUYyUPws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736218554; c=relaxed/simple;
	bh=gX0sLsq/e66q9SJ72ZdxwsaE+TJEavqlE8HVM3V89ws=;
	h=To:Subject:From:Message-Id:Date; b=r08DyZ2g8R79gsbAXOsgGO4x7wRFYcJS3yqIbWt/SEFn5ILL2kJade2+farJm6k7DAmpie4neqjW15QO4OQBJMqKrj6ckMWCSY7FWNGyw7zO1R/sRqtUDxjlZnNcc4O20LbezXx85aBlNjJmSr6qtgMP77wqzJK2Ip37P8uYkNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4jLWf6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4jLWf6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EECC4CED2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736218553;
	bh=gX0sLsq/e66q9SJ72ZdxwsaE+TJEavqlE8HVM3V89ws=;
	h=To:Subject:From:Date:From;
	b=R4jLWf6y9RBXH6EisCS8Q8i6G445Lh1RQ0OxeflQd+7yJOXFmCkdwH3TzJgfCT7Mw
	 62YPYlLDnbsMK9h4zbe8lWIJuB6qcMl/V3P2T+VSWoW+vh0bdOTmyh2ZY6XW3yTi9j
	 MsMXkRHdkjcCZONms7PWBJGtAJOQ8CAhAgTQlmyd1y9x4GGl+CrgnFyamO0wZFdVeR
	 76VwZcRjhNx06dAY2PHzf82QRo6Rv8g8hpAraQfTDluJjzkILqHQrEE/3s12NyJ69U
	 CsDunWKthefq2ucUBR+XiksaZw2VIaEmPsponX4ikyM0PkIGBB/sKAh87B1Q4Ki5jr
	 aS9EI24iEg+7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D59E77188
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173621855359.20963.8895086790644945049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69f7b44f78a82073eda194515ba9797cc7274baeba933ad1224deae96ad2fb5c
Date: Tue, 07 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736218553
