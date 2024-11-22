Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2765C1DDA32
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732297554; cv=none; b=ZiZA9hrQlS9IMrKBLVUkUDwSwOLPpkROuvVMok0wSY98zDvGwJuq9RwJ9UWSSK9u9dLUiCv5zLKVLrCwPQ4zJDZnjcTvawuI6CA2HRWu7sFR0BL6+woLQ0mNACRrUZ++GUExbOQzW52mA3oRgp8eBrMzd4LENJzAjgg5XKo9J5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732297554; c=relaxed/simple;
	bh=8+jqRQ9FB+nQHMSSFEsLSMUp0Gdnx3zrMiogEg7wafE=;
	h=To:Subject:From:Message-Id:Date; b=o57Vq2t3n/xbpn1K3FRG1n43b2UCmE9Sp40UGynEl/AwMeheMFwwxtk0gFwA99Z1DdPrcwmtXhrxHo+RrjBwptQ4FxqYPKBy4MvQEX8HPa8BfmwMfVsjVX84QNm6vTANW39epOnE2Pvfm7P9UFVBmRI3rLiqt9dJV7ApvJUiI3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jawri71d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jawri71d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08E0C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732297553;
	bh=8+jqRQ9FB+nQHMSSFEsLSMUp0Gdnx3zrMiogEg7wafE=;
	h=To:Subject:From:Date:From;
	b=jawri71dwv35tw4YvIBHZWXpXSc5PVUh+optwI9IzlwehWlclcwkjcLNrHk33/7Xl
	 zotL620wbZ/6YuHoVZ61TH8GGqPsJbftPlVFSzkxQKcxr+dErq42lQAg7ATDELtI42
	 M2bo/LVrYyKyyHQgX/q29dWF7MlNrqBzQJPhZ7c5cJhX3Zqrgbi02/Ocic1j7WTYDU
	 9U2YL4GOm2dJxrBcb7ZMa2804Xk0phsawgBF6jMDlJbU4bG4QIu4eelwftHBda8jRv
	 UaHx+o76BZv3eAWGvMjHCLbbB93vFB9M9TWYTjHfdxYVpmGgGyUFG4ijfrSbYX1fr7
	 BVgqoI/1+PXzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A14E69185
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173229755360.3226.3466579678738229646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4db16606411d338a04f0ed6b3ab4b70c74134b68771612ecbb8f042ffa3352b
Date: Fri, 22 Nov 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732297553
