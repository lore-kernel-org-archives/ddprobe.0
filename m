Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D1C2E54DC
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751543396; cv=none; b=o5Ap/bIQL2x5qQHNN5weM3JdaU7bNHBJhynIZjsTrRAh+YuLt8wQdgq8A8nyH06qeftSFNdwfxhZ2T7I/tBKHHeYFrHkNRnnsBEusHM8XYOWW18s/eHgosipdGQ77IMKtB1Rue85n6c3+8Fw8UY1kvzlhNhuErp0DVHPRUkLzh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751543396; c=relaxed/simple;
	bh=0ykl+gUvvbzAGp6TMe6MkUbVVHa+GQEBhz5tpK31ACE=;
	h=To:Subject:From:Message-Id:Date; b=OXJrJ5ltJdhNMpwj01JYVf3MYJ9cb3qjTpwu6MRvi88aKDHj7G1JQeLB3MjFYXik+jS4/2lfjP6VUP2d19Cp1iQYzfyi4ajjezsVXXw3wEegngzUk3sv31wxcoyY8o9EcGGKmBJyNaaykIWwiJaXOEQZqXm4whP5d7b5YktDCTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgUNAiPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgUNAiPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFCEC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751543393;
	bh=0ykl+gUvvbzAGp6TMe6MkUbVVHa+GQEBhz5tpK31ACE=;
	h=To:Subject:From:Date:From;
	b=kgUNAiPV3XRHwwE0XT3wwQIXXtx3xYYvqt+a9RlqxksHyhAoqTq1bt5h0WA2rBWD4
	 dS4IIJ5YB9SakrUrqPxhlsBOp0MEnwDHxgwO8vcOHkemGSpbVdMG4NzzQKz1Uf3YPY
	 tsvyIvcHsdM/jbaerwQFkVvFZ3QEkwx2MUzW3vr/2defgVvChH5ePFQZRSHfbbYulU
	 0dTMNYEzse5ttyhWxbOwWy34XFu8CNHiPBmZXkBQzqitdRfQpayxz2wMtWtPNyI9Ge
	 VUc/D99AFLF+818PylqgnAkEb8Qrpm+h8e0DYnBJg/KQsXckWs77FsyuvDT5PDdRqL
	 mkFNhQfxb4SgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F442C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175154339357.23364.5961944433880075641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3da72d8d728731b37f2d3a9833fb1d834b7e42cd315f1fcbf733b7d2fced64
Date: Thu, 03 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751543393
