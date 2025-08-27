Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C8B29ACF7
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756298994; cv=none; b=dVVXFOk2/PB/A7cVOcFnboFzd+kJPLlW38ct0o1lXKzIAq+wy9vQkOZsq7GLF5dPHGFzbYsI9Y4J/dRu/xNeXLnmQKTmpKZ76/jyi9ZmhB+ZHy+9h7ATIhaQEmiGLDaz9WNGcgSc1YapulYtvyLB9Y/npVxeX8J28F6ttRXPuMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756298994; c=relaxed/simple;
	bh=VwCLOgaNYNHMxzejVeMVe2P6Y5DZLj7RrP8IyHAVfXI=;
	h=To:Subject:From:Message-Id:Date; b=Vek1zB3cNfsjPipsH4V996VB9+jtBZxuRZ+V5mXxi+5LEdqOsNARbMpnXdqGbeldH4jQ5N/RSiWo6TV9yU0YsWD2zBfVNyLv5mrgareUMcstR3NSVj5PKxxAMoSZWOPU3WpXBSj0c/B8bGJbWF3vobEwEX474SgthixJ8R04U9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxPeUXhL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxPeUXhL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5B4C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756298993;
	bh=VwCLOgaNYNHMxzejVeMVe2P6Y5DZLj7RrP8IyHAVfXI=;
	h=To:Subject:From:Date:From;
	b=lxPeUXhLigjL9Q3SJjXOeTy21UhikjJyZvxi5k9KkLiWfVv1KVykoH4n1i+P/6ilY
	 DvkeDIl+uCXxhr7f5lGMAYtExNZdcuoYUoH6HG4EBJimLgnrAOaI1gzfTlzLeJIdB2
	 Oc6TpiT3t/3pBm32mchbNmyvSxeV5h7gx6P1qOxXTPfIkkCancMGjBJkO4nIiTyzjx
	 yF2nbKbfMac9fVM9njZMYauuok8FZxC9tI/tUJ5kThfjpfoiAutlaz1FK8ejjlPa2H
	 4t4fMkYAWP/aXqQu/FT2OhNEWk2dr6QJV2FKdM4c+CtDrpu6XaBcZXdlmGgFQikJ1I
	 TmxGMni2c0LBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E25BCA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175629899357.3041.13152401298880669100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a2b7de545aa6f0f2f00dc072f75c401793729249f03dd67c7e5136667bf1e5
Date: Wed, 27 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756298993
