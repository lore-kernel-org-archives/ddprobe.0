Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C3E1DF72C
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773983094; cv=none; b=tjsUsInuJWtWhJ9QAqYYhOtFZ9nf2bfYGB68mukMKmvSVpfYftZSrVHC9cPXxHap2+inSfd0MPJyuTg4GQR5+yp+uMZ5MkGK+XEROwCMxHEgoehCTxNJoTAIxL3qefTWuu7KaVhzlS99I28TwlHUE13SgC4D8+I0aHiX4N1H+zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773983094; c=relaxed/simple;
	bh=Nhxf34RRZViMC/yB70dLv6MZAxahUXY3Isba1LslkBI=;
	h=To:Subject:From:Message-Id:Date; b=tUVUAefSMKHqaUMiCynzf7UEoIqXLn/q3efKUD3FbVwDe165Yp13EmdNsKyf0qC/hpwBLHcmYKiZDoj7rTd9a2RQJfyJ6Z3ym6Xr4gcu4csTCy8B7HgxpyOwwFVROuMQpQ4SEfhrM74amXChQI/UtE1E2DjyBmZCDNqRTzOjKDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9UfyyGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9UfyyGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC57C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773983093;
	bh=Nhxf34RRZViMC/yB70dLv6MZAxahUXY3Isba1LslkBI=;
	h=To:Subject:From:Date:From;
	b=K9UfyyGuEu8fQiLwSrxRyr7TVe6bceN2bG9RcgPKpVw8FO6PR5/Ure8zAqJiy6JYn
	 bq9Lf0luMGyFRWYMzjy73pq4OAYh7d79BWOeGpAH0tQSHnsNqX2Q11y2cwCZy6mYrf
	 jlGuOPtb4WzBrvXdgNDDD1XGzUMVPIA+FhBj+THHVcs11La0hu79Sf3uvHNoGPsy62
	 6Q5cf1lC+/uYOkCX+vF1D+/qxHk5siE7PFQKoZ8xADuS3gUXWqYhZhiIN4HBzxPumj
	 u/eXXzj88HESB4eP9azXFjzIFS97iNGj0J2oNtyEofV3OWficTjnro+lwgSmQcX0zK
	 o11JLN5pbC+Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E3109316E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177398309357.3747.5579604246579011985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5123da595106e7e6080d2c6b5bad64a5eebce63b44539556f1a24a5b7b9f4f2
Date: Fri, 20 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773983093
