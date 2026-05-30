Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F654503B
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 00:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780102414; cv=none; b=k0VvTJiv2Y4oLtPvhZS1zL4FsgL0Uh0ZEgWTYeqSeR9RmC7V28Hjw7M5FbVR9xAwT8JbvL/tIWX4XQDoC+0iZ/XDHCZRVH6JgY5q/KWuoCwt9VIcz3tspLgZgHWA8hGj98KRwiKvphjlVdngD1qIlpNfd0W/l64yvBcBCw1TG2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780102414; c=relaxed/simple;
	bh=EUW4cf1cwVlK6cX4og776Vs3S491csEleRe1MdV195g=;
	h=To:Subject:From:Message-Id:Date; b=nHs3SlcG+qLaTVR2nkwqar76EWuwD26UQmJFQWW3Zen1LjCkpFC8a4CmFFImyANcXPtjqeJLzJEHlw/y5VmHS1x9RE9+pNv59I7vt5Knct3KnqSHZFfTxUApM5H2YOMxAyzE8+6Rl7mTDp2i1QQsJgcmoVgSOKBH5vmw+m0/oWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUbguE/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUbguE/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3FA1C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 00:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780102413;
	bh=EUW4cf1cwVlK6cX4og776Vs3S491csEleRe1MdV195g=;
	h=To:Subject:From:Date:From;
	b=fUbguE/YqVuJwtVyTSkzA9bS9ia5v4FveLrJz7QJyHdUyimCfD46JtnHl3aVjYbzR
	 U7BMNqtBXO6gt92xQIF6+oTtwMwt26vASJB/Md3IP8Sn6VxqTJjiODc1ENB0S9DUYs
	 jrjR4yOHbTcOTk7WRYwzJyiEnjsqpgGhkOeM8LL+9vg54E50hvJybevz1ygqqGQ9HH
	 3un4gmlcJRBdBLVVPDWoRtOMzDDkvuYT1Pl7FRqPa0XJIM+J6jICDZQlOeZj2DYzYj
	 7zmbo6EPRuMszx3gj96BxwwnI6jP50HwIOU0wiqOp+NTiDLrlrZ9tBJF52qpvyXUCz
	 OuiOu0OG/V8/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDB5CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 00:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178010241368.19216.5439545751364724758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9059a782b6be2ed826bf0537685c8411bd85dad0e77c17d13fac40331d9238bc
Date: Sat, 30 May 2026 00:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780102413
