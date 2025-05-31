Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9299460
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748683793; cv=none; b=eTeUt7YRWbgnqcK2KUhX/YelOU8KzDkDfp0+4b0G0Xz0DpWi+pP7NhsQolVpnafGRfbVYfZXLLmXzuzPXZWQR6mp7+6XJgldDgy0GKc3mImijdliYbuu1DzPwAc8O9F6qbyOHGvBBFLQtWaJztYCuXVOND/1ZcizQz4FzC/aVXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748683793; c=relaxed/simple;
	bh=M6QvC1dgVPLuVf4MIg2G1fOhxWnE+05Iz3frTh8UOC4=;
	h=To:Subject:From:Message-Id:Date; b=TyQwlpXnfwfKcoO8eGIldLDa6WiEom4IcxIc5M3DAE1V8ChagMluoyzgohm3gCvtbTOszfn6rQqhxP4fI9RHA3KXUaqZOIfGtj2ku3bAlR717eOl616/B2jsZjMgeSG7/uw0T6V5zeBwKnj5bvHg9DHYM8zRkQWPma/JFHNJeCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E44OlA4G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E44OlA4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7684C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748683793;
	bh=M6QvC1dgVPLuVf4MIg2G1fOhxWnE+05Iz3frTh8UOC4=;
	h=To:Subject:From:Date:From;
	b=E44OlA4GadODgEvqrbKHSnvtEkuaWqckEb9owTOh+7RZ2I3eX7DMYAxF2IBI+Y0jm
	 791QMeKBRk3Lk2v5DDuvpABqjfROtaMQIAjksdiHUCxCPt07/lV924vVXYyKzM9f7+
	 NHTd7nX91ANEpFu/hCahaDpNnaFLBxbV9499pTG/kzOnk01HCq++E+t6A9ijy24i0x
	 JMtFBC5IBSJAzJm6IHxmJHg4HAMcQQvKWr7+av2BbMQUguq2t3aLJRrA74ceV40Vb0
	 sgzKpvl6hyZ6lNLxMMYL4I8MJAm2LALUx1xma5kHcUT9aY+Hj56DDpzvmtd3R7ndaP
	 61uRaY3xAUcPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9462FC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174868379360.8280.12977727414592697622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8afe79dfa51deb31d3d0543bdd299db2d0a51999011c59cf4b295c256d489251
Date: Sat, 31 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748683793
