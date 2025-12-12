Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29429245019
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765570974; cv=none; b=CtK2FAzE5nU4zn3OgAYjWjOfzeVgbMdaiE7VTWpfPqIUw7HGNaiawr816xlWpZzvA+LPi6sRrJ/5rwabJ7F2T2Cdnwuc9Xa7KcsLtMc9KfEFnfVTO1lMvKj3Js2aIO9Tt9PLg0558zZnbmrkG5PjNK+nfC5tWxecuoBII6rAS6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765570974; c=relaxed/simple;
	bh=A4PGjMk/M0mCfejZbHfBOl7NGz2JCopZQJVBAj4SGIU=;
	h=To:Subject:From:Message-Id:Date; b=mu3ayDkXixyT9L8SsZxpy3ZUqhxmw2Vrwb3Qmc3/KTEKpHkAcJSjAaBORQcHnEVGInBMtL3yJc8ZIj9AN/qrj+2DMBaKMX44GTUusqKAQ+EbPhPRogX9CvZHZVDA0JvKQydTW2PaOPtPgoP68uHKrce9ac4STxtbnN7IvRiGHxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/jbsf3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/jbsf3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9D0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765570973;
	bh=A4PGjMk/M0mCfejZbHfBOl7NGz2JCopZQJVBAj4SGIU=;
	h=To:Subject:From:Date:From;
	b=r/jbsf3Li/S5lKT6pVIN6U2K7sQvgy4eWpHkS/DL+fRPx+KMVDIi1CjAiJF0aWAng
	 cpieQHmCFA1U8/rEba1lIsdzwgCZixjE3wVFA+VWc0i+wJE1lL5HIBTw8VKOnYrBWP
	 maYQWRsUWAxypz4+T0aTNqCBMHYN562qBDiGdOe08dZmTD7Ly4C/lj9gUAtrZfbPGz
	 njB01/iDXBTWCUUgNVIRhPUozXFOFDAOFArq8S2oytX0lzjPzHwqgQdmlHlPvlkahA
	 U+u4wKOnUd50EGJpbBSvZB2t62h125MOwpXpuRSzihFWZVI8to95SZs3hER3TUZPtg
	 gM6BwtwX0puXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6E8D59D8E
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176557097359.8573.9975240635942825648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f59acafcf7c47bfaaa249d7b274bb601340edf483e9d6b5a79946c6074ac745
Date: Fri, 12 Dec 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765570973
