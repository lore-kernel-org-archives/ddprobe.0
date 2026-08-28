Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E783DAACF
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787921434; cv=none; b=OGOLMWldZl7wt7ZHiGLaktDkK6sIp6P8ZPiosLkdi6o5NcML7DAK8i/2Gi4unguxSZo1dZoLUC/1jUom6dTnUICYkB8NwHyVHGwXZGbV0+icASeiBfsFru0V8RCcGVwmTBLejYKTQOEEO8ko/Mjmdl9lxyITW8lgb7UvsrVRbvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787921434; c=relaxed/simple;
	bh=QQ7Bl0xZ0AHiHDJFzEIQMhCu4hgNYBFRGt0lArxTOxU=;
	h=To:Subject:From:Message-Id:Date; b=ljHSlPdYq6qINrvYqSqc7s2O7lF6KvmEOPGF/TXhF2lprVN4zA2j/CCvAKhCCK6JBHjB0xK/it9NZ9Y7fDTVs4MfBVuYHl/RlvX4F88lNiS8rXGxIAeSYPYsEsVEf2HJ9tRA8EAXfKirXsMuz737/GeTM8UiZtK+TbdKcDD63SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7/XAp2q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7/XAp2q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C49C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787921433;
	bh=QQ7Bl0xZ0AHiHDJFzEIQMhCu4hgNYBFRGt0lArxTOxU=;
	h=To:Subject:From:Date:From;
	b=M7/XAp2qw7hX13XJLwAW+XwdtnzhZbTY1OnKieOQF/2fjq+tuYtWWgp0/zV9gOGZC
	 4HXOs9h+hykLDi0/IgrbN16OloiuWnEyfNWcCaILWqkra0Y6dlDMvljPWYQRACkYOm
	 +CRH917EFIDgUk39PeiAUlcniTYhtPsuv42Q0EeobRApA0eDjLmrLxhWc8eCUmiLXN
	 LP0MXWL7L1lD/51gcmcYcO1Q9zpwqxy4Lc1PeRSkAkn4TFWzCwg6vqnnW2UxxNqr2w
	 JXZlHdCcKOGCE1K5JtR766vAFf88hIou7ppCH4mgTmkfDPyzjSq3+rN955qwgXnmUB
	 eEzBEJLqfDaMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9BFC61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178792143369.3040.2052937959873314033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8d93546b12b5e344a57903024ddd9bf8ad54ac83a92b6865f5bb73e25fa979b
Date: Fri, 28 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787921433
