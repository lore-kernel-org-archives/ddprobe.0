Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFE838F255
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789527634; cv=none; b=HRDnL1+6BrJQ81iyKnAYcx/N9siRbqjx1Yb5dpre4YWC4blUNBUiR3h92jiTyY3FviZry0OA+bwlyFuDLUxGJKhfok4pmKLCQ/rSph4Fkcmxl9ULUegpr+mUeCV9z1pR1kHGf+YXoHX7Cy5lTToe0EocQe7l1DCefhM8PjfI0nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789527634; c=relaxed/simple;
	bh=BLEL/KW1Qs7JIxqJzwFnI986qWHw4whDpEh0KyxPkMw=;
	h=To:Subject:From:Message-Id:Date; b=VliVErXkqUxCnR1ustJAblFIE20edoa5yQJwm7jb51cfyplQzrtz++lFJT3JMUeyaK4xJagqKp7k9eE+BBDHH+WQQzGAnQu2VoJArObA8tmkPLQNz3rhOZHpa+d2Do5zkuSW8gguVMgiXoZxlpNHIRkqnaV24kIabI339l391o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ov8xjg3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ov8xjg3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC800C2BCFB
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789527633;
	bh=BLEL/KW1Qs7JIxqJzwFnI986qWHw4whDpEh0KyxPkMw=;
	h=To:Subject:From:Date:From;
	b=Ov8xjg3huVbhmP+YgAnr5+qfKQofoD46utLGL0+aO3ZqTXo5LFqrwPMnTwyeWU36B
	 eV9P5Zbs1+5Poz58SjG91nwLRytMaEVcaQxgoiHddSfqDxhvptdmy2FGbQRbC5Vwus
	 0keMiVhi+frnCkcJNy5Lq3OmSkPHLjmo0sdU3X6A251d1Skh45N+e3o8HQ0VKvlIGL
	 19gsGxyhsZBuB5qIk+NBdbTEuCvlIbbhTExuIH1mo6fTmzj1j+rLAiBw91b7zkTh3w
	 VD+xMSc9HPI5Y3db/X+7fcxUMcik4cPTilmCQtBLmHoy/e+1boUEieZstxS79cqx+J
	 iAgGtOaE7DjZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7DE9C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178952763372.26787.6068405856558663801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeec71871b1207b0b99b7258952c6f41e18c9c73e2d3d49cf39a5bf35bea0400
Date: Wed, 16 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789527633
