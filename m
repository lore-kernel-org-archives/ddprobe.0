Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527B61C9B62
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 21:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736805354; cv=none; b=gRupPlhISHwNjEcmF3fcCovluJM4KEToP9ElgsEhADE7KK/DYx/gIK3ryTA7rppjZY5S08F1Eh1EBWZC6Hu2Q/PTJzTVZCMChr3vuORa1CDksOZ0aUjqiSDMxuoNC2aGKql0CQkq8eSwkrwwxiO8A8BMNu/CNfOLM+JomcLg86s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736805354; c=relaxed/simple;
	bh=sO4P0vvwdYc8QyrCNvPOlGj+xFBDI4o3gz0SmsQnpHg=;
	h=To:Subject:From:Message-Id:Date; b=dLp0XFNBGz/CdywBOYvnyPlgj9fxdm0nMBjwenLpA0XQ1S5a+uX/OCH1hV6mwYcD59nWozh87/Ds2J6Yg+AOWzl3no56oSIgbBZMEX0lyUAsngTEHri3di/pHu6Xgs3Y4/X4ec9hW7mElA45BxdUntUu2p/rhyYevnTCYrwMA5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AK7uCDBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AK7uCDBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F7BC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736805353;
	bh=sO4P0vvwdYc8QyrCNvPOlGj+xFBDI4o3gz0SmsQnpHg=;
	h=To:Subject:From:Date:From;
	b=AK7uCDBaP4kO+Pv8ZNs8p4AhkDa1Zd5UcFFEQw8dJzUP14CDgOledaVKUsoEduBa8
	 P4NnKUCDjWKknqz6kukAdYnHtOvfM24agSEbOnIm9miaFOmr0Ys2egZAz1bAuM1cE4
	 HBOM33qDZuai8vc5WQFMzG9TX3/hwirjUWXrJjCcXAlAW5dVlNBbj8iSYhZ5S86AaG
	 CmG56HqIo9oKpi6r/azeniXiCrznTOSjCH22GG6HtEY6aA8T2UrQWhuo5bg3pSOdk1
	 bsT06h23D4yDUN1XPu6LEouHTehAPxEonTs+XJ5DnqIL2aNxqF6wiRS3J53Ej5yG7v
	 dO+qu7ypwxgCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972E2C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173680535360.9078.14966695256991583373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53cb10d3eb3b2d591385037cac4f84155064606e9e3fb04b284edca45b8c0888
Date: Mon, 13 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736805353
