Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EAF175A7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 02:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784429914; cv=none; b=P8QsobdpIYbTDhTFlNJ3MuTXd3SI9VHaQm0q2cdYWo8ac/WujBffFqlQmuvYjv6nmKpC+yEoyH0+LcpMU1f9LTVpP9nckZnUBQdN3kA/AD7qCGd/ZPxbTVtHej6ZoDdLC4er5oWeRmnE7kn5a53KGRwZkssaDLGRNHg8vcA0gYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784429914; c=relaxed/simple;
	bh=aXk6i/hF3ygbQ6ZQESCiUZT7KIsDN0C0/W2YxrgGP84=;
	h=To:Subject:From:Message-Id:Date; b=qSci0HpIari4CT3zYJTT7rfdta9g8BBWezQ/VuulesEDcw+8dwoTjMe87wdt2jDz1a+LdxUHUAXYE7au0iSwLLRGglbgCUfmFFTjluT3pXHXfmrOQNys17HwygzPfuh7yYCJ1LruN89KYRbJ8sfEAPGU5uPv/80yAsurFWfWBgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbhQCW6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbhQCW6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D725DC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784429913;
	bh=aXk6i/hF3ygbQ6ZQESCiUZT7KIsDN0C0/W2YxrgGP84=;
	h=To:Subject:From:Date:From;
	b=MbhQCW6LBklPprfEuZEQ7o7sNKzZCK0L6b0ygqFo/qRab0vDJmZPJjaVsjj+oZqiC
	 /dDsxYb7TwYrLDdyGo/LvxKj2+wtibbXHhthH2yibQJzkhB7zPVwNNhCHD0a0KB5Nx
	 BDkKd9F4I3bn3MpW8fUduLJwfgOh0xDxk6CXkQRLic+1mZ4EMafs7FEwwS0CVE9B/O
	 JAP0RECR+ru61a8gwJpJua3l4fMxT/0GJifcg88buu8LWxGFGo4UTPnDFhC5Fyk/Dy
	 EuPn8McQijO7OnSEhDgUrml7gBrJsSISo8TEXxuotlBuC2Qr8zn2Z91Apbfep09vmN
	 iJ8fdBShZJMkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF246C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178442991368.983.10273821825073507588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51add0862d429c5d77be4aefdd51c59a86e5c5e4de95c468a8e1bec74e04d82f
Date: Sun, 19 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784429913
