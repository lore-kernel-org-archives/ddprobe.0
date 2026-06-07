Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473C14071F9
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 04:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780806274; cv=none; b=XjhB+xSiWcRYTaYdxh5lUzPYRX4QAw/Z+g8PKNzmb3MIbQHj85rgL+bTYga3FS7oc5mC1t9E3pNHNUzCZnM/pu07FHSZvMdCW49wkf4Hk0rv41AhLWUsS0sYoiO2910LeGEZ2YfZjXGZBc2mZetSi610qiP03SVHloE47pjUVUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780806274; c=relaxed/simple;
	bh=59KDwhLs5nap3tDin8QcPzD4zs0mFv+6oD9bq5SudHw=;
	h=To:Subject:From:Message-Id:Date; b=aJPTMKwjWm9kSik0yGV/qj4s3Zf2C3Ud8zli0a2x5muEQ+z5T640/fjsLoGai129wLWgoJ9adXmCle8ShjgKzFHvWwNzkDqnlCKMjeMKOw2sPtwX6ncTMRxa4g5ENQcwh/P632kY6cKysm26IpX6puwjjJsxeHmlh5nqsQ6wHwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjgm5DGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjgm5DGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC679C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 04:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780806273;
	bh=59KDwhLs5nap3tDin8QcPzD4zs0mFv+6oD9bq5SudHw=;
	h=To:Subject:From:Date:From;
	b=pjgm5DGarKiBl/whBeoP7/DyaGAncGWpmQjKoJbUvE7Ow5mBkYMZJkNMxIv1epyc8
	 eq55/HB/Fdb4X1jdmnXQlymhwA0go98PEjSSeC/2s4sRtEPie/LSS/GfMIKtkt9+O9
	 40Cn3gg2JizeO+F3IUNaSvS0T35b4PI5omZ3CqeK5IHt3u5bblSAZrNWzYemo9/hBJ
	 i2tNViCzIqZYmdlNY4I8P+Ady5ANIF8VoJMrWesw8nTdZkGPxgYX1X9bJNegh06qWL
	 w8qwc1/HThUVU1m8I8yvPeXajtcG+i03D0KqC2VRsXZUvh04BaDMPXKb9eWnnNV++N
	 cQyOMTt060NSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BEECD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 04:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178080627371.24150.14758505203291762326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eebdccece2ec1abe094c44c9de62a4d185e535a7b75331918032b486972c675c
Date: Sun, 07 Jun 2026 04:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780806273
