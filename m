Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F92B135A59
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 17:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713116963; cv=none; b=kfYi/W3IzpFbX5LKTYx6vW1pSGm47VYRMhcgfofY0TXB9yKlrbWuclrmU6XLkb3Y0dDCHbVPrywOxoV6cKD4ti7fnE1pVLlltT/rZZRFpTty8kpDtXU3uQ/dqaFOaN1RUJ+J56mNz8v4Q5sCk/DR8k7U8Ieh0Un1xSqbblJSYro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713116963; c=relaxed/simple;
	bh=QS6DkJgjHn9CdMcX8ifxp+6dEvGW/wswZztcvzYzQu4=;
	h=To:Subject:From:Message-Id:Date; b=LmCe8JfsjniyoRzuzFmDEmZbvp2Jqt4oW2bK4UfRKvX8+JPdLkPptL0/yLem6vJUfxkff9Ei8aBv7qngLAgSkWeVrFGElBcswbldcf54y3ciVmqcDDSW+YMBMoAlbH1k1egRy2TxxWg2EHO0PSH/hhAJngwI+TOyJMzPC/aA5UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfBOgKIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfBOgKIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF247C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 17:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713116962;
	bh=QS6DkJgjHn9CdMcX8ifxp+6dEvGW/wswZztcvzYzQu4=;
	h=To:Subject:From:Date:From;
	b=JfBOgKIe2rft34imEPYHW6b7ksxtjCWjMMM0Lbpfl4xWDDY2/9esJF3uBo/kmi7pg
	 tfbe7WkgFSaKIsC5k4cZB3N3fcRyBJtLNvojbvH+F97W26GF7Ephqn7bn0bMFxVBIj
	 40ApX2IER2mDf0kY07zcS0h77wcv5mFjw3YjmsughdtiGe36pycwlSHPXN2jMb7dM6
	 QMYiIeicjujW/WWqOyIM8kEoObqqKXT8cRHAES+vTjjLL9Gi+wXRRDB8HuGIovoRN8
	 k/i61OXUyMXrStAz+WgJjL67B4z2mx7oT3j1HEMaMtDuuvDiQB9bsFBB1wqKNJhbue
	 SnycDrQ1zT1Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9D9C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 17:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171311696275.18296.15102845321492548340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4bbb17e1240ac82d6fef1a72e1c70673aa4ed799917d9841e236311889612b
Date: Sun, 14 Apr 2024 17:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713116962
