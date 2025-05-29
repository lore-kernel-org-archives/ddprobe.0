Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4528C1D63D8
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748554794; cv=none; b=XWslQ2r6zA+U/PXB4i0Pls4ChCFjwH6cO/enyoMyBnXLesDLGl6fKz1OOXa7cSwGldz7P5fnbMj/ErjqgGyYRblfiLj9La2yk22KJoIjTrZWFUFISDaerEMBY+rdlOAH/ll/c0fniaT3vfna3FxpSVI9E7GvL1FRAaOb3Ci6VcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748554794; c=relaxed/simple;
	bh=seOn8QKo7a58ukdtfR+afFL3ncwYZVL+DgMvg1PrwxY=;
	h=To:Subject:From:Message-Id:Date; b=JR6HCSdPemJnfdjrbiZz+YB8yP/oFaSt4YEYISM4ukhj/B8iOaMU7KQ48RRLK9Y4pTE2O7TcW7M1H326Zkrfxo2cn3rT8tuE+2WqloRhu8bpvZbEIbRV9QgK7yb8HtpaV+RcqQ4hhDgvvz6zE8JCedJ859WJ5z8aRmCOU19jRlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9DKWISh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9DKWISh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BA5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748554793;
	bh=seOn8QKo7a58ukdtfR+afFL3ncwYZVL+DgMvg1PrwxY=;
	h=To:Subject:From:Date:From;
	b=B9DKWIShsw+2H0swCrpgSZtEVASkydXG9DR7FJKnpQKVF7PoJOics7NnKdHtFgcG4
	 kkOew1vEhG9B22YsOQf0/TebeTN8F3L3ieuVIxaOVBtsnBU7JYQzP9rkj+GBy/WJZl
	 PXNZQf+FR+PY6L36byXwJCPe2apQgdvWY02+zrBNRAcaLNI9jx8kJotZ1cGVqzA4Do
	 l5y/VEejDqGTSfMreV/ZuEFd/kEZqxCZyMa8keVgWZGc2La9at/PpGl0lS3lL21aXA
	 tTiEXeDyPDgH8zniVDwoVo1zv6el75D0fu04UZn3amaigV3wpTPC4uUNJRdc9DJ8hT
	 yCdo5lJDkTkEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F4EC5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174855479358.26594.10258211370241570370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1c8391b405e06d4f4a59e462cc89b6b294c1d34c35314da20d32b5dc1ea52a
Date: Thu, 29 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748554793
