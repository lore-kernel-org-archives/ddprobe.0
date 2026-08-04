Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59FF45A2AA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 11:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785841235; cv=none; b=sZasD5j1x9hEVf0NozGQFudkX/Nq7uWhf5int2tnv+H4uR5IpWXQWJWKjAoLImu1jE8nFCyzf1Nyd+9HxKSH3t+nNyvflErkNlk0NhOqskHPHiL9UIN8a57XMP18hNKNwQLWlsBuULpd7ljSCRrylu/Q5D9KKSNbqXfQ/JlRrus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785841235; c=relaxed/simple;
	bh=9gCRe1ZieUrrDteqDi4F0hnoTahn0bT2BG0HoPLcAq8=;
	h=To:Subject:From:Message-Id:Date; b=U+puev/GvHwZYZYz4uP+i3qn1UTUwSGujMueOH8IrUfCaPMTZu2Ftg+tPGohfQ+fZOLAk3WT6MsTaOy9dOfo1D9ynGvXTSTJ/zv+Po23u2QGUJhPMjqZoHBSn6huqu3Br8ehwSmhC8K62Ol9fVJywQYtKWBYPh1MX0bdRNHQoh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0fhoyHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0fhoyHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC0BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785841233;
	bh=9gCRe1ZieUrrDteqDi4F0hnoTahn0bT2BG0HoPLcAq8=;
	h=To:Subject:From:Date:From;
	b=r0fhoyHkukXxyVOfHrdSv8kRMVcO9H6WnaPcgjCN82MnSn2Q8AFWoISrI681j3FIM
	 07tGReUEwjDAbUnbRwh+jtA3EKDM3IvDo2dBRytadjbK2gzu+d+pQarteX8p4Sumgb
	 wdHspkFFj9KLDFIkO8XpJbjTj8ulIw4EwIeLIzBwOo+jU5QtSANYpepifNBc/T/46G
	 AfAYWl+61pTi9yLbLVoCo+HESZU41XJvv7/BD5qyHnS18z9VDoi3uVfaeQDx4oyppX
	 6HkIaCYoSCNITYr3WWboYjWnMfLkTMOpf/wEeLohwpDhe/BLu0BXhKiqUF0eqs7tts
	 9C5wCUH9rFXCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9133C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178584123374.31746.6921652438656588188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 183dabf90f66dee04b428a9a778f20daf9ec94b179b5ca3e32b74590e005f698
Date: Tue, 04 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785841233
