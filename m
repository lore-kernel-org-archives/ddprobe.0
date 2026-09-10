Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC8A39B979
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789083034; cv=none; b=FkjOvCWj6QBlXCOlTu3XqNeF9YluOXIQwrh3ctFxt9nSuS3eAC+22/l0CQ8rSieoZAZAjAF+hDhUESkU1TNHCntzc23oj51Z8YoVsStjxI6d1+Tzm1DplDdn5TVTb0uQMMIbg/JMCpzEPXIcQa0CPTbhEDUZcIX6yYuEZKjucMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789083034; c=relaxed/simple;
	bh=j6Me5S+z0tAqu6xT91SptaTA5hPkdOhZV4HUjoq/Qp0=;
	h=To:Subject:From:Message-Id:Date; b=QkmEVW1qLOuZLbqWlgqVuY90GFs46+CCmLfnw0ufhXE/+xgT3lTpo7IHyt7BmLmpI2midNnR8kNTmVVR33PMUeXFcyjqS+jR46Aq2pPKMsL3Iasrr4i/LsODfpL9v+x/86VdXNsAl7M6zb5aujFCL87J1IQYzksKGsPmskQbe9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2jXfTkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2jXfTkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B5CC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789083033;
	bh=j6Me5S+z0tAqu6xT91SptaTA5hPkdOhZV4HUjoq/Qp0=;
	h=To:Subject:From:Date:From;
	b=E2jXfTknw7DmB4h52SgprCPXAqPeDCj+mtPU3D+44pXcxSGrXQms/93ODh71QY4Zk
	 CmQyLWj5aggTS8f7LTn38P1SzqyRCTAyRKhCHRNN4niklPlnO+FkbFN+PWhm0iHhAG
	 Av9/ROjLnhJVWw/oQxl334tCZzmxFZX6UFf9kKZ16VvCgv8HvHagp+Stb0EP/tKOaG
	 LtOiKScUttmVmQxhwgoRe3r5cPOFcqKoat6+JWa1Rv8rXZJGv6eRROxoch0EQySZA0
	 Dc2hYIdV+/U/EborZ1W1YIA4C5iX3EzS1EcpvXXfuQBUDacmz3H9lFC8ygepHFRacU
	 4nJcbngtkgJiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA60AC88E41
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178908303368.9370.5077349662822130746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310255571a25a15be6e86934a0d56978589b295427e6a4dc3a85ef20c4c07e88
Date: Thu, 10 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789083033
