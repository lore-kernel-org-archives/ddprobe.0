Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEBA3AFD01
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 18:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783364314; cv=none; b=Ai93TKvC4K4O7KUP/bpVEiwiItTk39Ef/SICFaCNyWXavqWRBappOIk2Wk1kL4zwihdbwIt62ZXGXOX1oMhLasyI+GyNl9MMWnUzNF4p7+fv2YF/VvAutjiIoUGeBEdzTubs9UX9EsgGBTr70ytV3EUwj4ZgHepJUEuiVzyjvqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783364314; c=relaxed/simple;
	bh=3ScDp1E8D+JW0mtCV1eM7SQXkJL+fk1YDAYyR2S6tnk=;
	h=To:Subject:From:Message-Id:Date; b=EQGdEefHdpn5GAg53HJ4s1+9RzymqGKXXt+D5dWVV1ZvkPjwfCElHyGxobxVgtTYHoTYB20IAEyIsCEsiqQ3gqan3qsBKWmnHgvJNBofCJbvtsMWRbko9WjbuHA8Qx4JpPQAGK+AEsOBxu11g21X8nNQhipmWw/TxEs/hYm/BJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnXfbPsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnXfbPsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEADC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783364313;
	bh=3ScDp1E8D+JW0mtCV1eM7SQXkJL+fk1YDAYyR2S6tnk=;
	h=To:Subject:From:Date:From;
	b=TnXfbPswavhzLbcuUB/xyGNpBU7JsC22Xl1ySHW43fKxZjcbYjlJvypmCGXd4xER2
	 D1n8d9AW85x9uG8/BGnvzi8264XfmpLdLM3UgaxpqYMgIJT+GXh2DsPrezRsZUKUkK
	 NSVXQXLGmgoaofublaViGiccgW9SCokGADBhVAQpbFQmMYKxK9gE3sU3c8fBFf/PRc
	 3++4+ePeqi5ey9yNoSp6BG0mWeHrvjPd+gpN5HD5ukzGf25kTGkIKSET+Ev7Waz6Zf
	 EG+bWM0u124iW5C1tWCzCi8pMp6hpAEooRAqxQrQhqMO5/Zx/u+4wROdM1C8+eS1jN
	 xt6piAGGtJv6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC710C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178336431369.27975.7161806006686996591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c4b88e1ee50fb265b2f593d44c8dde19379adab94a8233f6758752d9ce04b26
Date: Mon, 06 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783364313
