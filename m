Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F7C207A1F
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736501754; cv=none; b=JEFVB5E2KXMJpJGLJYuT1WdFyclw8SAsk//TJJj5Jp/O3wxz0/HZx3cEEOjK85z6c64UiEsH+6BqMo3mk0KTsW37llk4+YjlhHTXaIyRijXmiAL19NMTPBkpQWgW7OQYoQRLl6J1sfVdLcRXpQuQrc66MmWYDhaEcaMSh+taxeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736501754; c=relaxed/simple;
	bh=xgc2aaF89yOzJ0o7ipNI1UO4htpPMQLnNnGbcqH7WB0=;
	h=To:Subject:From:Message-Id:Date; b=kvrTvflTXi9fjyVEya4aVIYHguef6W2LkVU8lWdId5PNfLaOZ6CRH1C0u9s/q0LRkhVhf4EyKKag0hZrh5+TjecHELntvLkWrdSRs4mClJYvRn6YGFE9fRObmevFkAaOsuINY/g6Q6kA8nvjE40m9Y2+fqzvycfz3embzTEiDcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOPlXyAb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOPlXyAb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DE3C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736501753;
	bh=xgc2aaF89yOzJ0o7ipNI1UO4htpPMQLnNnGbcqH7WB0=;
	h=To:Subject:From:Date:From;
	b=XOPlXyAbUvcN4+ADOwLHAvEH8l6FbR816DYX8lE2lDNhTZQTCzh2c2Qz15uPJQYL7
	 evFBCSFwK4hT9cRPTughh63hLkcbd+LPQMJvrwcGTox99Woc1wks9ZMutop7hR8dPG
	 IOZMm4JgDEQ/oLaYkZTdnROc9hXC8ZSlfcUiikDPd81qb085KaYKpnOG6pJb018bqn
	 qnjnOnZp97X3X51jV3MzZcKPixxUZu/BQIGJGM7u9kY1Tpay92D3fG38Rl2Z32lS+W
	 J7OGv6CC2LVODHOf5uCNZ81KEdoTprzATL9fCu2DfwzZfwgK3i3ffewlg5ArOspqlY
	 QybjoQCFm2zAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D3AE7719C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173650175360.7586.8714193994808655530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9afbcc9dde666ee718f0ef1afcc5ca06c25a1e97466343c837f94ef3eb5f59e
Date: Fri, 10 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736501753
