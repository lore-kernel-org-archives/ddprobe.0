Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E69930DECC
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788124834; cv=none; b=JekqjmeL2MKMkyLRkEzvPQJ39+lx+Fe4/7OC/Hb4y31IjmRHxkHEGofSsEz1hLuwC06gYONRQSMRDOeC6aSFXnEKXkcb9bsfVyXsjwd1iJLcfNGR0n9ofKsCU9nfZxqqOPo6Rk6D74pihEtwlMGTbvffaU3DiaZeWH3ay91OJVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788124834; c=relaxed/simple;
	bh=8OTO2l06GNb0zy6x92rE4pyierrVWIPV6+LlRbbIfLU=;
	h=To:Subject:From:Message-Id:Date; b=c4GN6nsiIRnP/CU6nOcnHo0koJ2dDNZ2Xs7H26vnwL51wp5SeajtB/FPJu4DvqG9me89Ilt8Vsb5LjlBeYzSseTq5KMD6LGyof4aeEfeoFO+HDIzhtK1Zj5WMeUqwtY25rEmO9ptd+xMafMF+B6ZtCQGKglmdfDyTYmJCEUB/ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sp1PatBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sp1PatBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0805C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788124833;
	bh=8OTO2l06GNb0zy6x92rE4pyierrVWIPV6+LlRbbIfLU=;
	h=To:Subject:From:Date:From;
	b=Sp1PatBQlKHRlAVmKeeNzK+IaJRcjLza9dQWMw4hEHcaBPPuFXJcNo2BYAdhCeCJZ
	 oDJ2FoxszQWjflvluQ9Y7p6E9xwQFG5Ohmhpsm7K8atl90Kv792jr7GA+srJ3Fj9E5
	 TFTZ9S9s7z9TNltPTyWE3aw44AWpnEaRaS3cBV8k7+dQI+FgwA9xtqtigDD3KHKB3h
	 eDDfIvbBu/jyj1tveqWQZpQcZERNdBLz0aO3wsz2I/CtZacuBlN37MsxNb/EvmRkgk
	 AhVDIcOFRDtpX0+w9JCYUx/CYwm7/uiG5LkG6h6ux9NLr8z2G3brHYHxjoDPR440cQ
	 IMEmculSr6BmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC32C61DE8
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178812483368.23978.13372970933837048534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 038bbc5d4afdc731080667f672a166bb15b912ce6d8523132a9d48f09ab247d1
Date: Sun, 30 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788124833
