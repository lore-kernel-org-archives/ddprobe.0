Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D1A370D62
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 08:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782637114; cv=none; b=f1fclsIcXkRaI1j4/jNGT4+6vn44Al0UN9MJNXIayHIHMSVU8pa8p2SJrLV6E4dTe+bCfnN8EJIKfRS5SeYJUoid2mpkM8fnrsbrejFtHxJHaA3llwsRf96V5cfqrX5Sn0k1+NvsfesnuH3OIlm/bAVfaOU4HmUOL2KzcweVknw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782637114; c=relaxed/simple;
	bh=NkGq8ou+PA5HMBQLsKPo+jGE6Xwf0wX0HonJBoup608=;
	h=To:Subject:From:Message-Id:Date; b=VE/8CoW3MKkTtEbgZMRjuCpxTefE9jJoy2/1zUbiDNnrWfqgTuqBvSUehJzT/8oT1yugylF+6FIdhqNAHfRTb+jwXiQ4iuDL4vCGK8OfpR3e0cxuSLnv54HZWwIIdQlqy4NSNs1/n+8V9FA8lJnzdpCTyPyj/Ru41X+e9vtRNpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJD6aNlz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJD6aNlz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF87C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782637113;
	bh=NkGq8ou+PA5HMBQLsKPo+jGE6Xwf0wX0HonJBoup608=;
	h=To:Subject:From:Date:From;
	b=tJD6aNlzp4eXkEWnbiJQjfYITwgVf7co2olxsyPXE65TYFZCO/+nA6DamvVf+Hw5X
	 2w+8lYFh1ZrheBT19ZCF4YShkDbBv9ln5vA+/8YjIykuIIYKtxy70z2WncDEV6mKrQ
	 RqIHEvxHbJg48HcWXSgKE2S/048ka6gV5bJTb3cbXjv9qmVCGo47MvR150hvGaBTVq
	 xlyGWaoqn/PR/LdJeMKDmigzjo1PPparjvepLYGoJNw2WQd9TcvCprfiXFGb38JZ31
	 mgY9B04g2eR0bB9nppgHQhR7cyoLsbtV7Q+dRuumUu1EA8DBFGr7yOwMwJgqp33289
	 qzYKBmwYleuxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB0DC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178263711368.25248.15163313751164558341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 326aaa78ea2acdaa9fe9e3aea5921a55589eff381891b75175702e5f31d2e1f8
Date: Sun, 28 Jun 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782637113
