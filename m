Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2141D79B4
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733082954; cv=none; b=TJhH0L5ktIxtVcytd2D41LIGBApx7v2gp73OKoOg+J1rJkyJxvaSSXPSQxMQiBDaprnreF3AohxHAj3GuzZOjpXHmOBrAklM+M2nb3u4sJLlpGxr1SQ9iissIulFTXAMcmbvVfhuOySdBwRBeu+qWEDNEmlsjLONrUCwKt6/uyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733082954; c=relaxed/simple;
	bh=nqWhPCCSjot02BKVtTwYtRRU6/vn6Ojgn1AHqkgNQQg=;
	h=To:Subject:From:Message-Id:Date; b=jGc2MCb6lJ/CwXrMCpAXSILxfFB6O+Q27EAWymgwFQPdB45VxS/RO/c1bSF6iSvW9iUH8uzYYaM/DImeeHXgRzv8D7JlfpHyCH/dJVQc72LI5UpJNA3bpgDuoFZ/fAX47I/AReu5QsJX58q9OMUfYR8VcNJB1bjFfikg2UQZ/pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcPmTQeQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcPmTQeQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA24C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733082953;
	bh=nqWhPCCSjot02BKVtTwYtRRU6/vn6Ojgn1AHqkgNQQg=;
	h=To:Subject:From:Date:From;
	b=hcPmTQeQXjSFDnSO4hIS7+6wHarhQGk5w5FI/PpnuxWmML9q2ro+bb3WQViZ4ZF5q
	 xikBSE209fFhm+9tuUpYDHKkeKU+kjH3+jjphCINmJ/51PJlHcisCvGDplMGeqjCPo
	 +aEf7vT4Zggj6p9a/mkQYjauvQmGeNSmipsmq3erAYfYhGE1qlzQvZRltfMhtHt/Wm
	 IU1AglGcwIurCU30Lq+ZJONhY+qRuSPY+prZCa3bPY1C+iW7g4xO+W2DLmzVAZP9Q9
	 LYpbBRQkJHCltuZ0aeW4QFAJiFYsSASd+C5HzDWYxGx2yczsDikwCfnsXjyX7I7IGL
	 cDhuMYagZz+SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D7DD4978C
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173308295360.29220.1936875494544735623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f8502a96b40b3869d765ae74824f260f303be936f02666f3b605f83d69963d0
Date: Sun, 01 Dec 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733082953
