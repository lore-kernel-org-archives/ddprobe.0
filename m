Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1609D30F54B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 08:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780561474; cv=none; b=c4YEHAvprJo/or81r+rUkavpqsZlmk389/xCJ83hea+Kx6uc545cAIwOmD2O9GlQfyJa+gV0Hn9woJAKyF9B5zZQ+AH/sSDlZc+QDGBU+vtAQzlZGEUu0hutRovLV86jopwOQRWfU4h2JK1Gps2UfYglTVhjIcbr7FTq5yWk+S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780561474; c=relaxed/simple;
	bh=dQambiqHcTHksLXbVvXGQFCIHtLSAJRA+bPvp+je8iw=;
	h=To:Subject:From:Message-Id:Date; b=e8xRJhqz5u+sedGLmN6B14eVawzvpk57ndaSQIW7nwD7bPeYbxErA8e4AmdfPiH0d1MfDI3FDySo7hDSmhba8LBBOgxhj8/JJ5oncTC7GW0aRk7AlgBLm72Oy9mlWXwuiSw82TFlXgGV3ZTqqi92+jkRi9lxBw1Lh38Qdvfz4IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGKAKlSl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGKAKlSl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29FAC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 08:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780561473;
	bh=dQambiqHcTHksLXbVvXGQFCIHtLSAJRA+bPvp+je8iw=;
	h=To:Subject:From:Date:From;
	b=AGKAKlSlOHnC9MtdMv2t1+7zuCw4xH7gA900VLevWVdcwxEyvytry0IBAo2pWfwVi
	 SE4JdtRnG2PQ9nhZeT1ImRy/up831bYI7xgNO1BGjREGzK2EjIonGppZFCRhSr6ol7
	 uS+MGyPxH0CvJQkxmjaJhJSUKaoiUMhN1GQeKjbEWNOjFU8idaw6wHDBVUz4ViBSKx
	 9xlG+t0RoKElsiena28rPayqaKn5oc+bc8SPuS23oeBjSW0eDWB1Qtj6dbHhetoaY9
	 Vg4LbguhIp850ZhC8YrZfb/lWSZoDCJY5ijAsJ7UT0hBs09AaMKi2v1ar7q1V3zvjW
	 HdFJjNZ4ORULQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0D7CD6E68
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 08:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178056147368.10883.5479605849329912001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddcbe927e71eead38af0902c6ac46fc5e4cfa2090a0d2caf47d240bde925c3c7
Date: Thu, 04 Jun 2026 08:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780561473
