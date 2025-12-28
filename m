Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA4F3A1E81
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 08:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766909034; cv=none; b=sV0ImB38kWyevq3w1S0TK/B1boWOOvwnlLqLI0jpRbWimRhMGpxsuna7vQe/8iWpUHpqIzzcTW0JFDZ4YaM4GKEzB0Pj1fxBFtonhLaZ/0NNWmrydimkKpwPNf9gxTH+cPaEE8uHAC7NOOoGhia2Mi5q9sMnMKEmhbn6/RtAbrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766909034; c=relaxed/simple;
	bh=IEMh4t1ivx9cjviL06iO29A6Wu51UkstP+rWflTDYwM=;
	h=To:Subject:From:Message-Id:Date; b=ShTc8CeIVnhVpChSeMt2ElHhX2lh9KmWbFsQSBPPXAPmYb3JCVFRWgwuLOEZzo+Iev7/74HGc4AJBqXKUHIAQe9NJl5/CSu59RctL4ipM3SlJijHS0Dq6iw7BY/DqIAraDoAdX0+F7E57tOC87NP86vBLp4jmq8kyphSMb2FdZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3IY15/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3IY15/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE55C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766909033;
	bh=IEMh4t1ivx9cjviL06iO29A6Wu51UkstP+rWflTDYwM=;
	h=To:Subject:From:Date:From;
	b=E3IY15/WZgy+F3tGF35U9/3SJiSIfUxS22Y4Q6AaUI3I8mJHqbAxBnpZLpgwQE04V
	 lBp6sW4Ymjg03vsghUWMbiF0NeYrTpUsNQ4+XiayZzQ94BUKjV6NmaoE2utlDnCyXx
	 a1DL4uFsHlbXbfasnowd9KRenkN73oPevxxbv9KKyUQIQ8LXE13a9zFYY7GsM8Hr+V
	 hjYCYV8P69SIAvAo29ZpJ6twLdeKa0BFZ+taVQD7Hsn/39O56HsuaE171odCi9ntZa
	 M0/qkfXwnFu6mbK3egmi7DaywugUnRdlJoFFmWgf95mdVTzMqCrz1OSCzg0n0KLV7+
	 qm114JiHs1qcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB592E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176690903368.18884.15129532080450702555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c921d46c75c6f9d317f3eb722c0c575df1adc23281e45657afc4f8e585b06357
Date: Sun, 28 Dec 2025 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766909033
