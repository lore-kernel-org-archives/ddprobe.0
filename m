Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2373C28DC4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757701194; cv=none; b=GzBEmBXvT7DM0WhF56L5iqOoOnrPN/m5brVH9KnwnVW4oUKJ5XVOee3BHnugs2eMUwoF+r8JwQOOtGl2D2X7Sq/pJ26sRuJ6FskKyuvJSUMGFZkCK7Zbik/rI0DmxzNh+j2kHOn2Z/q+kpIMn6Te7qclM5K0B5A8RXUo1cdsGKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757701194; c=relaxed/simple;
	bh=ov0rATAEQjKXCxaRSAFV/A56LhiKMWccUpVrcHGRrdo=;
	h=To:Subject:From:Message-Id:Date; b=QHCiIS56xeiWTzNPzbeR/UCYtVyPLe4oU9aLElvpQZyLxjvShKJyX+g6gUGxesXCb5Xr5ifbUB5txrYqwHP6O1gSkON+TABHRPQDolOEtA4vVsyrUsmDcHpCCJkbht42bIx24jN1f/scq55JmUHWGi0RteOX8TeinuAabJ8/cJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qyh6CGXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyh6CGXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50D9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757701193;
	bh=ov0rATAEQjKXCxaRSAFV/A56LhiKMWccUpVrcHGRrdo=;
	h=To:Subject:From:Date:From;
	b=qyh6CGXtq58bn9eeX0FOO6GE5/QGTIs8bCa92OiM+Ktk2bV73sO1R+GMifZML+ysp
	 qXc7c/0G1f3Lz43WSiOrutvHskGOFWPHl2hqiJCQ8t6XzkN4xF/jM8CrMbccJQoJ6N
	 CDfasSV8uH1H811SLPL8T5l2M3dX2YCZS7Ncu+Um8l4I3OES2wfgE19fwYc6kqrV0G
	 y7iOQyN9dQP0fC0hE7zCNIaSFLSVYK7LvLjfSVfNZP30+vQquMM2h7CfzSNZyRMkZ5
	 bOEwvQSIiXfQuJMRDu3fCx1k86FJhXrKbDdQbj2zRNNZGUlOe3tG5m1JnJkcoUFoE7
	 dkZ1Eu1q7qwBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9401FCA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175770119357.13790.6191149830162165557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c0ebaa6dbf7fd9c7b413451b25edb05649491794464c98967af8dc8135ecbd3
Date: Fri, 12 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757701193
