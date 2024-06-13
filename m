Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC2913E8A7
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 08:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718267903; cv=none; b=pVKJzlRmZtCaHVzUvM5+o4yBKN7PwLMXWi8yB8F67VUP6UjYozW8U9eCNnvqDa83r2latknHU3y3Ke2UHSURCQkly/42/I8p9L3AwSiZQCWMv7BWGMZBQlSamnikcMQ1u0pcLewR4Sra5ld0hZ1fDa+d2XY9ZQEzvueLCs33SLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718267903; c=relaxed/simple;
	bh=a9JSkSzUohv4hMDYk/hcmH8d1Mq6uNK4fHsSTf5z+3w=;
	h=To:Subject:From:Message-Id:Date; b=QkbUOg2XWLJuLjwOYp46K1oFnBDlzFWgTqi6G6uxoHIXkchbNBjg4BiiFnWGuE0mpWgiX9kwiOH+aBxRXtejPYtlUDifRNYJHdylYC2N76IWabqm13W2ZwRJOq/gmSBPjdR/Dl1mn88Eo0D+9XUQehdrCfFT+4qhTLMa/wKmeCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3+gSOtS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3+gSOtS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E02FCC4AF1A
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 08:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718267902;
	bh=a9JSkSzUohv4hMDYk/hcmH8d1Mq6uNK4fHsSTf5z+3w=;
	h=To:Subject:From:Date:From;
	b=e3+gSOtSi+LCDk3iUsRv/YG3gbWYdxpwnuYlapQS7Fo5y5SPugLpo+kgMDRTJmCCA
	 z8uhQBooH24zD603258D1k5vfvh/IfmziZu6eBfuM5jh+aKc+yKRJgJiZdzkFR1ShP
	 duUQosLmGabXzuRBaS4kVB/oQwKyq0SPUNQmNPjTNdmgMH62hZRon9fBGlbkgvS1CV
	 zGOaVDanHBsiAeub8zmyk+FC8UBusdJq8Keuz4vZkteYfb9d1Qmy+SW2Fpy3HsBBiZ
	 iHXnIuvGmjEUhPIX1Iz9US2xEHAzGWRycK4o6WOmBEboq4LHJlcIwwECzdP3H1hLEt
	 q4gdkBPODONBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE16DC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 08:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171826790282.998.16604569584985080134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ffde892aa19114da332e5f4973cacea50a90f262414cabebc01706c14bb59e
Date: Thu, 13 Jun 2024 08:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718267902
