Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B55C346E75
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 02:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780971274; cv=none; b=SrOZfku++GOM9RzK2zggXppSscraMZuE73h0p1e4bT1CROik29OWfqZtYvc0bwa9qhDjfwyrUMcB/rZCJ9/HQG8UYSiDoMx8OQ1B4UjjiKgFFs+WqbYhKIBypgaL8sfoU2AgGbX3i786Dgodnx1p/dSytgxiAwE935oQNUBPc2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780971274; c=relaxed/simple;
	bh=hpHS9LtZZUFSPA3qO07NaJOMfftLL3Ftn/z4GAHrr5k=;
	h=To:Subject:From:Message-Id:Date; b=VQQHThPND4xwkOKAxMuZ7njJK/FjVmFIBnTeAkYKlR1u9zu9ToCadX8XNC4g+n8pcunn6VT+W7ohJlx+/g2yX0wBJ+VI/GOtNQgTPMtBMSYO+FHHRAS4MsQI0ghwsoEbChJP8kZxwQUKYF+moEtl4grWkRbNofIpjn3ATJMyRck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqL84hhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqL84hhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE1FC2BCB0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 02:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780971273;
	bh=hpHS9LtZZUFSPA3qO07NaJOMfftLL3Ftn/z4GAHrr5k=;
	h=To:Subject:From:Date:From;
	b=QqL84hheNjtp334TzruhGqRl9FUnh2VHedWdwkM0rWu9DXNR52x7T4Z1vAHKBtOai
	 Ymi+OeNBxX1NyjN1tKWjsgs+hi6tg6LNuSQPrsa59Emi4QD42VJSSs6RlouHIDclsT
	 0k3VB1b1KqTSzqyKmzId5zkAryw09ff//dpmKajOJBd/VULw6r9bEgu1yzM5BTQw9n
	 aRa7B6NA/1JEgmAWuzAsPSEI4jXWnc3CRH7EfW7bb+5FdH6rDRxMOY/6acc4ePRGiB
	 SQc9abu6cLIS6csnBCD6UsYEalwkUuw5h0rf/zjx4Go7qkMR3Lzg1jigM0xF7bfSFF
	 /Gq+Hkw2/70ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB27ACD8C9D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 02:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178097127371.20016.16052398338030445511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f17a2d36fe593e7f9ef00f451928e6b0b1880d75eda3926cd0feecd2bb66998
Date: Tue, 09 Jun 2026 02:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780971273
