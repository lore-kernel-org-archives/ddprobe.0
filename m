Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7C5175A92
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787213434; cv=none; b=ULcGwf4JiGKmi84dAHk4Z4Ru0X2NZylSgEds/A6pfCmMHo97eJWPW0A2/W7s+AEslCnW3ee5+JjzzhwDulrJrrjFAwar2dRgnd9KLIL5YrfrScLfsHs++4W67C3e4jDhG631/W8tgWbpaZ/qJeJlh8uhVuMhLdPQzzuCbdXCxjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787213434; c=relaxed/simple;
	bh=iOiH2CMDLOHa4sG3QnWHWT+p/ZgTUk40SyaJ5bZB9bM=;
	h=To:Subject:From:Message-Id:Date; b=qHW3BhcKRnb3pg6wx+yQTFHCfOx2JhkLL1W+TEiFWXrRDwSFag5IupWZhKY8QidJVOwylDjbkPvBumSPAaOKfE3LVahV2aLlJA9pgGFgjbeie4PbpzM9iJKWPgZDZ16zbbho52vJ462J+9aTygAVQxIGWouRpF3AxBbnFuGH838=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkY12KOM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkY12KOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6AEC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787213433;
	bh=iOiH2CMDLOHa4sG3QnWHWT+p/ZgTUk40SyaJ5bZB9bM=;
	h=To:Subject:From:Date:From;
	b=CkY12KOMSdKXnnYKZmoVTG9NziPFkn5xWNSeS3hnbAL5yimBlGeSwX0biWWbUKQ6j
	 BM/HIXnddrJLLgeit1qJzw4OT0WaOE7hakLbxuLFqkberjOf88pZusxqUITrV/V4iN
	 GcqdVpIvzGyg+wGKw7sgiSwQN+kCO6LCBks1wMgwrP3m/52hIhXTdWJzL1BleXVhKh
	 qpw6wUK6MrCdr+36IlhkScg8uHIyizqn/a2VA9o8AqLAKhUyLf13UcMOYeNFC4PBPN
	 pR/dIG9hv7BtTUlTK7lMV6yDNJBFcdF8Gq9jSYxKPxyYIITGHR/BirvM1RZ3sNa5mM
	 aG6Hp5VAxGvRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E92C5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178721343369.22622.14161410699427135024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e02145a6c134f7157cb91854beec47ee651f3b61f18802205931ed5ed627d69
Date: Thu, 20 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787213433
