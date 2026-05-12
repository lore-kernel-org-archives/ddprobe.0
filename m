Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F173A872A
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 20:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778618434; cv=none; b=p8RIQOCBtcVvxu4ia0Q5Leh4v6g8r+DecTi6UffmhiN7Zab8xVGOv6uUQE2ueiIc21cNfQRc6270bmJxKIWmrJ6qci6qZ9SVR2boT5xD9GhG9Pq/WQQvsLZ8dMrI2Ql60j2NXOJWNY2QOJ13Y5Fo6HWUujLAIy0MjkNLKxeyhKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778618434; c=relaxed/simple;
	bh=i3S+UCPtAoEd+b9I0j/z+PPBMF80teEFLjhEuihidzU=;
	h=To:Subject:From:Message-Id:Date; b=gIixY1gV1+g4ajXlu4UZJ891329CNfFmZYcYF0j4wiRMhQD5vVN8yglIcHkDu0h2wNMhzmI9zPjjzGuFEQ83Hs2/Nim+jAhRWCJl4mED/HblBo5s9PlKIKAuTQ8Y9PukRKo6GI5NxNCmaAIeKU/a8XyCFZDBctBBZhNIy3OWFP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOzK/v8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOzK/v8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDAF4C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778618433;
	bh=i3S+UCPtAoEd+b9I0j/z+PPBMF80teEFLjhEuihidzU=;
	h=To:Subject:From:Date:From;
	b=cOzK/v8S0Cuu/6SX0B4niCdlm/0sDj2ZkqFJSbDNzoQ4K2IAzoTnSsOKj16TMFdOq
	 306f15a04/TVVzFJNX2x698gN0vEAJdX8Y8/vqHTKBzNYQI5aSaM1khAGi1esELPck
	 41mGYM1BiRRtK9U32Ip0eHoga+vkPq3jc8vwDyHvuWufyxtuGDfGF1AG1goUnJ+H6L
	 6n/+L3AJjhz0YtA/M1dDVOUiVqF8RTHVO1nS1/SIba7LUH9MAzcQ/AGXdx4ST0LXeX
	 Oq1wH48mNzGeZCLafKT9dF4jURvedVh7VHTFQap/u9ZZVhG+DqDU0dF+l+PzCQTIG9
	 PaKS3BlOBphoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAACCD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177861843369.29059.14847317816299780048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddbe58dab9571dd61a799aaab0c6beb46c879110a9a13343aff2e70c3358479e
Date: Tue, 12 May 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778618433
