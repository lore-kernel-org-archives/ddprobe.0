Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D46742903F
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789489834; cv=none; b=dJrQWcsSfm14egwP8yRat498N8LyKLQs2yPZTMJdpRpSXoUWc2zBJPzTC8Wz5QCLXr6u7muDKloXEQwPd8osttCdu//9s77Kyjt0PYp+a35wm7FB9ff9ER1dszLPi2kvniCflYn1pTnck+VOKZtMkAeWowKQ+Eq9L9dfqjpQbOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789489834; c=relaxed/simple;
	bh=DMPLb87UFlfte2gQGs00fFbpvhTNs5F082AiAnFbNdc=;
	h=To:Subject:From:Message-Id:Date; b=Z/l/Bg+2oT4vEQGVSWapHmNUfOobTTq6+C8rHtxpt0+gOzPqRu8qOuNZ0wulBT9+WX4P2P2toJiIlOLEmzZkOA3nHExW2SmI2xKdCfQB0k6tVGTNk+zVMVl29Mgtjy9hhXJORqBBndo+DQdxZjJlzX+fhrKt0FNbMKE+z4IMXqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqgOEL4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqgOEL4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1889C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789489833;
	bh=DMPLb87UFlfte2gQGs00fFbpvhTNs5F082AiAnFbNdc=;
	h=To:Subject:From:Date:From;
	b=UqgOEL4OWnh8otkg2FEVTUbOOdnK1R/qXpYcqPu9EMkoahvcmy3kPZekYCLWLC1Dz
	 0GHLzrdtBICXTqpEgMLbO/XjwsUBFKfJj9s9imhSWr0c8NG22O99winCY9kL6Z6x6E
	 DEY+/ZTbZW/oPG160xRSy2oCLNW+/EUjqkqJm+LSQz+Q8DtnzUqcIEK0ZcqWkXeecr
	 1reHVTXmaEYLpXbsQ9wLsOY5WuN+wpMklzgWyL7fNSFkR9760ze4xUEMFWFj++06Ti
	 mzpk2nk8gms/yeqiLe1BoVbZduAKnDkvK/KbiWRD1wUAzx902xWQ274vnz7ccrtJyn
	 pQmme6HfOQVJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8C2C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178948983368.6740.12803121646780626487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff1f1f42dbeddd1e9329dd41983fde02568e7dc29c436180b42c1c9a243d164
Date: Tue, 15 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789489833
