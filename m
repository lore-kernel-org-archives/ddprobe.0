Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA36636F918
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 22:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780697673; cv=none; b=ud7Q27z062cZUNW1V92muHc2YxYhtOsw79wqBA21LLLbsjy5L8Am48wUe5qiiA4lapkZ7/0snvzHcb5PSkDCA6K9v2BpTEEslbpzKizyDx6AImoxBFPqb1J89SiOjhz/jqLx1HvtIzfdMCk8z+/F588Q4r+eEpj3XSTyWl9F4e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780697673; c=relaxed/simple;
	bh=nIku8J1vT9j4TKogFtSjW1mXQZsMjPJZoKMHqSFx42Q=;
	h=To:Subject:From:Message-Id:Date; b=h/Oc7GK545yoFNtmGBtQB1OZEk9LLXbRBr9Xver5dbtwTcjyYwVt2Yx/1T8BoREInFMUSZOcTqzKfLOcSTsj0ZVi7gXeEDFuRj8aswxGi/FOl4Hzg6ATYk9ccZdrjHGpW4qEHpqHwfqLJwLv6NBxZ2XjZQYyaU5Py/rPYN9JOBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7FAPWDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7FAPWDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF47EC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 22:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780697673;
	bh=nIku8J1vT9j4TKogFtSjW1mXQZsMjPJZoKMHqSFx42Q=;
	h=To:Subject:From:Date:From;
	b=G7FAPWDNhZs5eNOzJbNJuDgfxmiTLWxB6nyPTV0oel/s/Pm4Jsf0CEc+coDbZ7ZOf
	 zXdXrDZg8WZrgNY6VWJFHpVOoOFRaP6KufW0P0a4Fm8aEtkLB3vLjFqw2vp1UyR3Bx
	 nFW74skdlJwb2ywFYMbbnofmlM0HiHUhxn3XV7SaN+nq1boE8wOEQYRC2FFC7B/IXv
	 ZsI9wBPK2EfX2pBx/cLfrlJLoWxL2QAAOkB75hTE4KXK6qnKVLYrlVr5E9TcCZWikl
	 JQenQABFzB3yHXD8JT5F8jPrf9ma8ba7GzRoKDRQEO05EWRcLL0JnUDfjQxgTvrsHY
	 aWQg0XRJvR13w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B88CD6E7E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 22:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178069767372.9321.10818244127367549130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aae4b11b9c9d822e5a61e13597d30a273be78577bdeb692ad7931a44c8e057f2
Date: Fri, 05 Jun 2026 22:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780697673
