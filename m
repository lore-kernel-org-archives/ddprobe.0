Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2040779DA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765198974; cv=none; b=htICZTN8SfkPhATJ+rLTWsEnSjMfk/LLoqyHFmEVVrycGPMjPVeI4N2o8/ztX+y/GQ1FnxPZZw4u5nrj742+CgPQjBXJsZtSlG1Stny+ZyieOp6Symmn5k+gzhxTLoIqaNkoxxjoa4YuaVkVANyCz1Dxewq/AA576H0FregpGRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765198974; c=relaxed/simple;
	bh=E3xRpPkHdaRmCb6L1lcB0xnhQAnipHSe0XNnZuxeRto=;
	h=To:Subject:From:Message-Id:Date; b=vC9fUVrJ1Jcpzec2tg3rr784U8Nu8YwALoyPU3R+Dj8POEmXfKlbI7EKVQxI7qYE67RsNLQyqdHJejtSnNcsE02nx3oR5VmPORJzy2cmVlIAOpFtdY9AMGt3g2I/en+vwZUmB3mtOTsj/D0zS4VoY5cdOwBEDZti57aExHQ51UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrwgbtSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrwgbtSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64C4C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765198973;
	bh=E3xRpPkHdaRmCb6L1lcB0xnhQAnipHSe0XNnZuxeRto=;
	h=To:Subject:From:Date:From;
	b=YrwgbtSwtjqCKCKKBJoLO4+L8e6LEALTEkRnE4zg8f8DGzKcxsrm0wjvlD1qBbfW8
	 /2Nujze5CNAKcxT4cwtDl8lLv0syJLlRMvcXE1XP3J0XBkbp8fHCJ2t9DrsvqUbJm9
	 otxksYDnGtVuyiR//T5Ju23DNf7Wy755lXgLUW6+K7hsk4tMYXAIT6q+nIOMZSRYj3
	 fwPSuOraPEXzsEAtNODGT6TGzuLDi/rJ9VPuSS6XKcZYR1GHk88Rw6EYeLL86M/8Ud
	 phWze1cH1w2dU/Rhr9Dvpxm8enAL/nSXYdmuQCtR/aikNeRjEIX2KbzhVHk5doYWEy
	 LL7qWu9rmGzYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94946D3B7E1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176519897359.19120.11144927483334391512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1566d5d2fc0e8250e3e0e16c5ff1d0a6b5ebbb4124582ef3bd166252b8f349a4
Date: Mon, 08 Dec 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765198973
