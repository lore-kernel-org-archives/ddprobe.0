Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3376741B8D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 09:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791106836; cv=none; b=NzTN9W/N4w9o1/Ue90smvrVt0WJOUvAnc4CnCctZcptGcMjLOVRp2lPtngf4/svak1tzLYD7PVGhy6WO8mullr/9bzaipO1dbQtBum/EPUd7bXRUX7IAwNNDbBIl+ubxvJHAnHIPv3pcLgOAARe35YfZ73T6Wegrvtm5toBsD80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791106836; c=relaxed/simple;
	bh=T2slZF9gNdVmidp7EZggqjHX6tQQHNBO9NlZxvw66Og=;
	h=To:Subject:From:Message-Id:Date; b=NlEOSxI5DPPhzxRlaGb28tWWzBpL70Ty+UXxbHTVh0/ouuidptXlCRN8s+TENHSqe65ciwCwdHm4IU7UjdLlPcO6/1wXEqz1tkG1ysy/XjJvJUBfiqaTrjuZbXou5w3b5G9dHTwFMEuASUUHq2RMTCGbjekQL2z3J3+RxZ8MCIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIRsfQPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIRsfQPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17A4C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791106833;
	bh=T2slZF9gNdVmidp7EZggqjHX6tQQHNBO9NlZxvw66Og=;
	h=To:Subject:From:Date:From;
	b=dIRsfQPqKfmWBggQguqCLUNedPxIbWKI0rYU4Eo3dZ8FyUyqrSd6fYHby79+jtyhm
	 dbD3Bp5C2B6l3pSYsynY07Log1wfHcgy73tokMabZk47lf1hPyWsfw0AciqJRWiTzJ
	 +8kmNDJsP8wLDXB6rCkaSvVd4LvwtdV0t1QQgFx87ZYWH4dlKFNMBpq6UYMvwWkdeH
	 dqnWu0aowafGJ29lr+0IMQ+xV9hd3K/BIIKrLdXZfsWMGs7w66KYJUKbGkXKvaIZBA
	 o3NCxnAtnAW0zVbuhXQ9l51xHjfCnM8ChWkOn/pwuto0UGJjeFiaomTeYF6JmTjddd
	 OZCpBnpSjwXrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC809CA5FEC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179110683368.4461.1061043908351818613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf9475980ee5633b1a52d27260ae12c99cf9f77fe750789c5764910b82e9cfde
Date: Sun, 04 Oct 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791106833
