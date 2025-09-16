Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB6372622
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758004194; cv=none; b=Us6tOQ1tqZKgHYpU/Nuc45b5tzItC6cnYKV2YMisRHbruU0LkWbGi4s4yul7akbPLTBjqLLw846MjXrqHHUpuBZqJ667LuCaus+JoOMwpxBEFRBipC1m42nFO1/zXDraAuMUAJQjOT2NN6gYNFnL8NB+/3K6DS6Gjlngn6ahEFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758004194; c=relaxed/simple;
	bh=JgKF6gYiCB6F5REE3PQNzKR6IORw0bbm5E+68xEWaDI=;
	h=To:Subject:From:Message-Id:Date; b=fbH/Ocl6bfqnfe26mgQpls+QM34Zk6Jnti1MnMNryHxi/5Z+m+r+JCSGd9Ohn4px5+GrrrubcprRF4tC5YkWZcUU+awstT4Vg/yEXftU3AOHDapfwKWXoFo+YFTQJJOyLXI1m5xaQl5vBI/b5JFPHzQCxzu1P3V9Wpce9v9Jecc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tK8jw2TL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tK8jw2TL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0444C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758004193;
	bh=JgKF6gYiCB6F5REE3PQNzKR6IORw0bbm5E+68xEWaDI=;
	h=To:Subject:From:Date:From;
	b=tK8jw2TLFp0DLeDcbDrjaLzCbmmK1bZRDmvPPm2cCzNbB9fOfjcoDIyKss17w0fjC
	 F+X5xXDAh+WgEj2WH6bB1MI03TlnArZ9SG9VzdltRpIJsDU9IOHjnIcR1JJ9zHqVz0
	 SHcaK2+7yaDQarIgSNaFiVKGRIsmobZlpDI/udneFUMK4JpW+o5K6M6BGCkxM3bnwJ
	 oPV9FPl9aP3Pl271K7GvdFSUUlolE7cs3v+aPG90uwmfkJmtoMRBIE0nqdCXVrJ5K4
	 1pjb/E7PufxXRQ1u7QpWa6s8622wTZ6Qw1+E/JDpMW811DMy5xj0YxNp2nW2wFrjDa
	 poJsHalXuZ/8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDF8CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175800419357.19864.13954240419716185497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9960197821e3b230351ecbd2ffe23f981e4e7c3082a0d501eb7b384fd138973
Date: Tue, 16 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758004193
