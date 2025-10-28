Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E5A347FC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761666594; cv=none; b=L/Ip3Tu5LJ3/oxpFVJMknrbLoaQI7dsl/JBQNNXLsIH6hXea8XJuEZS66rTO8fOpYoOLMO2mfTZbwHWNZToZKjOZqavxY9qwzPbm44rBTUVaj9uyUyxh02Zu/R6uUK0hlo2Kun9bGa1KqXg734G/csCg5UuLI4HttbUEs8qDVbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761666594; c=relaxed/simple;
	bh=pTnH+nZmhTOaBDe6TxYZiWmTCkhGLDUVVXqJ5SNWwS4=;
	h=To:Subject:From:Message-Id:Date; b=lNikvQQNLp6+N+ZeQn/4fiFmcSFPD2yLilWp/dfo+FJcpE7ODl108Qrm0z4vsh15Vp5VfdZLPv7H09ZkwILRoowI7x8QgvwN3zyYw4AQ1RBvdlLpwuxrQvkBaHzCLsi6nN+Hk9ZXTAZb4H707wmtxWE8lWkQiNWXV9IeOoIM6ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhNdrqi/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhNdrqi/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB436C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761666593;
	bh=pTnH+nZmhTOaBDe6TxYZiWmTCkhGLDUVVXqJ5SNWwS4=;
	h=To:Subject:From:Date:From;
	b=lhNdrqi/+N4vqkzf8Dg1yVowKh7s/Qk7hf400DVFYH6IrmFoBDMfsRANEDCje04RF
	 6YUm4Te6cV1NL3S1i3UVRImgeRTD8bQd+i0bFvb7qVlxcfg7v+JZcCjBZQKyKgbmJH
	 lrd6RCbzeIiQoRvhFxR7QSbu5xJangb/WBso00lh+o1fIgYX7iDaC6QtXDo89fXQ/k
	 F52JPp68MUw+ymHtNOTRk6Pt3U9w7v/eRddUGsrJuNHmklQjH5GMAdn31Hc7Q54xBY
	 BylIKlpAZKMmjgZ9BcUrhLMfvXWvLhnlgktFWZUuPvVkmj5Jv5B6cpcokvCfXPKWPj
	 bgE/+A9XQxFVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D04CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176166659360.30280.11262174951488523131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edcf839249eec56e70fff54c32373c82628d30df7199d8611716ca3dda6f7590
Date: Tue, 28 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761666593
