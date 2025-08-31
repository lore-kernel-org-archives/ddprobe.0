Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3311F03DE
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756666794; cv=none; b=uXXqBvbix4abEFYpuceHTgsWTJ9/cln4SP1g4ye6t/BQB6ZqgOTD1U6ceuWHamUMwpn1hUqG2oazkSyKEI4FYi0pvqUEemQW5oshilv+iUfJFsaz6lk/zW4r/rgBMtYPvaFkvjxMXawgoalCeLLZ2Ml2KhtXzjECt9OkaA8dVOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756666794; c=relaxed/simple;
	bh=lNcjO2fmrhLiugFLBLL0pCDyHminJ+jL6JRdPjHUa2s=;
	h=To:Subject:From:Message-Id:Date; b=Jrq4edjHIQJvBezuWQ8xIGEx6akDTG19VMPL1tEZizAw3Bia3WsFz3gsigkj7m4Fwgjao4rujgK59MWsG+8kOxFmrPC+ukMoe6mpt8cR4FKlQOfb1eaK22fsFW4qKUQp2etzKTWB8vMix/v0qVwQCFNXr2vfhLPVi4GzubRHVn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsOBHUag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsOBHUag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A577CC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756666793;
	bh=lNcjO2fmrhLiugFLBLL0pCDyHminJ+jL6JRdPjHUa2s=;
	h=To:Subject:From:Date:From;
	b=AsOBHUag7rLYmUAApTs4HILQhyUt4vLIL5S3JBzM8iKSlehgDUEhO3D9QCPqG+0VM
	 W9CGv2tH+K79VvdSw50Jaq70vUuaWiacHmOhFmdcw8rCHUAUYmpiY8prX8bWcuMHU7
	 L81x/2QMVqNcg/xLr3y8wuZys5OvBou7ywhm8HWBQ4urWwDNmVVi+SVx/cQvkMaTBI
	 ww6J9nOUmRGotRzKCvvPgFbzhHYtE1HNP28s5jjylbjSSB8s+7GVHYq4/8yF2/PYKp
	 1SCmFamnO8gGnikNHtn45efb8bZk6VYRCegy+F5feaVylS2EPhe/68KyhSwlgz3VSw
	 SWVprF9O1utvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910A2CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175666679357.6466.1027307506507957821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a09cca438edb676277448320db4ee200d6ba073e8d67bba9f2fd868e4cb47da
Date: Sun, 31 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756666793
