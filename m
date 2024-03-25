Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC56130E38
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711362497; cv=none; b=m4ntvKsSQ/6cq3QCYBHCBBwDEhfzfwXCNyEy+IS5FTNIgntHr7d17p8rzsbAVzJCi76GhhZEZaG59oNv+fKZ9jK+ZNFgbA2OON9MzLPuJRiHzGpyliejX2xCxv35MRrwYnAL13Em/msUAeyjNVBkXlzu9ztmTYLLGV6I9/VpvqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711362497; c=relaxed/simple;
	bh=CVA7xoiiB+VSXumK5v4VHCgokWrPD69u6hAs8nVMA0A=;
	h=To:Subject:From:Message-Id:Date; b=pdZ6wTjodI0TFv0UjQtP1uvQW+gs8bM42p3+bhxQT2pZ7eERhCQGcMWHmmp4Mg0CDLelfMUXhIXzOLfwnw+RVHJ5AQ5J66sM73G7garBenzdfM6xCaIoVBulPv3YVpIg3tq2q2p/H0tdf8CGSCtvPwcquJ7tVykf+rIthR3tEbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNG+CSfh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNG+CSfh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87D4BC433F1
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711362496;
	bh=CVA7xoiiB+VSXumK5v4VHCgokWrPD69u6hAs8nVMA0A=;
	h=To:Subject:From:Date:From;
	b=qNG+CSfhh1pdIvTtzwAvpGVP/XKf1rxI9ZD4HoWryNYqZLdFcus1Mtoi5Pmu8IJFE
	 EtEQRKGSdJ5Ye0m4JWsziuqSm18/WwBmajmC8YcQgLMXc/ujd1yU0fRJNoOvVDer8f
	 zPNOD71k/jxrD7BtPFOj8nsSiyFe5tIed8PpzF7VAD/fKaBDCuvKhqErmi4d/19Ol8
	 bISNLlcAmA+GzXrvkxIO1dRLLeUCAfS1P5z2fT7BYApgk3dNN/4xX+L1btAuGEKPUs
	 w5iAX//yTr92bEn+t0nx3hJQRwptMx9nDsxo82/cQJ2A5nwxumOyMa/OpE+ghQgDfO
	 GGS80m6ZhQlXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7183BC54E64
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171136249645.8739.1691062659150842306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a98202fb7c3763fcadca87cbecb62533611e0030e453f8b61075e2421ac152
Date: Mon, 25 Mar 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711362496
