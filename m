Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29791BC4F
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710709097; cv=none; b=Cy/Obt6iJt9oizv74mWgrqYpWicBzULsozPrRvYD1v4533R97z55V0s85dZ6FghVG57XAgUxD0BUj7Lm+K1HbzmYFUTIL4vKjQLNPRxDzTr6JbNkY7tvgToZZ8mwQL8IphzLzg7R3CCf5fA2dPgXeEjXCtQWRSEakSrnfPWvTaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710709097; c=relaxed/simple;
	bh=9gBHispc5DwO5JiKCgX1fst5nI00GBqgYFNadHVpoPw=;
	h=To:Subject:From:Message-Id:Date; b=IEA6HP/j/BOSomLqaA7QVxiM9gblLxLGgbxhHoZ10r9TDjGcXUTOyJV2VYcygjxbMsoic2Mi+xXTiWwEAKvoKtF2dDB3LI2GHPGfFSr8pZt6rZEyZCDw4vKHA3xpf1WwX6iDoS6lK0ChWLS7qr0tJNn20AW1NX1akkW154l5TOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYNSqj3z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYNSqj3z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 725DCC433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710709096;
	bh=9gBHispc5DwO5JiKCgX1fst5nI00GBqgYFNadHVpoPw=;
	h=To:Subject:From:Date:From;
	b=JYNSqj3zH/IJy2g/TuzwYTSxC7O5PVDHD2FzAi3awkZoP58UjYkwOrSfdVgxf5VNX
	 Bo+Y+Rl+LQaeIzvK3Hm/AUwmJgSqV8ANTIIXbnNhAxxvhvA/7rBfOaMa6HIhl6JivL
	 3Z/XpmprJ0hVT75Z0cwiI07cKu7OIPaBse9Ubx5xm27nyl7rOZw6yOcmt4ysJ9Iabn
	 T0ckTAGnORzfR4RqKFiVvLwlVOp7pn7AWpnf9gHKkNueKgIHtPkdQWP0qVKUtT4VPL
	 Mv+uR2DEsraFx1olsFAMPajuIF+JTict479wnid7lRzXbOtfS8WdR4atFFClY6j+jr
	 lEFdM/0jNQCcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60EBDC54E60
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171070909637.30311.12804464961574076135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52243987b13dc7afbdcc1f58cbad36a80d182d18332738cfecd4121ca5ba3384
Date: Sun, 17 Mar 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710709096
