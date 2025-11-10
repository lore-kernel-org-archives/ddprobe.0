Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30A82E63C
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762772994; cv=none; b=s4o8mwq0SeaPsRlU+3bK8CFB1GXhXP312YD/X6jORE5mJO3pear5TOIe43B98hdfe20ENgB4bHenoGaJYKNqyEbo1EKT1wkJnE1nnN8YZqZxnALEZ4S9MQIWjyLBfRUai+zx1vYso3H1coZh0cVWap6btRRWc1YIj1l20UtAph4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762772994; c=relaxed/simple;
	bh=Ls69ieIQr6CZPZbrwEJmjnYV6cH5/xnEbEqWl4+SOEQ=;
	h=To:Subject:From:Message-Id:Date; b=pDJzYksafH63MTFT4O0OokIVxYNpD9SPZNGS5OUzyx9zjtnyFPDQ5s6+L86XiIGry6rh6/5JsQRyomeQg7VdvrLwQiXQj87H7JXD53Zk2uz+x/1ncoF/RaH5EI+YHdPAv8D4IRJckvojmbIGs6XRQdxZtDDMjl40SdQssPij2xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aND93yvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aND93yvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98F52C19422
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762772993;
	bh=Ls69ieIQr6CZPZbrwEJmjnYV6cH5/xnEbEqWl4+SOEQ=;
	h=To:Subject:From:Date:From;
	b=aND93yvpsEkHHMZhhtfph0mc5rx6Eqr4LFPruD8nm3UmJSdGQoxs6s3Cy0SvqDdDT
	 Rpk3M8wjAMeVTrD03X6969zqcc7gCUGjZYOHqbrq5j+0w+OhwolJrcC+ua7ZyuntUx
	 AHI3WNLzxNYNer3m0KcIgpr58445PcBh84ktiv5zuTfMaNrF0aBqkxKU1MzWf0fBDv
	 yw8ybPCniqv+yKisqqRXlo2tR8k3zZKDZ9MLJYaCOf8aJxLMc/OGSftRfWE1V3fnf8
	 xPPJMKAfckYDmABCwTzEN/qRJGD7aAD3iJ5Txh8NqLBMS7F5JaP2yL0gJOgz0xkODQ
	 bIRKI7AexB3VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E421CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176277299357.32625.11049260919463146667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a623368802beec615fbab1ac7c5853d4611796b2d99e215ffd19d1e53705cfa
Date: Mon, 10 Nov 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762772993
