Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8BC13A3ED
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777527454; cv=none; b=jxyoTg7GeG7XhHW2b2pKImJJemZnD99Jn/Zg4/TaHzNvu7Ws/59v1ekF1js0DQOj4o819BL8yBWwQEEYBPMyJhkEe+YnmYj0tP9cmWO2bmOhBGyB0J8CFYOKdm1+/dQ76CVrFlySYFKcx7HJFpfpZviIdH62PWVNmBgt+k4DUiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777527454; c=relaxed/simple;
	bh=Fj0fma2idkEuNj8+10rU7k1CgJtn5U7E9McRZfFmAIw=;
	h=To:Subject:From:Message-Id:Date; b=nS7GtzWe1gOnB0p6fWUKJFeiiCIuKNhj0vULsns9wBj5LkLbwibEVeGCz0ES/esyashHVAmyFEpBCVGXPbL5iS1e4xejPEE8IO/FHeXen3xHopD4mLRGRr+O61eXpeVvfn8cgUzdDriy1+63mNy39j+HvBc0n4EUsE9lX4w8p5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FecpdXuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FecpdXuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF6F5C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777527453;
	bh=Fj0fma2idkEuNj8+10rU7k1CgJtn5U7E9McRZfFmAIw=;
	h=To:Subject:From:Date:From;
	b=FecpdXuqai0ndxMtpwmL5sVfRCFt0p3MYSrCPUm9vsmYOghEH9P+EujTLLR7owHw9
	 oWh9qlg2IvziNuU6pjI8Fd8YQG44GZ2Yty7yD1SCPMKWzsLXkTdO+AZrJWR0JFn2SB
	 FFdOqto29nc+enz4dRbCutb3RUoePaEW9CicIHP0m7BLRNKR1h5T2leLzDlqByI18t
	 7theFf9RbLl9wOs/eyJe9mm884vrK0sl+DnORHJDa73cJLDMCdnKaxhmZ0Xga7sTAU
	 0iLkPm2anBh8X69daYQosAsOk+Eze7SVyyx1t+xqBAWHqq50cYzvnPHMust5s1ezKC
	 WgvO9K67+vQbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB0BFF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177752745368.25509.8945227239335997693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94e660686a18884dfa7dd6345cbf54702d335c79ffe901384511d534b04ea9ec
Date: Thu, 30 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777527453
