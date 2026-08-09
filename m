Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 881FB37F8C2
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786311034; cv=none; b=Z64gcR33/c1HLaIy50yNtKov1KSjLZBqw4WQXReFmPJO1hc9xCjSH4OBRqvU9BgSmsDbvJ5GKPNGrbGW0t5pQtoiKP/ydx4H0fdlY9ujkyomrv/vwvP7itnUpLC1ilPKA5QcRr/do9RA0KoYhH1jPcfkUhes0PiNebynJGqZcDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786311034; c=relaxed/simple;
	bh=Ma2glw9HYqiXabmMs4B+DXm5ZkzPWoQPTrzGi3vA7fc=;
	h=To:Subject:From:Message-Id:Date; b=pMehiFk7HTZcsdCDZCFZsj57EjsLITQBXhv4UGGp8rd49rm26+RHt3Pa26ihgwW99I1GzwF7JjycouYsercsEuWA9ayZ6BZGPcvPzJA1Nj9dyhF47/LeO0/P4yxuemv7qVDVpvHhspVLtLobW61C+lD2v+W80oEvxOSdcfICMUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJ3ZZzmc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJ3ZZzmc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D044CC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786311033;
	bh=Ma2glw9HYqiXabmMs4B+DXm5ZkzPWoQPTrzGi3vA7fc=;
	h=To:Subject:From:Date:From;
	b=pJ3ZZzmcRDAuCRDQt8vpkMhE7E40fi3aT9/hCigXfhSbKt5OVXxKrWK7zfhJA6v8/
	 nzZ0OC7LlxMplvUk7kYMM2Gk6rScLUc01NGe01pEwEK7/3NIZwNDLUqamE8Weqk1xh
	 hWhfaevu1j/AIlGcK+6IJLyrNWfMrksUiZcL0wXUSpFHnJPPpAIn/86tge4gIUXkkm
	 ok2rR17VFBIuke/YUwt51wltecYxd5dgf2F4LovF0/exWZ2NKuNtbUErL8C85vRgYC
	 lZNFC65qCrqZJdT51Fl5Ko3kcNlo9mOvzdd7inxUGooILlH3OTI7XrSb3lGh97vbBQ
	 7996YP8j/YtbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC83C5AD55
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178631103369.15101.165120455120326836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec817964a25c1a8cc4535b5bf88314bfc81e6982a2ec1c20db7544b5adb05d7e
Date: Sun, 09 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786311033
