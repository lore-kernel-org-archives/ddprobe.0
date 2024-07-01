Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2B2137E
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 14:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719845123; cv=none; b=BV/ndz5rEKI/efSiQ9I3HQ+GgECk7SCyjFPt9A18G3dBBrkNL137je+F48M6ooMsO42wRDgeFfyG/WyBa26PjTvKks/QjrC4EY4NjiPNmv3Ds7siulBltJZBFluQcFlmQq3P0cgo5jwsD3udQE8jMyBpBU2TWVbSQLCm5+Onxgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719845123; c=relaxed/simple;
	bh=ESvh6vO8pBTBuWgfwOKj6vp7ZHZCOjG+b+hLIeGepWA=;
	h=To:Subject:From:Message-Id:Date; b=Kk7SWwHB9k9gW8KFN9D+NgSxPjWYyWJ+USuNNoJqoFHqQwRmg7T0xB2ZJ3PiTtbug3DDkdmzMV/YrJyDIROopPxzqySOaVngflo2n7SO3VnokgLwozTzxRZJDQP8aBRK6vY57EDK84dE+QKk4/1GblIbdZLne6ZtlMLyj3fDuno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LW8AUXjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LW8AUXjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC6DC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 14:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719845122;
	bh=ESvh6vO8pBTBuWgfwOKj6vp7ZHZCOjG+b+hLIeGepWA=;
	h=To:Subject:From:Date:From;
	b=LW8AUXjxoET2vnaHNIGhc1t+xjEbIrgLB7S5K9mYsc4ncyvqZq0wwkWSyhI5q/D6q
	 TDdHsc4EudLoqJuZKnLrU5xEW5UR72rMbUIJH323lY0RhBfMCyO5UXu0nNirkQcMXb
	 mJvUIV6SaMCGSVbQn5aFtDqq95eHQEJj4n383o7oOYHM11HBCMC9CPBXjYe74v8onU
	 1OEPBtnXDP4hhYco3YFGUfcMPyPNV9jJTTEQulLjjkmzJYaFSIuavKDd6pmUP/Lhr7
	 kZFy8gjfOKDyaZF9r1HNDKuOgq8oS/6biPPkMnQhVTcCeHtAqQoiSlCqtYoagk/yTS
	 EJYRJG381LP0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD671C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 14:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171984512276.560.11759673327021467124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8227a19dfce9f740a1c454d60a350cd5e26f5584bd48c8540950f2654d66c9
Date: Mon, 01 Jul 2024 14:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719845122
