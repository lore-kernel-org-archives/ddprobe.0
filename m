Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF4048C8BB
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 21:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781125594; cv=none; b=HOp2LtgU4FNe1xr5KZdDUk1LPQ1aicUamMT+OZdE3B25eGjhWQgvr3lWGpxPwnOURkQ0ng8XNBRq1tbp03tWBbGcfZFMDU4o9W9NNsuo7jz7GtqnlDkpaUt2oqbMHPXy3I5R+7XHEA+iYNu2dmBa4RLcaJjzpNE2dvdnu3UUayc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781125594; c=relaxed/simple;
	bh=0+PAbp635IdJjmSrYegfa9cm7xDORO1y4pF9RxcnvoE=;
	h=To:Subject:From:Message-Id:Date; b=gDq6BJ0ahvtXXSN7bkDKWyD/wdXmUSYZhsWA9dDx+05WJ1P/Leq4UTS8Y58HaTKrMNsUeK4ss0ARZLGJAbvcFR2dzzgjZ0qJ7dapgLA86or0PvqP1h7xlhoL7jYi6byb2n/dmJpwoW2IyhGPlOwHzumnprdRysbDj8H7IIc2+go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/0ybr6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/0ybr6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF26BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 21:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781125593;
	bh=0+PAbp635IdJjmSrYegfa9cm7xDORO1y4pF9RxcnvoE=;
	h=To:Subject:From:Date:From;
	b=g/0ybr6TRn96fSSZflswsDwebvw8o8kChmQnmmWYa6AbhSR8JngDeXyy6CdSogNtM
	 AgV9NZ/VFyaDFiA13fGJeO+OhcN+T7JQTUoVpLEYUbzTtGu5M+RXFduOFG41tMZI6U
	 kNnCmMsU94oe7amdAXmxf2cElMLyjJwnpO0OsJyOhbEG8EcwVQ3TxZi9dFidEsd3NB
	 7ZJc+qNNOk1NBSWuxgCKyMs55ufTcxHZgJJsa4Q49/U7qdI34+s8ZEVSkQtz1wahjJ
	 G8Y1IC03Oaqks3gohiwgRsXge+jPr66wyEvgFbqszOT5CfVXIo6cOLcFNWXioINLLw
	 4Z/Q8QAMZ1GuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEB6CD98C5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 21:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178112559370.28795.772785566171346123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348aeca514732e60ab468c6784d43ff565f59d784cd8059ac54a556fc9c2ee0c
Date: Wed, 10 Jun 2026 21:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781125593
