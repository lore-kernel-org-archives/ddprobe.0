Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8821E528
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 16:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721148923; cv=none; b=ctUe3smAfklu6cDSXHTAqATp0yx7f8TkrtXBmsidv9KObcrrjGvfxq/vJ1JUpxlWHyPhh0hrDrCGro4hkX6GA8UmAmti57NqywHRbC6ZUHpMeg4ZVWx56t3QLwwSQBXbLAYQpmGxerInppU2aWxEsn9TwHYiwQoqynp/CR9r2ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721148923; c=relaxed/simple;
	bh=l18C3Nbc/69h19lllmrDI87TLKhRAliKpSYIs3q9bPo=;
	h=To:Subject:From:Message-Id:Date; b=X+faUmBQRTCSiUcm6J2HQsT1lygGLByjptsAOqnAHrVFO73H9FVj0wOaxndKmzekQUf/2ZKrM4mZ+bbKOtE4pLjRNtVFM9ZWxaIvBf2hkLEG4I0re4GIalMI28iRK5l5uIovFB7e5zJGRoEFkrWj1l+ZATmteu9l0HVEfTrZazI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojjiTdPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojjiTdPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15ACC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 16:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721148922;
	bh=l18C3Nbc/69h19lllmrDI87TLKhRAliKpSYIs3q9bPo=;
	h=To:Subject:From:Date:From;
	b=ojjiTdPyJmtlhMTqbLhr/XCWQj32mvHiYxreey92xruEgLYfqv5xYumQeyQv2oNV8
	 rtXU+COh7miKOr5owD6/cqSWYix3UCycxUTflQ0SLrUVdMfXna/+oObb1D8pcjRjeX
	 i9dZxWrFDORYi5Bep7ZaXkzy6iufwYlFa4hh6ws6kOY6QpMyqrgg/8Z1BmmadUDCEW
	 nyV1bYq1FwfYM+Yf+KcFvFEwLptvNF7BW76nChUGZF04OZerUD38ZEmSDGDxX4H/fd
	 PtMray13SlG+Qy1ZFnHww5dZoz10WEOXDkVPBXdQ1Y/xIFKO59zkX2WfCAcBwemVQy
	 Geir7Y3OSDUBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD707C3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 16:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172114892276.17764.10718850777637735792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf76b176f2b031982715e0808a85f54289550dc23e2ee1920800fd5f5f5a48c6
Date: Tue, 16 Jul 2024 16:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721148922
