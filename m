Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4388F3CA4AF
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 16:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783789114; cv=none; b=F4pv891Rfxk4h7wz5iuW+TVP9EcN2ql3Zmcl6SkYpsM1gPTNZL2CFig3WyWNtMG9Yqd3sxqy6p8bk4s8yB6OyQ8kmoZbSTDPXOXIa8aWqSpt+L9NKKP5S+aeTZ7tGl2ZRA71RQxWj49k3A5uIwQfkZJV5sfobIoSnv8pMXg9jLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783789114; c=relaxed/simple;
	bh=FpWvzrdEMWwjIZ5u0vfQgq4OcGS/UK+0Rg5c/chovcs=;
	h=To:Subject:From:Message-Id:Date; b=VSVIAYrPjHpAkpsRSBLC6phQHwtSk0rD1xtTHf6gsj4EuRexEWPJPEx7OJln7ShLC4DTn9YiA6eX9mms0rzr5RQprcF3DVGXeiyLQKTVx0JwXTG8b37HbWntc4LnS+PsCKEnhdZ+WOSQSOx2Bav6w5DgawXfUJCiDFbgbvhghS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTSr6hGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTSr6hGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B87C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783789113;
	bh=FpWvzrdEMWwjIZ5u0vfQgq4OcGS/UK+0Rg5c/chovcs=;
	h=To:Subject:From:Date:From;
	b=UTSr6hGC5ZmjqzuQ+LR6JAA0fYry53UW1NyZdfBk34jwkRH1ZvhVuuA9traRoql1+
	 eF7yelzKrnL1+tPU6RoQpsgNhYiO8sNF+IfiFEPCyI3NedQ68CdCJMm/wUK8HvXr4v
	 k0I9/5FKXpRhhLaXj1aCqymT0r1tOVdyFDO3Cki6OKdcANii3TY5J7bSdVRQbu3hwn
	 /Yg+UVKJlTFa+pZ1PfFFW7aR0yqc8AvwtbQ3YntHmoi6w5ZnNpBLyelXtH5axghhe9
	 zRZKUam1n5w4V3FktZXTM5D3+khW1lOzhcljuzOgN4w2CRIstGqwhNKmM1xAlK8cDn
	 NPScUqCSWTX3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87D0C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178378911368.9130.16154562500810337971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb0e3241cdaa0b4682ce40f9b38970907a35de55415ccab3a80ba1261d8df25
Date: Sat, 11 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783789113
