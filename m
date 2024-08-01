Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A366441F
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722477354; cv=none; b=AqaQgDfSyjb7xHskVO2IUNT9gfxqj7EmULzDsPoIar34LvOXuPmBPZ8TbNBIB90h3wMVPGhTFzXne0OmG6VYy4DCRmdtw/fiZUn6HjX/x0dAE+C8rp8GYyLrAeyIb2YVFHY1+fML8NUgFUz9J75pFDuEcxvjudaPy+CjvGGCcQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722477354; c=relaxed/simple;
	bh=/0xMMGIPGyeBBQlJh9FWXvEIIDy3vOoFuAa/w47mUiY=;
	h=To:Subject:From:Message-Id:Date; b=m2pMmButevZ1rB1mrUnMQwYZI38q+i4XaaeglNyNrcCgGfvok1SoWbHhT9dx9El1Gn3HgBF3COepeM/DJ/lJbyadyxUMwAueUtJA62VM3FnsE9scih+1nrRutLF/0+Yqlk7asoO+tGHYM4iEkqbef4i/BbbAZO7tHuZhpjjH4q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWenDtmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWenDtmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB4EC116B1
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722477353;
	bh=/0xMMGIPGyeBBQlJh9FWXvEIIDy3vOoFuAa/w47mUiY=;
	h=To:Subject:From:Date:From;
	b=bWenDtmE2kY/pkhppDl+WCWwI5r4b/lR8lZAgjLkJysCssO08zzvIBaZV21QucUPv
	 dLT0PAWuZDaMwk1PLQt/VfLv5OQHCZsXU1yro2HY68ZdKDLdhAlm0tTgZ2RgLvfkN5
	 WDESLHujLxmfytiXqQXh33DsE8OgXZ4U0xsH4ahuJeQkb02+VONaL5rGFyX1ey2gjp
	 GgZwmxkrsr6ywgRD3rmLoOqHqbRy5saar35gSiDul1A5VN+duZd98fFbS42ugOQcw7
	 5oW5sOPysSSyhU0WLB/lrnK/XwdWEyiDHhBGRXF2TUUaH9rV69P+QPKmZCk4gGtfYR
	 ItBh5483KnduA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903C7C3DA7F
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172247735358.25832.11613573187126690934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adbd1681f0061cb4c59b2683127002ae091e95b42b449e9cdddcaf42338983c1
Date: Thu, 01 Aug 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722477353
