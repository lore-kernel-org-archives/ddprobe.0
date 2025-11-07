Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E7E32ABD0
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762528193; cv=none; b=UEEk0YW+eSO1+jenWIFyZozqtEnKPWSls+mtVADlfnYUm5o4NQLWjrQxXs/YiSPtYpTvX8bAus4LCRIf24AGVA3stOU1xUjyjmUIWB6aDPg8cgJHimU0f5ZZSP1bLR5YnTglfwxCGYWaubIilnMAS1g2e1bEKiN87huDmy4EGr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762528193; c=relaxed/simple;
	bh=TtJx/tMni8Kt4dOy1eyxB2u4yourViqKcskdRusNLpk=;
	h=To:Subject:From:Message-Id:Date; b=Cz9eH1gZhk4INahV5hZ3f2J7sWhZCI4kJSuCVpqQzcIYvsZNqgLwjkbRDpfzAh7PJoLTh0bv4u+RuPNCgD9jDRMQR9kJgf4XjgYdErZIXjR7THEKuXycZSckazu98/UmP8956G/Fu5Av/ZFv+csTn8FA4L57HyRJHWaSznJqf9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERSaL4L6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERSaL4L6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69A1C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762528193;
	bh=TtJx/tMni8Kt4dOy1eyxB2u4yourViqKcskdRusNLpk=;
	h=To:Subject:From:Date:From;
	b=ERSaL4L6CA98/+QViQuleKjAG1Dbt4B4WoBur7lpkYS+uDQpFNmimI2Xh2hnJCQPI
	 6JEwK8RVfHlS6u9mXOhD25fPsZCuxPKluFHwaapNaXSIbrEmCU7MdEY/3GjJl4vMRP
	 HS1erBtlLATrkg1/Ems6//PiQE1EaVAEHV16n2K4OWdETUvBiKzXagw0iVtcamY3Qt
	 G2XXTMXcXkQTW3wAlGE7hIt6FolORPjOTedRpgZWhILyl/ccH1/tRGW7hC3cwDS3FW
	 uzQtUpXAbkqeLy8BPhYVxFNjMSpgrSmjigUkV93ZICLglxtUJ3qnNlUnr83qe3Ly/P
	 3GxYDieThn0UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959AFCCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176252819359.31621.3584141339416263855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74d0bb53b68209012b10d5f01a4bf01c461def275f091865d668d49293c206bf
Date: Fri, 07 Nov 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762528193
