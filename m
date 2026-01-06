Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF6C92F1FDC
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767734034; cv=none; b=AzeUUFeAJVHHH2a2XZIkQVZ1Dd3EDqs/cRYTMSijJjpMWGwUPy3GBRAPbcVLgzPb9orQO4LqGJxl9qW815c+Vqgl7fsIU//t7GsIY5hlS1A/1GbHunEkHVR0R6oGveUEpwodTtkz3LOjjp8gWKOBFaSkJ6QREcybUHXLCyZaHJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767734034; c=relaxed/simple;
	bh=gORpAZQBRqUeRO6L5LzR6bAvI8tROGLvKkparx8Is00=;
	h=To:Subject:From:Message-Id:Date; b=dSZLBcETxASckIi6HLcsHB9eEjQRyBEQOcyhZ30GmvlaDAKpdpCIE6vawU7o+rAZeIyJF+KMqaqHwwyGx03x5oMJnFkQWjuJQVMPNc7eDRJS5DVHdOWwk968Adv5jk188DB096pnaW4GfjUW9VyQQ3Xst0Cqz9tmxW7ONh3qts8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHpTC940; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHpTC940"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D14C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767734033;
	bh=gORpAZQBRqUeRO6L5LzR6bAvI8tROGLvKkparx8Is00=;
	h=To:Subject:From:Date:From;
	b=vHpTC940FmnD4MYxx1qTHFngN18gzIp5/RFp6ecCGM1JMk3J1M9C91mOO7SNTO6dL
	 KOvV3koBVxCIv64nZTfY+tTHIUxynug7XriMKPtP+svQhYqPAM6rs7B3nUiFMMRN/7
	 YeyE8aqnzGrM8m+r2FA2kgtjOwHYmSTP1aoF7+RCH7P1NZRObUYEGr6ZpTY6yZ99hE
	 Hu9yx2eQBZSVn5J+y4X5Omi+hQMvXG0cin5S1u211SmLKf8CGHAbE+yZpJ12+pQby9
	 DyEULVb3qxDMaolppXWKHdQDJFazezvGZliiWh37CiFa3MJBDepDLBN1Cf7SfWXQQB
	 vbKmK8BaqSAOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90124CEFD10
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176773403358.22256.8163581881184789157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 108db99bd8beb708f7c1dfc6db15b498b26cf6ae1dac3c11512097ff1a68a9de
Date: Tue, 06 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767734033
