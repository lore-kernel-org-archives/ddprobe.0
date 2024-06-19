Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6515C2139B1
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 08:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718786963; cv=none; b=EQIH1FpT9hs03XeVU8BARQ3aYZUn/YR4slKMPD7jP2STqSdCGlqyESkoIU6gjlZGSc55jxxv0LEuBEpWo20DmtLfnehJaums+Kl5pLQF01v55SfywdxApnY2F1PMKTP/qf+0G3iDfZlzdS0B8U0Diwm908p9prANZqmYsjBTq4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718786963; c=relaxed/simple;
	bh=HvPBEkl+LNiea8qir9we+dlpF8nsE3fyVrS4I9xtq8Y=;
	h=To:Subject:From:Message-Id:Date; b=mcabEvXO4VsYt3WmNcwZ8Tmlr/pMr0vyV+3sstF31/30ePWZt4zRsyKgGxeYWNqzxnvYvN14BzMSfv0Z0UkMRA5mKxO7fBUaR49fYeXcP9ZtZz1rUa83LcmEVyVdxDIOJTZRVC5VIv4FzEuoFtvOTE9uCG65/IY3gmELckh8DFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P16fNhWX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P16fNhWX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D877DC4AF1A
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 08:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718786962;
	bh=HvPBEkl+LNiea8qir9we+dlpF8nsE3fyVrS4I9xtq8Y=;
	h=To:Subject:From:Date:From;
	b=P16fNhWXg2Boq9wXVzPaQQGmZtn5i8DIhecgNCoImJZSbZKS/gGhz9qqBSiDjVY2T
	 4txAMvAFrhromrHmxusHOACzUprMzEQ9K5JKAyXQslZP+lFzahQTvl0w6rZxD0YhC5
	 vHvsRbKH+jD/BYXm6AuAModfbzyP5wGx5P/5Nd++9Vh3E1mE48cWSezIzPz0BwQSFf
	 gw9mO86lwD3m93YIuelC7PCRCIbimPRrwu69SkSfBvOdfGLxQE61TkpPpnLLyVc/YP
	 eHZvbbQSx0JGUpzaZxQPxfdxuLWpaQO0qVRhzpH2smxdsMopIlzVBTD25aHFhZelNA
	 /n6+zUhcSOTWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0ED5C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 08:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171878696278.5575.15072936094985687975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7d8f9aa98cc8ac20629f6355595350e235de817c47fc6cc58404e2541262cf1
Date: Wed, 19 Jun 2024 08:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718786962
