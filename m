Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750E21E86E
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 07:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716968063; cv=none; b=OG91Lz3RK5ptO1J+k+JdDWJR5QNBqN3WP2uWLfeEA0tv7iP/5ms8539U6gCq6GUD8xBi04ZbcZzybbgvLk0c7vO6c8dI0oFXSwQ8nxDTeuNXJfee8W6TKT9WSp4eUpgoFeob8ON0JBvxKiwFxt3Puy9YM5Ydw7dgNEc4/MLw0qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716968063; c=relaxed/simple;
	bh=YkH8Ys0rKO/rQ0fIar9PJt4K/8pecnGkyqHrm53R0SI=;
	h=To:Subject:From:Message-Id:Date; b=COtbAINVp/B2TG7A6/FGs0WXkcDplWPTRMSb8+bCw4dGKP2Cd61WeYPJCLvKL1u0xRCxgONiesziPhjp5bdSsjseNDIozAf6P358ZJ4mhMDARHtspo/ahyVX1ajaCyCRoc6IT49PDxyT261rdAKtA3vtXqUUGGLSVDyOm9DiMaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E97Y4liv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E97Y4liv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09661C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 07:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716968063;
	bh=YkH8Ys0rKO/rQ0fIar9PJt4K/8pecnGkyqHrm53R0SI=;
	h=To:Subject:From:Date:From;
	b=E97Y4livpXoBerCzdP7cCCnuc6+3WeB6bGoh4Pbkt97ow1sfivN7s/9wS7LWkFuXJ
	 wKI4JEfvGm0sYFFT29ph7pyT9AUgTUVnOdRxEf95RXkbfRN2wZyCtQ4sT8VbEoojuN
	 XvnBVnAmmT4pU2X3nLCvsiUz93ovxYSryL5Kc7OhgOtqHGnprrOpRf+fkJycJ9Uqmo
	 V1KW39ReUozpvZJYikucjw+pkIO/1oMf7BxA8ZKAzuBdJDlXRY6/mXSdPZls2wKt9O
	 jJfe/5kURqXXb0/AfpMwCh+RfxpQL5PLQGM9duwRcmnFGg74OODuIVFdHDfeJvUP+N
	 5XXjTu4YZJ6Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC24DC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 07:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171696806280.16458.11648953450554572936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89146517c6b731231312d9d85d98166e3b514ca2fcab0cca6c6e0818117a0e56
Date: Wed, 29 May 2024 07:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716968062
