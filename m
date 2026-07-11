Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C811FBEBC
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 09:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783760914; cv=none; b=AJwlNNiTqR+ZA/sJtl6ePCOLu8MluhmAepV5eYruin3ioSXrSDPBwvUPHxGYAsa7A2mupLvASPeJc4K3yNT3A6Jyid/2RgFsTJCfEFcyHfpjrhPWyRRP2nzMIKVdgVKYoKoR65AOCu1z1yrxM9ZS4RHDMva2MICXnneq32+SRuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783760914; c=relaxed/simple;
	bh=xR+/4AVbET/bec6kh/OxssSY3y5AyuBR2BCXvUJOVsk=;
	h=To:Subject:From:Message-Id:Date; b=sEuabqUXQz78gmrADRx5r3ckrhARgoLzM79XYE0ScEvloCRY6kQBW5K468kgqauz7UyQBqZLwtA54e8LNz562+a/1laePwNz4xkI70yJ5LHtjetmA6yZQm/Lb5V1mqybravBbZpid586UxXvEZxYX4JDyA2J+NzypDfNscYbJxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rR6Fb6Ts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rR6Fb6Ts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A34C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783760913;
	bh=xR+/4AVbET/bec6kh/OxssSY3y5AyuBR2BCXvUJOVsk=;
	h=To:Subject:From:Date:From;
	b=rR6Fb6Tsxz6DbgolCluXozmjtxF3rSZBqpFjYpc9NxMjMvuUtlkV+mYuEiKkOaHX6
	 22/QVtjNCmyzLJZZwBIdzjM/BMZU4chO8JBIWy89+uLMcUjWNqxsYMsAZqxdFCV8v8
	 I6Y7P3JDpH1jphUTkebHSlvm+VuIvcbBMsBx9YuaC5mayDsTgSkgltXEVfGhmOQLEj
	 kJZRfC6lA7VJ4c/ZPRyhi4+TPNdX9MVil+LjBVgTA3xS7ERYniFeX/Y9iip7jXijKa
	 6lNfiodk+uWHJuxjXsxan3I446adweV6NivIAAOlwwH2ClC5Y6YCypmFLSiaWikRB7
	 FWpCGEu9lfQiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A816FC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178376091368.26679.8645736926336041386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2215c1b19cfcc5748fd452e54f107e95a3e2154e0047246a32d5bf08690a066
Date: Sat, 11 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783760913
