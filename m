Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5175E139D10
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 23:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722641155; cv=none; b=ZI7eGvFRxwC5cQvJFG3ynr9MzJYnuvS63TbZkqLnKNp1Op3q1L+pn3wbMtyavjSwJSWpM9MHCUgTZh13SdYzWrYN0q9OfVhSB1x02mdhGMVYV8arb12JPPkJEGj6Ho+dwpTcEwSXJonH3oJUbfGEPJuhb4/lM7fcXG847vn4ytA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722641155; c=relaxed/simple;
	bh=/0VUx3F7wGHG/Ux1q/lrQbVKvBDf1Br4DiCx5ZuTlZs=;
	h=To:Subject:From:Message-Id:Date; b=T3LTVQcq5yVjZH5+YYTcLqPvsnKHYGlbyAWnEli8Y3FCNogZrdZGh213kmQxzd42PQ+Ho3rObG7ae29mKQkFEyae/nKhx7Ez8OLCWWDRo5lhcIoCAtn473l2Ec8nP45OnB/9fiu1tJ0FjmelM/eH/l41JElw5bqJlWZIYV0FNT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBqiE8kb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBqiE8kb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE88C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722641154;
	bh=/0VUx3F7wGHG/Ux1q/lrQbVKvBDf1Br4DiCx5ZuTlZs=;
	h=To:Subject:From:Date:From;
	b=sBqiE8kbm0baVan41gibY0vFtl6QXcb26qALCDwdZVJdemMUIDYrM5pjvcIxx8mJj
	 XFMkLuR6zZW4bzXi4/5un2AOIk5SiVT4ZcnjfOED13v55VrcIapDZPlaE2Hv2wC5fu
	 1PjGCpHBZ5LNrWjhmhM1axxEGVv9kOGTfC/GwF7Rr6HOAnz+u3yUdp79fXMBudbXsN
	 LWNdLfsFgKvm52tlQykr2I3HAOEfKTc2uLdCSJt9GB2Y8QotHZhqIMZZjtoYRKHQap
	 DEN4M58TvNAXN/Intvcj89DH1wGrWFHbFfHsKQ1hNzh3/kUxH4vs7HeX/Qt7vM0ItF
	 JdnTaa+IgwF6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FA8C3DA7F
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172264115364.28585.955461866172694418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa1eebfd0b332e8be47a895badf17b934393742bfae1bc5751aacd6cd846c7ca
Date: Fri, 02 Aug 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722641153
