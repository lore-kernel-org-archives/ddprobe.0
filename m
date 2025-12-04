Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C339344035
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764855174; cv=none; b=e62yxfGkHCA53byzKWmwAFQ5ZR3qimK+gF75pY0+Esw422ogowF84imHdGxlTrDuubBtZ4XtvF23JagdpwuqL7S4QkyqdJcvWujIsDuq+4IOJDIWzQJnBUazZzpy6PtnivfyTdd+pI7U1FNXNl9DH/MEJJyfJIPjp7JIPTR02BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764855174; c=relaxed/simple;
	bh=vwdnOcFfWp0+49s9Sp5TIpt/JQdg/Vi5m5Is8yQncH8=;
	h=To:Subject:From:Message-Id:Date; b=MdrTHfLV66wC5w/FGGlVcVagcjMtINHa7xai2BPcruKiXOiEQNTCn7wbjd55SFFXWGM5eSG0HwofAPNPME4eTpK09XXNyWv5A41X6HuS/f0/HWfu5VA92T0TWMgS5ai2H2qwg9Vfps6kcc1FM351V8jjORdPjQKu7h4XeiX51Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gj8obDev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gj8obDev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC893C116B1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764855173;
	bh=vwdnOcFfWp0+49s9Sp5TIpt/JQdg/Vi5m5Is8yQncH8=;
	h=To:Subject:From:Date:From;
	b=Gj8obDev8F71PhLYZzKM7mSfWYJ7wtDWqPg45/c9saEYL7cDqFw6Ydd0z31efWuWt
	 sZrg0Ll9tXM8Zeffzw5IBwHbNMWugwYOIPKscZsRmxqKP2g/H+k3v4adr4SNbVUh+Q
	 RmYplaM4nQnTfsaXJa8jHPEQpP3Nh5RAsHp5izMJeuUrO21kTz2oYFvjRmXSwZFZiR
	 5u8fGNr1vm0VsuDX1x4tdk6pD5cZK4Cu/oAXnDoDGyeq1YxQfGr+V4GgVibstMcNVY
	 /XkN++vMNt0tUDyoSqXp5FhzexK59c2fmhKxpGFp/hqkWESbpmb3mTZLGuFYOQeVN9
	 PEHMQiYUJMjaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC78D20688
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176485517362.25231.5908186740957091186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a0eea83fc362d939f07265565315812eaae74c8c0ced1cc6737478b6d5e9478
Date: Thu, 04 Dec 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764855173
