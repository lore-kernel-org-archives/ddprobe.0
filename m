Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3792741B6
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764832374; cv=none; b=jTTu9IxwZjMJSsAq6Ter6F4ELnibV4VgCWWIp2EoUfbkOOpSf+U4Bw+ifU4dJno5n/8l1l16epxxobO0Nc8OTiRObMhnRPYKRFIkkLGrOLGFB24OrQYA3j3cILwjnW3zhy9zarHLbzKap3lsM9vvWMgTxSrGOPDGV5lNKCD/C8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764832374; c=relaxed/simple;
	bh=VTiqs9RhbL24IYkLLjmr3Mt7xorZC1l5frkDbGVa6JE=;
	h=To:Subject:From:Message-Id:Date; b=U2TCHVxc9Nk7mPF86ABYAwSN/U5y4tOMJYtRIJnBRli0Ia2C7rtWeDpfSuA0zJ/cTeJJcG/HmF+KbNB+PPqLuSR8NvscjQrflQZZzOrjYwzwMA+8XZtETmJp5baobbU+CAOS4MCR1sDQECbwRMqaot3pJdSKx6/ZhcCQPMUyh3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8EyhrZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8EyhrZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A554CC113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764832373;
	bh=VTiqs9RhbL24IYkLLjmr3Mt7xorZC1l5frkDbGVa6JE=;
	h=To:Subject:From:Date:From;
	b=g8EyhrZQFBSby5/OM468mvyqijRHsUP+fpeJWvi44vl5PFAI3IPA7NTdVwVCl2fmr
	 3mT20dX2/qotpVd1wUetefpAym/IRytHB72RnXIor6Io2W3+9B0CvAGFa34I4pF3+i
	 lXh5cIqmitIPeVdbhuJP1jQgbSmZ3R9SVA1hk2mJieG0uFF2GS1ul930rnrzMMNCgf
	 bz+jOXtZkmKtv+XUPNm93FCypS+HkxAHWyAYU4STJth5vGyuQN33tNYClep1+iWMxn
	 9/aYKoEdy6E3iLN39ku7vpGKfXJzchOgp3DFDHCwY3hrnBJS+JlF7FrcRD62+TNPmo
	 62k6w/FclS54w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E09D1D87C
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176483237358.10667.17586921989590154442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f82cb801dbe8cc3a3b5256fef9de77ccc151724e29d46dbdb22c0683cf4f82f
Date: Thu, 04 Dec 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764832373
