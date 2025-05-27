Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAEB327BF7C
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748364593; cv=none; b=JWev3Ozq4mBuTBxc2gV2fXn982xTHDzFHnJ3DQvb3O6qzVzedXgk8Uf9tMk7CyAXqMOkqF3n6J30R1nTLCpf8hqlrxl6FInCET06RhM2H3exbIOQZey1+bnGrpPS84t37RZd7w2TRkWld4ZJ0++ohDztcDmH02EEvS81bacU+T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748364593; c=relaxed/simple;
	bh=7muKlTNmgLPL2M7Mqxqk4JXdDkDm63guguAkLFehzgY=;
	h=To:Subject:From:Message-Id:Date; b=e6zjZfOZkaQsjsKW/TLhBkrfi1g/F+Z1HwfwVKAVU3E9Gu84R7yhUi8XqjVE9HfcM8L1FOJ01opWlkealabdgGrVjpxmCd9UkjonPweZjnPITDbPotL6PDV0iZVwTdsLD5iXJdGqg0Kv0OyCpGwY6jtBo4DOABE2fAXM3bLIsZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geYG5iVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geYG5iVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3288C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748364593;
	bh=7muKlTNmgLPL2M7Mqxqk4JXdDkDm63guguAkLFehzgY=;
	h=To:Subject:From:Date:From;
	b=geYG5iVW7sPhRXLn37sFlziH/QgQh0+d/OOazormW/sxNW2e7waCjZRoMKV/rVF8H
	 qMzpN2CPnZUDhb/rMNrnK1nuir+BVU52Fwo/fN2lnUh70HvsodixQ0rEGgEN9drJGS
	 oLfPS8kFUkhihIgLpKivx57MfNZ+j5Lw5db3D+glL17ep8pdVRpDzA68dUvg4xrvQJ
	 BsQp30AtCx81QGxihxYHM7H/zOgB9ykTJ+QZvNCW0UVieKAKe5vxPsxKsryDNxtlBr
	 7egFk1fCRhKX4KRtiTZswG+Y0w61G1zPGDnu9vXXpbjlSAdJd5zGDadKeppKvBvMRV
	 DyD70Dgshq6CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93936C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174836459359.5280.8360517152934673767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2761d14246b742eca5983c45b394beb5ed380cf769ef3612a3792fea811d92cc
Date: Tue, 27 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748364593
