Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA051F94F
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789776034; cv=none; b=gHB6jINw76acxE8w/cVWPaN8Bv5yk/APJT1/MY/PMy8nMBQHdCl1SX5g08Rr8PPvGgxwvA2EjEm7t+6+L8xAuJpK4kR+CQ9GLxrW8kw1nKjURBBs4ZMFyfeKEhq78xFCwOIGEHSOo04q+68IcOni75URTeYJ8sHCB/8n0ROOO+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789776034; c=relaxed/simple;
	bh=5U+IStTGlMLze3dMhYHH31pMAA5muoPQ8s/p2jiIXms=;
	h=To:Subject:From:Message-Id:Date; b=ubAQ8PmXRtGBs1VuAPNWHWR/VcKEmk4j6jz+yyQki7CMyzdK6bSbD1hVmd3ZXEcAT78JWL8NCVxfKg6qitxPhj6jaE5NlLt600LWoOzylxIyNdiaU18zQ2W88MjEreV3MBLNe+KDALpp73X511t0Q91MV/W7JnXLfjD+xb7dnjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZL+lr6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZL+lr6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86FCC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789776033;
	bh=5U+IStTGlMLze3dMhYHH31pMAA5muoPQ8s/p2jiIXms=;
	h=To:Subject:From:Date:From;
	b=nZL+lr6AKgWbCBIi/+bCdhavIdiE2VmMjQP1Gz1rc5+koZM9TtBp/aRDdgr4g9wHb
	 fpbNWeCDdKJnQO0P4yY3F04G/53cwRBs8bfqQrzFthCtJtL0jfzQOvg+LkKBPKu5XE
	 H3vkWNIo33GKLShnshuPcTxBwH55/Eco44ZROXvwqYex2KEeIq3Sot6/ezFNhtuL9D
	 gJyxJC9W8Y6J5ehj1ojFrpce+vdUchDKYhgTWdzuzJuevEsMQO+WL5HdpXrdTNFOVx
	 pa46pPWR+jVozDpsTBihQnppMMiBPcKhpH8Kr6/oBOHdsdJrK/kGbSCyBrzJpvT9GG
	 zR/+QaQt+BH8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A5BC982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178977603370.8768.16604410762155070491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca7644ef547ae5321b12c47351a1c6382502eb2b8a22c9fa4c1452739e32786c
Date: Sat, 19 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789776033
