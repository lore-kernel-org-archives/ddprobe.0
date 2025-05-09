Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD2F2741A8
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746795594; cv=none; b=SO+uERDbMqaVjFa9V1Khr2Y/MxvVO9GF10xiM6OjWtR+XZ370qtKloiH5fqDwrzP+djeszwB+T94GUFYZx/LUJg5aEP341NM7elo4AIFtOsQRlwJ7fOabtmwvEI3snhDuhQA7Z9QQMIiwIg/t+kMcex+p6j8mfNOe35Y9SIjnE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746795594; c=relaxed/simple;
	bh=g5PMuHdBA6einihTMMVsFLk3vxDJbnmaMfohTuRPyrY=;
	h=To:Subject:From:Message-Id:Date; b=pVlkvTZITkiyiQee+2iZTu7/txuD76VWtLoXjfUk/zDHneHGZtwBMjVZ5hb09FRRP9sfKdjQTOkqLMGyyaM46wsKYAX72Raljwwfng7Saeijs0c3w0PanGPuS/paoZ7wuQaQlceCCQA9x5JbnKpRMS5UXSrEVAhvGqiIKPlKhWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRnh2w6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRnh2w6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB25C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746795593;
	bh=g5PMuHdBA6einihTMMVsFLk3vxDJbnmaMfohTuRPyrY=;
	h=To:Subject:From:Date:From;
	b=WRnh2w6n/lekJB/DRFc5XFa9nfwNqOxubtAl/jj6lg+kfhWP+tuCcE7/h+FNw6pZZ
	 w087vKmD+3hfP6gGjKVS2Hz9ePMjWRVlujaxENAdwNLlN6dJgCRcyeXpAdFk3kL1Zq
	 lwk7OOTIyWyA3JoezpuD7cjKl0ut4xAbL4kZLkl8QwcOZBBImzX6sAi0AU0W0rGJfy
	 cNNcTGFEEfDhcdmMtiIoSBBGfYN9vRWvX+nmsGRs1CQoM02WsQFduGTh/L+Bzw8kow
	 WwoWTxIwTyq8NviIw7sGS3PZsVR0PbiJMtr2EJnPC/tehWwtcmjkXa3haUDk9I2bgu
	 30JDORGCF3QXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E62DC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174679559357.20754.10264482919171678612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a622961a2c75903e6a90d04992ec953c6c15bd3f8995633645f74d210cb6e6b1
Date: Fri, 09 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746795593
