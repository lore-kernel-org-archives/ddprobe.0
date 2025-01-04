Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B09336C
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735959954; cv=none; b=qQ9XwEx9kqyg/NtqRA5TWMz3mLX+a2MWHm2iDcFJB/99i1M6hGNWhXhIpau/lWwzsgXtlXXaaWja1dIdoa38msC/YmD5e+iRBb3gmYb4htfszgas4rET4lgUPG1zEtgmnHjv+HRBUyJMHf+9RBM2oEWpmwJKZxQp4BiQzQECekY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735959954; c=relaxed/simple;
	bh=9kb+wN6/J3h3ztxPQrfXhV6VJ85AneVFoLunhCdbmxM=;
	h=To:Subject:From:Message-Id:Date; b=RgH9nPvr7bBF11LvQ6mjV4QGE3TnD8fFKEgvI6Vp+WBGt9+vRi9/vahNb9Rq8e9lhaaLwa+1uz1EvNzovReVTtZtK8PbZOJXuEdhmacftZwApvLBt8/x8dFOxB+qaJecSseXtSl0P97pdoPtkgPz8hZwzCAXc3KsdTrrLiWwS7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G74QBAZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G74QBAZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D55AC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735959953;
	bh=9kb+wN6/J3h3ztxPQrfXhV6VJ85AneVFoLunhCdbmxM=;
	h=To:Subject:From:Date:From;
	b=G74QBAZA8opKLYCwlZXybUr5R6JYM4hIkx7/pDoRHF47q8IpjeZw0pLLqYni6B9ff
	 xZ3/OP6FFLZEDauwu7nxg2mD3aqfIAgP4FHfknxCHAUIgmOFDHNa2JW8O6mqxqM2tw
	 il0bokwyvh60b5Z2rF/xcRvjhJOVTjMpKiBf55nDfxiGUE2tXPCx7VC/nUmiTVixZ2
	 VK49t36AMui3dttcnWOwt60fSaP7L2/H9ylvwtb80T0EkiALbNMRZiOgfkTGc8hLQX
	 2Cg5AoWnh6pUHXDN8+Q6HSyrigezwQ7aNkBZ29c3SZ2703FW0ncySFVI54WH6aHKBx
	 lmIADOj5GobHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD8E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173595995357.825.18420664239422297748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa22405b2e6242b1b996f6493aae151bf251536b1dfff7d196d3ea1d8fd55ef6
Date: Sat, 04 Jan 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735959953
