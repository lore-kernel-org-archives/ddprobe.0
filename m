Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAA23A1E8A
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767000234; cv=none; b=fJ4+chf9cnI8mU/TPc0YY13+zP7RgcSPBiEjKNEXRW5PzPMdRXvpNUveFxcscrvpAeEFr8J+uOW9QPxzQ6NaiVlQCIWMuIkqcAK4+ky+KFQ1sQCLYLe9Qg3N0E+7eJUC1xryFdLEbFosCM7YoXynqYV57e1lkRlqeb6nMsgTVM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767000234; c=relaxed/simple;
	bh=QJK61a1UKl42e3O66vyS3z4HXMv8Fp2pWdy/88GVyeg=;
	h=To:Subject:From:Message-Id:Date; b=te5bClqoptereiDtgO+Cg2I0SSEnTnpIHDZo9emNVDuv7Y39eNgduPT0GAHEGhMsq7qzYhb0Rj9H8CKMaHZQv7tz1zHT7LyVYKYPDoj0aDk/ZZ/dVpQbK0FhSkJaOi/6si+6sFTO60G5mmhC7LcsxZU6Eq1gCBe9bRE+MTrDR5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umXSsUUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umXSsUUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E40C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767000233;
	bh=QJK61a1UKl42e3O66vyS3z4HXMv8Fp2pWdy/88GVyeg=;
	h=To:Subject:From:Date:From;
	b=umXSsUUt0uuLyEmzdPMDm6ceSYKrCfb8BjiszTlsBsZMI+mufTrQZQL+/0w4/OcyT
	 vK6dxrINPL8Vb23Cz7cYCuvtaCNZkrJia1pECcmEPDBUARjCR4NoQ6Cp7+xOo+ikhm
	 73N03KF8WIDdfoKImsQxRRV9MKtDTcE92pSJM6jgRgDNXVXprvr9/E+uLHzgzT1DwZ
	 aYLEqyR1YcvOc8iiGy9rhAZGh/jKJ9Osr0Au0RtZGdxBIZZxrQjz7/685FpQDxx0DG
	 NaaBVgXc579sDklQ3Hb2cSAmR0rNJyrGZjnA98bvGpKEDclsfPz27HoeKlNB3iyLnO
	 j8T0r3OVb7Bkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD43D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176700023360.22427.17457683603771547297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22c746ff7c85d87890382907d32b8d3532433f3a9855aa8afe2f8b65fcb63560
Date: Mon, 29 Dec 2025 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767000233
