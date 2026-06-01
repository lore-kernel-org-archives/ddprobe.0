Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FD929D26E
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 06:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780295674; cv=none; b=QcuSEbg0gSdmSM4DTh1WQ3/U83JEM8tLDMyHH8vgqNh2TvRhUe7Lyo0Pw3BibWgNDWjOSnUEE1l52N02O9f1yKMqakHIYZQr/9JLxaBPh2hWyA4pJzMA4CDGP/kh/gR+h3FoBpnnVDS7rUVCjet8F1HB9AM8MKGrZUFfjYi574s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780295674; c=relaxed/simple;
	bh=fQSs01pCBk2K5rLaxQe08fIYXjyjqiD4Ab0qCvi0dHk=;
	h=To:Subject:From:Message-Id:Date; b=m7Wb/I7TIgc6ankpeHbKc1/vSFBoVpfJXMmLbBZnN0TbgjclmCWxlr4q5wafCjttaJ7IjTNmTntJR1HOa+KZRf56ScI67JAQzSsEwlIBMljRQwpTf4KtffH5TwoLLjTpWxQ7j++mxROopLw+9jmiij0+RFL9IuuovU7F4L8fFIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IY1uoHb8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IY1uoHb8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72AEC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 06:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780295673;
	bh=fQSs01pCBk2K5rLaxQe08fIYXjyjqiD4Ab0qCvi0dHk=;
	h=To:Subject:From:Date:From;
	b=IY1uoHb8Fdh/fZG7Fi4HurX0UqVQHSZpzrfcK8U5ftfPixC5AUmSDV2DZgYWXNaqW
	 zKqSup/lMuaXTsuLblyelX7aW6NEeb2i89zdhdZN8nXcHhNLSbMJjMqy7Z4Xj1FZN0
	 luZB80sEzC6YkMzfCavEyDe94EW48xx6EUN78aPDTew0EnoySItqFBeTL6QVN37ybl
	 uIhy5Gn1XrgA7yBw1Q27QNbyrBC5OthrjzCvLWUUvifQiWnUgrQGP5e/aD5lVGYEOO
	 iZrvFrZqdtMQMJgtq9L9p1H0CdxH9BQYRERtXAocEzt6isXWH5xXPB+fYQ953RNF7f
	 Gm+NlxuZUsu6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDC6CD6E4C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 06:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178029567369.14938.7185201390153066170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f0a2be87c8c7b906bec148d665c230a4947efc8c3666a98847459074c760ac7
Date: Mon, 01 Jun 2026 06:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780295673
