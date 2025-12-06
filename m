Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E85B296BBE
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764990774; cv=none; b=EYm+BBk5DpWNwntTftAgM5/NXiz7VimDbQX6Jg5JLHRMhi1JH9G+BAlRhmPdNNmW3JgpzlXr8jFE9nziW7xGSyB8NiXPFDv4xKS6UydGJoKUW0NJxCVhKZxJXAxcgcH3nS7Ly4m1TOLrpDL45TKHAZsYF+qkc4qa9KZoEVcilB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764990774; c=relaxed/simple;
	bh=W2UuIwYs15To7kF1c7FFZZVo83oa0sjMXHjRwiNoKao=;
	h=To:Subject:From:Message-Id:Date; b=EiI/dXgdGbMjkhBopFGeXByCIq5b69idduRg+iHskINEuPPjbuZ9X9cy4p2Jv0H3O1J1D4VMzkbyeYagymhRwR1f27fkC/27woy1kjRwekhMCcsVXKd5Sfsvwc7jCwy5xUzviVnAFtA0uBha4jKpuZO2oBQBESKkiFGBQZf095w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOw1SxDR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOw1SxDR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D9EC116D0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764990773;
	bh=W2UuIwYs15To7kF1c7FFZZVo83oa0sjMXHjRwiNoKao=;
	h=To:Subject:From:Date:From;
	b=MOw1SxDR8kj1NAcnqtdXSCVprKV9ooLeGEFcC8QpSkNiuEgkwHc/FVsr552gjnIOk
	 XLBvDIXSOYBt3dFKcB3xaSFSCS+nBA9FR+u4yopKPdG4spB7BaVqEMdoTHXcvqyM5F
	 IigtlV6cb3X3rzVgQXqhp5jCT8P7XXytc47HCClHV+3VlANB0RVoEBZSVqgCrfs0mG
	 qDJD19EfGC9zJ/FhZ0a/MW9bkKlz278/DsBm1v60bE+TzkwiXCkA+FgBzTLbTEUK9v
	 K50Q5vWL81t5HJB2Wg1XXh2F/JDTN1m0kEzNgZsVuLijLcKfl/flIE8sCfgV9HgafC
	 faVRu/+SreStA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA9CD3ABE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176499077361.29623.11438297379934055445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 671f695372c7b2c8f0acafe936c704650d080105e765e3f8538f300af786ccbf
Date: Sat, 06 Dec 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764990773
