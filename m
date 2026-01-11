Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1220223ABBE
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768125834; cv=none; b=TdNoMWeGRiybq3oTb3SvfPcXaqyUTlSNg4lPQEv0k8pZjsVjEFIN5cDALjwm7CH57gHXLCBsjB/e8+QFwrR4KunZELm1wfQ0uwTWAlHfJHEmt5w08cW15iTmmZkgEsYggt8usaqwun9fKIrJj1qy84W8UCx/LP21hixO4grOXeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768125834; c=relaxed/simple;
	bh=+K86AwN4GlwhsrllCcZxpA584cpYwgX2L/PQY4GP2UI=;
	h=To:Subject:From:Message-Id:Date; b=i/KRL6USPudAPcwlOkaru+qhx/ayKpOB07zVk4Uuo5qacYnnt82HU7cTuyT9rPKjrxjayIrWR3UzZq9E2He0qn5SJq2OKdSTfh69CtLVFoAXjTrECeZEJD+tR8Ed/Q9SaIOQRVDJoOaKsaswwH3WVfh/O4To+bGB1RvBvlO9xA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IP0VFbmH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IP0VFbmH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A236CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768125833;
	bh=+K86AwN4GlwhsrllCcZxpA584cpYwgX2L/PQY4GP2UI=;
	h=To:Subject:From:Date:From;
	b=IP0VFbmHGquD9xM85OEN0/7WcOmb2WCPXhUO6y9vevvvpbGjQ/mtRrKtbN52SyRFN
	 3itxKy75+2A1oM5vssTzvN4Mj/clLP7Hg4lEfLeJiTsBWA7udIorB8XjB2RsusB1mm
	 eq8ZkdH186GmhVC57rj1r91jRmJCx3hra7fgRtalg5bts1CikluYRBLiKOe4+4FMII
	 bSARbuV6drgCeTNpytdum+X0T/asYtl2CFY0HR/R45rAzXjMdY3ez4r6JxQYSv8cmt
	 +Q7Nb7PD70BnbT4D45FWr8XaCZMxxXArLeMHdy/vQxeyt1ji5ClI8SFN1wHHg7gkCV
	 21Xvh2GEE9Rdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90504D2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176812583358.2538.15075069834246820918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6270145fba14dda00294ddb5a7f8703ead86d0b8b8601fda2f8d41adf45fafaa
Date: Sun, 11 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768125833
