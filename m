Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA993FB04C
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772470494; cv=none; b=u6rsBCcqXo4ErHZ5DmQmaRaFwnlNrrK/6tNTnGMOW5RWQXavAr0V2akFmxP8epqCt+dL/bccq7p/X0bK5ABDirvKCNWx2TJxW/jHjAxXtBPNNNckQlui63UEZIo8qH/em1FQOfyHx2DRa1FLYrMcq6u/FqD8raH0m0N9V10wqfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772470494; c=relaxed/simple;
	bh=SbGTfGzIXGhxlfQ1glgTXhiWbGZ/70w1shqXOp2zg+g=;
	h=To:Subject:From:Message-Id:Date; b=jLKqnLMj6P5JODPKbBoL8dgHYFHfdEvJ4n1ievJOuw3Y2HJU+vQaTcB2obX8DQt3F64lazwbCA+M76UgFYpaXC/d+aRkgWIyjg2UpJ0akK5zz3YKf8adLJ5fX0pUVMr6sQ92e/uKPz9MiHbZJcRn2l0+YtqstZXrv1y5AQPKpJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUn8m1LQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUn8m1LQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC337C2BC86
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772470493;
	bh=SbGTfGzIXGhxlfQ1glgTXhiWbGZ/70w1shqXOp2zg+g=;
	h=To:Subject:From:Date:From;
	b=jUn8m1LQfKSeHIt3I8U1iH3Jng4LrT8l/C5S7tZxtbQudGi73V5FFqp6FrO62amEX
	 JjUS5+/xtFbfXS47mziXQmE5Q+k3uL7yjhR0YQUB3eW/bNM4l6M+vPgrsXwf2xKeL2
	 Fmg3f9REFnlFYVdV4v/wuHNL9RDC/7gk+42hpZIhsGf+5KNMwZLudEMxN9q4XUNaS+
	 /9j+E2M5KegWAWK9Zqlfc8Bs/omwsF0daYlxmRySYETwouc91Mj81HvKJ/trsZrBFr
	 cFVcgt1r2DhXw1+HwA7QETR/t+Z6AY9EM3LXXP4TSKUY4svux0uZtdmh7+tbuPWQsy
	 XwDBsGVtM4dYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963A2E9B37F
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177247049360.19192.15842293420654473475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c6ee0d2f4ed1f671a19cdea3cdafcbbd3d5c32f81ba67e15b4ddcba6cb8a37e
Date: Mon, 02 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772470493
