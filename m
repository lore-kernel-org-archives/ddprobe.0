Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 845BD39936E
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 09:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781255194; cv=none; b=BKu4M4ImCenvjHF0MNZxn9tvUvLzjKUtzEYoyZ1C7UEOltcMZXhNQhuckSx4onzk0qnL6htuWLiZOwZCucZq58VxBT96mU9D35hkXgH/wKaI28B0TpNHMcsCeRc/ZTGBw66V3sdMCN5WKmZjAlJjnwEmnYsz9vqMMAwtUdj1bUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781255194; c=relaxed/simple;
	bh=Wv1g5OjvxDy1GYR5AMH2bOYYGe2WCD/X9w9sEe5teY0=;
	h=To:Subject:From:Message-Id:Date; b=WEhi0EtNyeTJxKbj6HVRNK4Kcads65GDFGw7O4waI0+3ylS/KFzlKEDjEVHQ2rmMS4J8Rwen2TS+k3lO7EM+78BlokiXe5cOne/fJ3gEBbPcEsiUeLQ+SG1fmmiiKWoijMYQJ/YSB0GB3G78skQvpLxE6Vz1nSlCcfq6nawH7v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f198NEuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f198NEuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4120C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 09:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781255193;
	bh=Wv1g5OjvxDy1GYR5AMH2bOYYGe2WCD/X9w9sEe5teY0=;
	h=To:Subject:From:Date:From;
	b=f198NEuChox0qjy5iLaW7Z3J3bPBCDDA1uX8POLot4ahUg9pesRDbLkT3BJJWz1sD
	 no4GplHFNQSNOZUb5sCGQLZaExZhvPCwi3IVt+xXacjf4tfpq3TD8C1pU/XQIw0VBC
	 rVAVa3OA+Hx01BCJ5E9lPU3gZKZ/APGIkkERwJDw+096Hps3QTXREBwB8rPlrRWgVV
	 5smvkcP8vWRGowCkcse4ifKz98aBfLgUdKIYJaq/LxBwVm/eKkXnGpERwmghkwFsBu
	 Cs5XYXw6B5MrfUjXRgRL+1Wr2JKsLl0t1U0kSyPA4Y4GMGOD5Uebv6mlUXLYPhyw06
	 fTJwEqFLZfnng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FB4CD4F2C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 09:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178125519373.30498.455860152614193606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71a84530632b630ad36e3179a7010f2ab726c3f1829cc50df4c88731189bb743
Date: Fri, 12 Jun 2026 09:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781255193
