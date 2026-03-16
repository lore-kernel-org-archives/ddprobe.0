Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E59DC2EA
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773630294; cv=none; b=NDITzQCy1v4NuULI3rF+5xxRMZTtMNl8VqHrOXeG8A1eayUc+DLzLqgS65gcvL6tTYfY5RUoAsbvVJQBzOplvTxtP/vw41bDn0AWODX2x7/cfx9bCxo9UhT1D8J8aVpLKxE7ZJvv6CmOubwFwxrZZuQ+AJ9qizY1nGecXhZ4kU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773630294; c=relaxed/simple;
	bh=4kptsvG5p9e15wWkWTDDSAFXPESmswk+Taz75fsKVPU=;
	h=To:Subject:From:Message-Id:Date; b=rkEM463b8jPYAPJc3riuF9yfYx5Q2VelIircHvt4nPVaYKx2r8WMLn5KAFoktEX5f9Fnz95wEFf3kblPQcesqp+oizs6DIVzXyTth6cbSxJ3McINYnKAnN4Gy85Rs+uoErkLhcZhprRg0yU40X3kjHlWUKiMKwu7lade+C4Qytg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8injVRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8injVRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BBBC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773630293;
	bh=4kptsvG5p9e15wWkWTDDSAFXPESmswk+Taz75fsKVPU=;
	h=To:Subject:From:Date:From;
	b=W8injVROFHqwuwqEibZ/gcWYJmJO415kDB6T086ZRaYHxFfx3Za8qmMQzESKMnuMJ
	 ucJxoNzMP+K5Qr94n+SVke53OBPnvKUEBMKJX7aWhpPWdkM9mTzui4RRlIpc9Ri42O
	 2HOM1rhnobr6dAQcYFjEmmLCY1LoLJkNLcRJVJnoJC7OQZQ7EvIkCsw9Id73BeI0Ab
	 tihxT7s+XG5rAbE+tQh5/UHivYttl1XlkMhJL9OMfrm9W0wgOr9heoCmJjNWy9ciFz
	 Rc8zWutF7mW7Pf+YLAfkFlkevjRxAtPzTKIfRGkG8F62Ee3PhHuHVcYjVfnVbzb5Oc
	 0I7oqde3+8hmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F314F30298
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177363029357.3642.13898586897110632307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21cebf470a8298ce1ec00daf490d7466bd9b49c64af834cbbc9086e79f2b7bae
Date: Mon, 16 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773630293
