Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C281152517
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726498554; cv=none; b=VtoA9Uxb1+W91WMZnQdXbVQXu4wtD72tW6rii8VDPzzX9VFOP8gMY+izMJCHFPrBczR33edDdQU4XMx+pj3RwVeN1HvqHSnhg/eA5/86VKFMdgOSFTA9UYFKoHV2WhCQ2z/skEP/His42YFnNlp3nfywnuizBixxsIRPLNN+Aao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726498554; c=relaxed/simple;
	bh=0zrASrQFy7BPEobGoMwkunN0aJQqUc8jdvEnhKHY7Jk=;
	h=To:Subject:From:Message-Id:Date; b=qpmrVH5fJ0c30cx73YBSFoyjeac04RaYep7P1p9qpWpI6iiOZXpQ2xtHBmc9Wuch6LP9tGl1aT5BdjnJCYYabaFjGVBgF7rFoUYWH+tPf604ahV5a4UBEZM7v2UlwkoI94YyG2uqRsutTP/5ESSc71tDp5TsK69IWTEyO8BsSKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4GnqSRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4GnqSRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E6DC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726498553;
	bh=0zrASrQFy7BPEobGoMwkunN0aJQqUc8jdvEnhKHY7Jk=;
	h=To:Subject:From:Date:From;
	b=A4GnqSRy3tXrDm+QhtUkBAofKzxIyscpCVfw6/fuR49NUR++fhNSClhBb0q6CJ8qy
	 M9qsoZQJ2b1gmiT6WIsEt5EV0YnJptlrkgJrqVbayjm+mGvYCN2TzK/YbyMBEx9g0m
	 hoBsrYbk3lbmfGIW8tyR15s/0Kd1Z+WISKko3QC0WUY/66eb8hcO4w63GJWxqC3L/I
	 VDvqzhYMljFkSc8WPfZKUR2pvcQs6zg/l/koRVamFNp2o1VuVdl7enwCKjpuXm4vV2
	 bqa2H/OX6xcWXA7TNz+ZELTLuCb7Qpi4KU1iZo1n8Qsvopix3+IpyN3Gk/qtI+wV3F
	 m3KShpksP3gCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0272C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172649855364.3692.8623832737635400230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd788e82e42379cdfe758798037901d3dd39fdc83f4033647aa189710e713139
Date: Mon, 16 Sep 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726498553
