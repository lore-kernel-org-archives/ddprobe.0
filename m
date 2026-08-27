Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80683325701
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787862634; cv=none; b=jmHDnJOUVRMIGAJrV8d7I/uSdKDsrvxH6ZgJEq9EFhRnWdMtuwum/Unc5rTp977YoaAWRlWhWPRisc1ENQQLuUBOeCr5kyKrCQWepCzGfwoohan294BtvV6rwFbpTEUty9GLEOg/krsT5W0ga9dLPQxqeYE7S6S6zVAiAUAoS6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787862634; c=relaxed/simple;
	bh=uV1iY0Pc23IpD5i9db3o7/SSe+Ww0XJ3U+RylBLynE0=;
	h=To:Subject:From:Message-Id:Date; b=bGT//d0dAHGZKjbXEGvya56oKTwL5SSdX8d5u0Vq5pWcXN8PIQ6ru3G8CBOTF61SqkRlAmzeLQ0CRwHyExnBNfiUoLzeh2ZkXVJrmSKBp6IeUXObkWS5SMlgHZV3TJHAzRUsV1U4z7sDSbv4zQ+HIgeupfW9+Tfpend14oM6x3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgG+lZ5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgG+lZ5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9B9C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787862633;
	bh=uV1iY0Pc23IpD5i9db3o7/SSe+Ww0XJ3U+RylBLynE0=;
	h=To:Subject:From:Date:From;
	b=qgG+lZ5arXaRL5Pmp9EtRPHQ3BB4zJSK3pJnyJoAOd/BCXag4slAJsfq4HDbcjV8d
	 f76zp6ixDfL3yr1EVJEgEbKqyMELi1SN5PPSwOe+03QghqG2YSPRFqldafe5sugVZY
	 OHvtduAcYtVpIg0f9fElQtH+oKZvbuBS/6Hm+ifmsnEfTkcmQFDenpZ/m64Q03wfz2
	 r+fduIpRFajTTxJor514fxcPUj6LjFwcJ6Vbq71LFO2aFhZpcn3SUsaIU42BRkyMhX
	 OQ77vbBlNupj6LXcdJux2gOVUy9O9/WEeNhX8B/V7mKBJ4tV6KJwXNkwfyP2tocQMo
	 fFOWFpFMhIDNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99E0C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178786263368.29985.12477474249505135736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6f3bbb9805ee682dc86d60b6206b479493faeb75df31ad1e45321718d04a2a
Date: Thu, 27 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787862633
