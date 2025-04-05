Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3BD2C9D
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743864594; cv=none; b=lJbVKiBFKZDFgneIIaCGgKVtqHtr6Q0pY2KdDea94V+dirvz/OpOEijqbqRa26JMHwIYgcRFlxX48NRdZzgBy2oIvohHLqMqk4h/n7CZbUCj3e3J2A7muRWfWepFyYquoZLkRpZ/eo28w7MWfdh7uN8dTZwigBh0ynWSNryJQ5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743864594; c=relaxed/simple;
	bh=6TBMLXl19hiRUw+x4ZATjd50EyjcL3kHaJdo27hBtic=;
	h=To:Subject:From:Message-Id:Date; b=ZKN52qCe4X0jDeiZb1vf1rRdgDxdbRJTnpZNIhjIyVzEfcwKT7zM+v6/9rVuZa/bFkrYH5AY7kw+PmyM1a1S6F1KsNvbqlXxmqFegZOCkSD2/7eQgKoEVZsGUCnM9TP4A+FiYB8AHeT3kNElukQwjyMg+bpOuksaKmbknx/EwvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXfPIx1C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXfPIx1C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7832C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743864593;
	bh=6TBMLXl19hiRUw+x4ZATjd50EyjcL3kHaJdo27hBtic=;
	h=To:Subject:From:Date:From;
	b=bXfPIx1CbAE9ad54XxIk/CgEYltRC7xDY4RaGS5eUxwTjRYwH5H5h+2StkEa09ohg
	 AM8yaGUk2vwAfuL90/sTM9IDW28MNIrACmTp6rDpr1sKyoe2UT5AvJyS64R7ZrxuSb
	 J5UVS8n+4TLca8DPg6D3zLx4RM3MSoBtIp02zrhYrsogk8/2nTxvXhQOMwUeYLJRvi
	 v+ldU27RCWft9OP1Lyo+9TwMkb9/lxW4GksfFXq9yaXgr5oUxhHNyZZV9iQcVEbDax
	 gHB4Ef1SyfXTNI3GDueMdcA02Mt3Cu9sL/zCQ1qqY7tV1HbuASr5rn9OliM3G1mt+G
	 4xHgizwaa8MOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96426C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174386459360.4162.491763553573099212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30baed60f57166b0d21bb92eaadf224d718bf7a454ab02adee41dd35532d5c75
Date: Sat, 05 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743864593
