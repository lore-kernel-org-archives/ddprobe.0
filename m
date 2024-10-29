Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328E6EAFA
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730198754; cv=none; b=DJKSIK0m3BbLcsZU/Y22tAAB+3SUGNyZYRX0YuwNjpso2eKgVcngq2UfT5ER164UgMZi9obyd7q01eSE+Fw1fZr6ZF0Z7w1i0Ott0Q2b22I8dzWfkxtRBErBJtQYrZKxu0+ghMWnisV/8TSX8OFMyq+FzzzeEYXyOXV+bSRgr/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730198754; c=relaxed/simple;
	bh=7RDpvlSQm/E+EjAMDPmV6EnaxaBphQY2GTp8nItALKo=;
	h=To:Subject:From:Message-Id:Date; b=Bapq1Maoie/WK1MUN96z28E9FhCOmdxH88L0Qt6FxrqvvOwnNrj9VhLXClHSZLOOavMAyS/4p9NMf+Y++vyC0d++tNhX8RGGB5EeY4eDarpuwixFlpHWDpZf3/uIIU49/XcXOC3BY3XnG9trEL0uCNXSv24VP/3nzwZ+xBw4j5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjDhe3Bi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjDhe3Bi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F4FC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730198753;
	bh=7RDpvlSQm/E+EjAMDPmV6EnaxaBphQY2GTp8nItALKo=;
	h=To:Subject:From:Date:From;
	b=AjDhe3Bi6pD7yFfofAgJtU3LwfZqvamSupu0hAlcv0j85CUA/d5BVT55lEdfNExVf
	 pR+VaNl8R+Ssv05KvwaHaJ0tO4rOc+NZzyICgOCO2ulgBLv7zRzcMaVEox+zZXcap/
	 WSpe/FLQDyXnrzYG7WotBcWMl37XqaXAFTMvF6l+njAAL3CMTNCWBcNTk8fw+//3JA
	 vxFcxZ27s8XPJcWuT2l4Y/MkMiGYFBWY6gjuzoBWd+gBMeHO7hVJWz7PlT4VNfAHvX
	 CmlMC9A2SwjnQlD9mIYNEYudR+Qp4KPZPV7Avy2VAoie3TWCT1dvRgS7lp6SKkNwv0
	 bnA2NfBXHRnyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD0AD2AB1B
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173019875362.2333.8664717237431291404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fab99f3697b4a0fc15cb93c984926a12d7968e26e5fce6b3b9397ed1f20da76
Date: Tue, 29 Oct 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730198753
