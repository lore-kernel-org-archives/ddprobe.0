Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118DC8F5B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769492034; cv=none; b=CYKIUK+zKaWCJm+RF9bu4DKEqHSK6P4RizgwFY75nmgi3tMpiZK+npmokVvd8KIbJ6w7nCWeu71bmFTtbgLjvmil5qzC3KM6q47dN3sFm0+ybAKU778zD46uSNQ4R96xTFiByfFgm921ajL2yONi9aG1JdIo0TYImixQaS9rl6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769492034; c=relaxed/simple;
	bh=a0jhd6ohN52KF7F1xMKAVtHigBKDDrcw+NdqL9hT0RA=;
	h=To:Subject:From:Message-Id:Date; b=O8MoH2E6KlFxJsfBF+XjXKbLz772wi0N9XVyyt72rbPXmgntF7E/Ricnn7Xxwzk8Bgan+MDeotRMkE8hzMGCwaYqSdMQVV6ZwSrXrmgiDqFzlMGIBZWrShjrx25/cO3mVGHo8frzMMEoHKY9Xipf7s+YwW7Uj1OesiLDgWriUog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7tdBjJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7tdBjJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A743AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769492033;
	bh=a0jhd6ohN52KF7F1xMKAVtHigBKDDrcw+NdqL9hT0RA=;
	h=To:Subject:From:Date:From;
	b=t7tdBjJHow09Bs5j1TSJSpOwGWiNTYUTh4QFIp+Ef2tmOpSDT8WGYEerC2p7I9mJg
	 5W0pwV79MX6dDI1+RBNNTRN26uLWQKY/0qaUJrsergyO1GXPV8+REIyxwQWTEMIU05
	 5Hsi7+bduGfpUtoIwKudLhiu8EmsMVNxFVtnVcGme/EemxVcr7DpRWV5V2uzyiNNKU
	 jpnRD02p1+fFxG0V6ZO2Xz6BpfbtpghVQapokRlh2dLT2Kzb2BmSBdMLlurfUrs2Ru
	 6kbwk7u46+I+0DK9LKT7StV51YLJYByX8NAapPknKdjaLZxe6dShzy0TcsHdio6rgQ
	 t4KLpG6vxLurA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954C2D2593A
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176949203360.9303.4067699129409076395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e87914fd78837007e49b1a76a0c1dcec9fa5d0400ac0fb777d4ad1d55bb8b4
Date: Tue, 27 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769492033
