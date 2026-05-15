Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5E9F45BD57
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 12:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778847033; cv=none; b=qaAaaCdzJViP8OoPKTr+uJSZvZcTNsduWNDkpPNdVnGrCtjBPEIK0gm8XSxAaSOj+HhuF+Tn7ELZODlkT3lHUEJnscE/0x2+Be+w62kPaVTIuGdq0bgtyYCByTbWJLDHdbWvRl9aaDPE633SxLPkkKzUFg3EhBabdJZWYdz7U9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778847033; c=relaxed/simple;
	bh=Z4R9m0b0MW/PM7hFefY1T6q0PYOnO4TpO8CZBYekSH4=;
	h=To:Subject:From:Message-Id:Date; b=jdlh9TD48AKSikOwC4dFAfWeEjSeYqeexh3SBw4Qv3Tcn1wCFnj4HQc3TOiD50lnSTxRvLyUGZ6FULiKDLoPYs5FoQW87Eal+DbmHz5nOVwEo/8VntGMt4NmmanevosvGUM158NdyJgSrs2O9Wj8Az/P7x8hD95E92d8V210N+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fadhNrjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fadhNrjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98CEC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778847033;
	bh=Z4R9m0b0MW/PM7hFefY1T6q0PYOnO4TpO8CZBYekSH4=;
	h=To:Subject:From:Date:From;
	b=fadhNrjGDTnh1QO/Jt1y0UnyxrG2retmwVZ7iYQxx7nX7nTONhLDvAJyS7LwgRuLe
	 mJpqy6neHyeVDmFl4B39RAekiVYFJkFtR7A6xHOnKh6Y3Ez/1ip6uyip2WXc+nDNlc
	 illySmOsRh0Mh0N1xJdh3hRtt16B6xd3HAuYaxbsR/McpU1ISbja/sleDBjIIecGbC
	 9MP6zRqXpEcZM2pxgNmB9+R53+fEZt3P7+Tg/2nDdNe7QosMYZ4WOteJJ8HQtPXYVa
	 /ZAErCZ70I8EpyZbq98KAzXJweEy4ukAQqZeeE86vYPb21lfjLbB3Cgf6elxDBC6ux
	 kEZXW1pzAjPVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1F6CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177884703369.28412.6815307207577936731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03e962dca1f76cb77cdcdde771573848134747dd14cf8834402baf86f433cf75
Date: Fri, 15 May 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778847033
