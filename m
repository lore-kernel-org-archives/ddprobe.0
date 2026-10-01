Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C7E374A1E
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790822434; cv=none; b=poHzoqIgtNZezgizGn84zsIPf/9mogCBcMUwTuXoqwzsRYEBI72/an0DqmbjeH2HhZ8XWilN4MZn1U7kv7nUJ1sEkoNPAvskDtJZzhsUKvyGqPEUddB9aX0op+qZqO2kTJjLfWD7FnZPoNwXxHwGmWpZji+pylDHCEjg3rSVQZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790822434; c=relaxed/simple;
	bh=MbmKuZ3Ztmi7kvgOTth4+zsr5uBkS+6bFALdn3Tgl9Q=;
	h=To:Subject:From:Message-Id:Date; b=D9ke3OwhG+WsHckfm+KoBZGmEUowxJ78SNwmJ18IXkU2r2KJ2+AQ2/osHVh7rvf73GA29edmqxN3AGSHAzqzTp3hSWWh32z0kdrddwdPCdDTw5EmTinByvrOVJgDKm0ZSwm0z+Ch7qgYp6qHDLkWvNAbdZER+qx0YRwioKpP41A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=or/oAdnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="or/oAdnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04BFC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790822433;
	bh=MbmKuZ3Ztmi7kvgOTth4+zsr5uBkS+6bFALdn3Tgl9Q=;
	h=To:Subject:From:Date:From;
	b=or/oAdnmXsoRQYGdABcnEYUT1/tUv8niSfmg099y0ZqIO4sq14mpUAoRapUj/2NgU
	 pgy+vypSbITklSY/jxJHsSf1L6bKNZOW85kbwDog9qdYxCXf0/UWDXR0E4FC69sE2j
	 fpxIKSzqzEBG7RksFVvBuP90na/bZmCCtXBFmNHF2UynKnyXWv5N1jE1Cu1vdeKRuI
	 LrwZxQ7pCviH8VM7bBPyWV9XqI7KE8YkLwRNI6xVR0HjEpyNcntmqjQHQZSpRUW+c9
	 CnEPt7hWK9vQpEWUZKZQw91FkRRJRLr/ef95buvlLw5vKEh9hRuoBSm3BkgxSCN1HK
	 tBy8GJVmsuOZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD086CA5FC4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179082243369.12067.3203827078629108159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00f335d3439a9759287ecf6970f39bdd20246fc0ccee5c75e85dc24ce8567a74
Date: Thu, 01 Oct 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790822433
