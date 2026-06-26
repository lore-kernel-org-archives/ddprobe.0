Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F40F2F5A13
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782505114; cv=none; b=abuBnjWDe4Z02j6kMBPRq1DeIcRBNMggggRoSXAF44ERSkbY1E3BsgVy9VwMZphXEq37tsQWWzfceMbrwmopCYbXkFfyVmMyYrlUiD7O1MM224WDckJUJP1dvaKmfL/qgXOi/gA/HFSZu71/EJAd28mgxgJPoEPqSBfn4xocRNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782505114; c=relaxed/simple;
	bh=/mDfKCm1RDGfEURSMPw631zDKs8ot2nYNYllnQV527g=;
	h=To:Subject:From:Message-Id:Date; b=RRlqqapZ64Cbd5vjuzJH8Nv9s4jSfFIPIKnh28skbZhOV9zQDBVS7Shr0NHUA5E4tLXHvm8kTHKV7q1OyzUDx7OOJyfxayF13FCbvkhsGVq3goRdGhi9L1kfXEUYifJgvCwejPtss/bVrviMZt5ds6VmI5wdLkpsPa3GHvwKf8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1wRKZnt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1wRKZnt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19858C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 20:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782505114;
	bh=/mDfKCm1RDGfEURSMPw631zDKs8ot2nYNYllnQV527g=;
	h=To:Subject:From:Date:From;
	b=f1wRKZnt8PGdWsBuDoRoyNM24sV670ku/AJQYWGeSJyzqobtSQxhrbixVJVwFcGBt
	 yHhIYVpZLRQjDc/O4VaSUlXv9iLVNgTFoZNE+6SKcV4Txn2kh4htFl30dIXYUF4YD8
	 axR46tHLSSYu0nLJAXIrOqwRou7LmgySzjQT0Ql/cd7Ze8AWZIFzgacA0PpFuCNgsE
	 feQOAskDmw/QoxB94tzIMNBWNcIyiaaChn+Ubkc/P9VPnc5E1O0CF2tBdsQ2NUnTss
	 XhYES+Rq/Zm/MksVcMlcaKowWvASEvftsK3ccl+FdjhtAtF4FrQ2MYI4qEzKhJ+myh
	 yD1M4vFvWkKcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2135C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178250511381.8336.257103122764298723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 957bae7edc602aa5591ef02cb369b860904ad410090fffa859d1e0c7763bfae2
Date: Fri, 26 Jun 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782505113
