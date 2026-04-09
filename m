Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AE430F531
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 06:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775715334; cv=none; b=Zc6/duiNWtw31CxgmaDHyKD5j9OLmhEa6+jxyvLg5wyih8igqdMlfUsnMK/pZ+MrA6V9wVhGvQZPlUtuJQ+CmVHKwFVRm6EPx60B6s9N+cuCBR/00RDgvzOebLnw6xXQAmyO9Cn60hZ1SbuM6LlYtJTdLomSb/LZLwJGDDPSrk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775715334; c=relaxed/simple;
	bh=K6ClVl6jqrx+0wgi/xhccR4m2mBgJsBeE1nI6w/Ry9M=;
	h=To:Subject:From:Message-Id:Date; b=piqPASWUzgRKBPb5lQz1/Xf1Nfjob1My/AepBo1Ak/zRGwG9w+K5Xzbg8JmQSS/l+sfENiJkEiz2DgILO6FfqArZid6TuRPaRkxn9sFpz1K6MfRIhMcfPc80Snma9c3S9vO9xZdyvfE6ySHGmg2dtWaOT/OBvkmV4K0p/jkymbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2gfpwiJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2gfpwiJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD8F5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 06:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775715333;
	bh=K6ClVl6jqrx+0wgi/xhccR4m2mBgJsBeE1nI6w/Ry9M=;
	h=To:Subject:From:Date:From;
	b=d2gfpwiJ+BTTdyEzF4y3tOmBFIqoUa6tVQjpXECgOyaE1y1lizeZVt1UCImmuFn0Y
	 QVw50vK47slrDydWDasbevC4YRwpz9ph0CreebCp6xe6Kf6lv/2zxnGiXp1s65Wopb
	 Ya/K48d3ZrsF73OCa4dgjHZ47iag0sNbBftLS/YzQNr0RPUwqaZoQM8t+Ub1UX0pDM
	 xCFB/o5A6Ux/8R9X/Ufi/mDzjCw7Ffc1JgCicZXpkWPsV9jw/shpScx6l5L6nn1VwZ
	 auxc6W9U4WrYQQTLqRtRC1ZBuzFbn97JOQW28P2xc18tCgcRSTfVuk97NmF/SY/5/g
	 9l+pqwxmhuLnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF4AE98FB2
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 06:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177571533369.16754.15260177552643612414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77e73f562f78c73ee5715bab4440dd9cdf64cec590f67b2358d77ca5cca9583e
Date: Thu, 09 Apr 2026 06:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775715333
