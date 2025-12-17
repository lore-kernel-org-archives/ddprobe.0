Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F663164D6
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765965234; cv=none; b=u+hz831R/PImobo3iYj01prqVGKvh7iFuzQ/H0xRogxwYYB5X8+gUMzqoLa5Q9RMnKBP13jkrt223oIZWxTTh9VPdVrK93u23Ug7mVvMzBfFtzx0mN1ImpyNL4SAjiq/cq6MewcDITrycUdpc3Y2VGuR2gOgVDewVsrki+3tOLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765965234; c=relaxed/simple;
	bh=X0+fuxRZwtQpdrUwy9jlpbUgSk+e1LT1wan3haXNR6Y=;
	h=To:Subject:From:Message-Id:Date; b=jYO6pk8NBRgYAFGsthp+XBz/1Si+E3F5HP5IiAzNkqk8/qFSlQ6kaYUNn1iPxqN8WqWQsXxjLXC3ThgnMVxf1nYafkNBGFauAxtQSP5OKfsdtjXeGiCI0//86+Q1Z9p5mVVaNHsMpqsnMPCGbMKKJpYpiFjPb09XEQWtuoN/ObU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6I3I3QV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6I3I3QV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BDCC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765965233;
	bh=X0+fuxRZwtQpdrUwy9jlpbUgSk+e1LT1wan3haXNR6Y=;
	h=To:Subject:From:Date:From;
	b=d6I3I3QVatB49TZbJEMVjWqgF9APjLGw68GxE9bRNfYc7/QTZWdmuYTdD4A4moCq9
	 vhoxX5Ws8e1rG60K4U4H1fKVW+wKzQK8FD1efeQeIH9DmU01eSubtJxJ5N5S+3upCC
	 tJbrA5ilv8d49RnamBElKmhF5DJ8ijqhWsMj/kgTQwtpbvQsKB2SfjcAUhkasXGka8
	 M887riL2tmBwJnUNl21arrN3UHt1e+liLvL70m/8/6bbE45X+DtLpF5coZ130fFCQr
	 aYrZmsIH30Y9lHKv6JeRg50qFUHW5AmKSfZhddM6+/tefJ7MVfnUltDtRM0FamZDQA
	 qZKzZ5LDvP3wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCEDD65526
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176596523363.7392.12472539546020204041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b3f7e7a207f74de672646292c9e631ce6345bc302056593b13126f52770bf7
Date: Wed, 17 Dec 2025 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765965233
