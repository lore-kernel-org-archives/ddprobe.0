Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318FC1F1506
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 17:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740245334; cv=none; b=fe0gr/9yV6cHMUs3XgoMKdT2GPv7LMPZ/9irjIYkqadoX50YV9Ta9/R1h9Imm+gNQXlbOd2YoKwoV7XIH4ZY2IwCX6g4fyUHJh10LG13jjn4uunjX4eNwTx7Zuhv/pRdvEmsV1jLpXlTfqidjXoqiNDY0nEUbo9Jnzdsp2FqtyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740245334; c=relaxed/simple;
	bh=h02GpLIDrswHSEchZUyjGCmC2t0p8+G1B6cIhNHyMZM=;
	h=To:Subject:From:Message-Id:Date; b=QiDPVhzrKpS29+5yPP27YFhig2e/rSQd4E3o/rSmdszNTgN+awfFrsU5ZoJ3OKaQr+5xsS+Nz/DUQ5B5eZ/jBkK8TRCes5/SCT2X/eC7rqnF17P9Zcx4UxZslrSCOAXRK+KfWZvOzdymTKRwkgQa/hBpWwjzDzsNUGOmyRc+VcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uguPKiiW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uguPKiiW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A70C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 17:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740245333;
	bh=h02GpLIDrswHSEchZUyjGCmC2t0p8+G1B6cIhNHyMZM=;
	h=To:Subject:From:Date:From;
	b=uguPKiiWgwS86Z8SsiDGmLSKhxxdQvBMXi5P/QwRUIKYxKjwA2/Ehdz4FZuvwYVsb
	 G4Vxn4OUBHmFIhTmBu96Ct/uwmMqGxGMTnKigEZ0NJNFpl75dg97FHV4GVeI+dq1fw
	 eqY49GzIxTjUWSjH4LQMwwg4R3nzhSDAocEblQfxtyyfje9UvFEiaelGzgtBnU7RXd
	 15Vqh1z6CAlTfXioFiRidIKsNm3DofDhUN3E9gFdVjWMyYCGXuqH7tlnTvopxnKuae
	 +1yxp1Azm7NbDnYIi65kHM2ole+daue+tsfwl89WZLcNJKKr2nAKc0U+fCfJcRQ0Dk
	 xT5jvoVWf3BYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932C5C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 17:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174024533359.16808.1700353135699664251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bfcfe53ad4fc0cc462c617974f6e267175a3cdb65c83e5ff5a5decfb02fad0e
Date: Sat, 22 Feb 2025 17:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740245333
