Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D634683
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710377296; cv=none; b=Zbf2Nfqdg9FBuq0b5iAPwmZOXKM6Ukfd+3uGTXXpOpXJNsHrWG4JSvdfn8wF329jwIYeKXJDUM1UkBHZNC1rjjWdEAFoFZQRy84qyIA/mAFnQhcBhLyV+JOXxFY7L55KZNs0edXeR14jnZgciGvkFRf9rOA4rLDSI2omFvTen6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710377296; c=relaxed/simple;
	bh=tPN22qnqYCl8kNMIa/K4BhFcRPhaX/HSx6ZxXN130sk=;
	h=To:Subject:From:Message-Id:Date; b=i+fT1STKopskL7XOTq4OrukXT1B1owayt3sH9WJLRQNSL4UNpW1h9mKl4tTL56xyd04c3DxAiFSRDkp4wNOuaNnZUt7zcT4wiwwC/P4u80K4eSEEREMT1SHp9UNrXFe3m0SJ9cFgcjWIKpt3Fn6ILHH/7Nch6es4Y7v9Z6vnreY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tbfp98Wt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tbfp98Wt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73537C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710377296;
	bh=tPN22qnqYCl8kNMIa/K4BhFcRPhaX/HSx6ZxXN130sk=;
	h=To:Subject:From:Date:From;
	b=Tbfp98WtXGD2GgL+6bE2xvBptCxBRsr76FQZ1yW/7MU/mqCG6Fwn13sI6rHpR+FbW
	 dqDTP1VWi2eY2vYFjBK3fPhiLDl3APNEDDa1qJhDYJ7eyefNN3IWABUDEPAp8DXs5b
	 cacGu6BEYFlFsFrlN3eKQYtqx3qTXT4JhHBptTV+dhholLfXJERH32OKoi+lsKHlF0
	 CEmCkTS7N+9JvZIaAJ3XqbkqhHQQrnEGLfNEp0u7at7GC69AdW7CbF3WhYDydEHGoV
	 28DGeWh4aFSmZzSzjAbv+stKRG0fspZ5aEnqNM/ChQBH3CmCQK9fG11to/5nyp+LPK
	 pWstJzU1oGSOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C864C54E58
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171037729637.18670.6326957925596386419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48679b8ba0f3e5f943cb9b5ff7bafb0766001ffa2d04786e475071ac1a2a2fe7
Date: Thu, 14 Mar 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710377296
