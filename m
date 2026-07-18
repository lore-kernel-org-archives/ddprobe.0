Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771C535838F
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784368114; cv=none; b=FbYBbdojAORVLe2yb+ZkXxqJuS+q0nrViK6G5AAorrISHOZ6T5RllR/RJ0tm9oCfCNvLyAKe2Q0baw/yUr51Dt8DfMRt5H5ZcnrFsBPOFZqjZpzm0LvGasq9Mjj/57PEcbmqTQFc2LqazIBzUD/mnf4oCEx0tyMeQ2D4MHjDWRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784368114; c=relaxed/simple;
	bh=Z3CGCaqwDP7BIIvQ9fWMzYsbyttmklDclQcphmygYaw=;
	h=To:Subject:From:Message-Id:Date; b=d9Xtviw1gelWLMSiZViVnTOrCpbwNSaJKvWOOREWASH4/NWnv0f/iDDpXKKUSUO3gAU++JF4qizrJZ5keNgX4wa3kZZDDqFuY2ltVTptZ7addda+jUczSrKuHgoTyzt9rJSllZktdph5XYDY6WRE3MUwoDxBrDqbBkN5uQBLP4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ug44qndh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ug44qndh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4612C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784368113;
	bh=Z3CGCaqwDP7BIIvQ9fWMzYsbyttmklDclQcphmygYaw=;
	h=To:Subject:From:Date:From;
	b=Ug44qndhBLY+qamYSCmjR2mu78HQzCvRBGOXzZSKm8dHeIC4mSvhNM5r94m0KsmU3
	 iaWX2kjAOcONajbw54dcGraRK1jZ11Jej9ohFKxkTlY6w03rchqsPfr8X0SXtqq64u
	 zWCYwuImUJmFkNWmO9zNka2L6IJM6+0L7W1fTpZcQFYOu2y+z1mNaWLxxXbVjYfauo
	 mFUSjkPGezsSPmjaCEb3pfMeYehGXYndrHyFv9Qs0DuxrrY70fji9IKlyZdEWzbkd/
	 LDX2g52wroWNcObxTYss/dudzTQG/KKTKpfCah5XQ4W3BpKtteQj81iT03Tac45YEu
	 4qjml+SH1h8pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9AC2C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178436811372.5516.13575522987695862333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dc8a85fa823f03dc7c4b5e7a5672ab02cb096c087b7913c77d8fd4831e11aa8
Date: Sat, 18 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784368113
