Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83CC2264A3
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765408373; cv=none; b=te5U8Qa8w7wgpdvRo45zn6s2RBLkofo6G1+tNIhPVuzbI5z6AYxYKUCANORU/abdC/N86FEci+XjP1Y3WkFw4fWplYyZuxGGSnTcnPK1DVlRCSk8avkLvDmoLaFcbErKtg45qXofGC+R1Y+bcgt9PWUHEGUQt4QUqoupgPXycj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765408373; c=relaxed/simple;
	bh=ZwmyjhxEJzBxE3NRbTs8bgePDBFR9NhKCoy8fzuHoYs=;
	h=To:Subject:From:Message-Id:Date; b=sk1wR6Iysf7vISeQAHw2BTdw2n1Elv3+6S0vDQEs2bdpy+yfGy8lizU1dxk0KFLE6NYJBA1nnUa+OoplKGbVSUggBTvfZr5Ekt845FJ8BUAt/KCJeHeqkrikZLmOTxKQwp17K4aULb71b5nQNakox/Psp6YkfEjsocrXeh45ssM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2nlU7fp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2nlU7fp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A87C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765408373;
	bh=ZwmyjhxEJzBxE3NRbTs8bgePDBFR9NhKCoy8fzuHoYs=;
	h=To:Subject:From:Date:From;
	b=U2nlU7fpreOgVTiZ85l5nOTOzkYmq/C9ME88dWwyuJeoPKefI1+hrp9oVR7BOKmgF
	 XjXqshDjlOy7KVB12krfLAiSGv9fwpc5rpB74Cm+PCfG8VzE9VHPntuXQPrGMcgvAK
	 jAeEG1G2TIn9VkWM5eRuWVuuuzS0Dxrq7fXoOxHH4sdHzMbxOvU8K8f5EcsWDcL924
	 iLOW8fap6mA+Fi/dMsFKvh4FcpxHVzroRNtTz0v9YU3X23p80j8PjxWc4bzEy98MfN
	 fmbP3pTOkeh32ehzMFM8TLJR48mc72UfLkDTDux9oftNm1W7hANg73TXwloc0QAj/H
	 aL2YomEh9FHow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9975ED3B9AB
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176540837358.5012.9139499251021046142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0157216d1c23bc364f4fd2c156d84572e73eb074092b96e0c6ed10df376cfd15
Date: Wed, 10 Dec 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765408373
