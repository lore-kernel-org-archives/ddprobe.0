Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B9340DFCD
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776566254; cv=none; b=iG3X+SRXi7lQ7uvkp9MDoJcn7182b3pRaTubnsN/ADHFR7GDr+xuzq+dh82hUWxvaeyCMXVxqk/yfixQ+LgBO4X3F5Wqj32JfH3m5rig5VUQqBDrkA/PeYnRVWfRIkr4XdsKSHaxYNioT0zOGpmsvFK6C8FuEVjjubBx5gBSHaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776566254; c=relaxed/simple;
	bh=exY+iy610wfogdPXFsIGj8lBW26I7FP4tFgnTggwtZs=;
	h=To:Subject:From:Message-Id:Date; b=NZHmBHH8dANS1SA7BFUUCupom+nIyqa+KQVtEoMWBqIa2wyNeuUUxfBpkSipdHEtf9rpNGHLsXJHsbGSoAhqzY+o6h+No/KleTxjvYLDBjiKVjhYSg7F3zc229eORLZ7O2COu07+f0b7QfRHbsoq+Vey6H0thRsbPpoz5cx7/lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uu5cwEJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uu5cwEJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29B9C19424
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776566253;
	bh=exY+iy610wfogdPXFsIGj8lBW26I7FP4tFgnTggwtZs=;
	h=To:Subject:From:Date:From;
	b=uu5cwEJdgFS205rNhgxHAQyg4hX7g4DViWQVMTl1tRflGZkZpTIAF6NY1enMXkIcm
	 qkTH0pzgqOhDzjKqc2betweMY6c0KcuVe3vL7V3ii8bJI6NAAJoUx9cgF4sngtoW0Z
	 CEbxvtgZxsLZbLs6Gv9Y8jbBx0d0G0PnwWhDWZzsndiZeDJyXuW0wcLxWeoGDNgbJO
	 r6hhpVIc/mtRiHvY01yizbFIk2fyZDV9zB0Pl0T+wD+LSEgyobbUbarazKvCz+X6Az
	 zKIg8gNlPI0K+DSw5v3ypoG+pN8cTYa6B4PsQydVNP18xKeNnazVMZgukjzeKcm9Iu
	 l94RfgLf8P0Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB29F99C92
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177656625368.25750.3069173261307068674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64594e8c7877c7098595c3101662601c757da50609229720fdc6283facf57b7d
Date: Sun, 19 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776566253
