Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF88274FEB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761742194; cv=none; b=DIANc+tWFqCYD2nYPSOUL0YdZjVR+GinxQwRBzbYca68SJDBwhfw+ykO8vfpblCKAi9sPEyvpPIwC2fWLIK5wts4B3Q9tlWQgLwvjdhbv3pqx9c/Uuc0Ome/UgDu3sWJILMuynVYt11x7Q8h5I5oOR2kv0nXn8Y/tNbVHdfOdg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761742194; c=relaxed/simple;
	bh=nRU+7381UrocYAUKDzeyvsxWPzumQ23nBycjPd7bft0=;
	h=To:Subject:From:Message-Id:Date; b=aM/6DZMpSXPtZClgN9ARBIArSFiGX4SEIW+K3jiIy9ppwHN2ZkZ2TVq6uI40QmVl1KZ9m5yYVhSJ+f+lm/Sbs6F+gKFz7g01erynFJmhc0NikWqcXT2M/QZvCcCYZMB6ueov1a0Mu/3MDeNWSt3lbSmASZRlkA9UtcTkst+JW4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pB7804w4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pB7804w4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7259C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761742193;
	bh=nRU+7381UrocYAUKDzeyvsxWPzumQ23nBycjPd7bft0=;
	h=To:Subject:From:Date:From;
	b=pB7804w4XHD6Yh4+5ch0lXVZDwbvDgShuXCjHo/wWh+F7tCXRAcK/A8bwXTBJ71Et
	 QALDlos06e5iJpBO5EN/4lU7Ear155uiGsuOwGYK4FlBk7tB0Gzr3HrI1e+nv09PPP
	 gCrRhLY6GTZFcpzZqZRBAddnjc7yQz2I3LYzFwGcq1kzL9BRgulbB2rVsxvCwmmkAb
	 AREbbjY5mai+ECqggB1wpCowb8/f+dT4/OnsHef+qgFjXbp+VuC5bsmiGKl3hB1L7P
	 V+yHhQWjnDiDyLE/YlNtkp0QmT9dwjyEV/I/beFnvYXhQDIpccEcSKHYqnEiPPJDrA
	 x549Qr4mF8JXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D3ACCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176174219364.15962.8011121612300321237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe659abedbf92199316f36a5376c3bd907cc8a510056478d46a22f6fb709ad5
Date: Wed, 29 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761742193
