Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5D621E3C3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729033554; cv=none; b=qTQ4X1HNmUCxvR2P2HWzBzwCxP83+rBOkvNNMLSJI3YkIq3VLuGK8mHiZg68Rwpo6Fr7PCmlBCADCKArvXHTbJHTD+qbQXWgvjC2jwaCrhCkIiC15WQYRA7Whu39vAFlwH6+U4Y6EArjFI8LYzTx3nkfshR/HJHNXKaaFHiftvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729033554; c=relaxed/simple;
	bh=R0SYBrLcEJcEHzu4O4LZrlt8asP7emIJrEx6UfVzPL4=;
	h=To:Subject:From:Message-Id:Date; b=Mp4J7pN2XCRXfnEdCd0UHyYqAdtR2uTt15gqYd8NHSF5SppJgRNuz0llLWXaYCRBuc38koVTpbvJsr6/8RFsxJQtxHdZOSmT++NUPk7I45oF0CdHJUXB5dxKMF6LwiBZQ9M7mWIvXPhDbgZQpi8t7K6dWynR2Y9fxQlX5uwg6ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ruLmqfWu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ruLmqfWu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF833C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729033553;
	bh=R0SYBrLcEJcEHzu4O4LZrlt8asP7emIJrEx6UfVzPL4=;
	h=To:Subject:From:Date:From;
	b=ruLmqfWuc6P2kTZTmWB0K6nv4aLNr/y3qo2xklvMY3cZ4IbpGySoeGrDoHDfiQ1EX
	 /4CyzYIXSPzDd1b7u1i3E4qxyZukYDM5cmqb8isarMR28hBx6nNPajbmVYnWSZ6fO1
	 6ZNSvBpMT5o+sssOXZdmMQnKMb3mWst8e4t1f7l82jH+YXxJ66zc8kYz50wOnNgHiB
	 D7VxfOuOzJPNw13d+U1G21oI/vEoIaNc/uAmc2dyQYW5E1XvNGm/fIrp0pIk+B2g95
	 1k4/faC6JpgtyGwLi3+vbP8L4ysiw0b2+efBlgU8OVxzQpOp8zO3TNlOEv40R7mNEP
	 WapqfBvf9XlRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B35D20686
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172903355360.7522.18134009087390840819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b18629e50bd0160218bea05807bc6db21cb0f34a05a5dc3794959c47ffe860fa
Date: Tue, 15 Oct 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729033553
