Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3746C423E98
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787330434; cv=none; b=QJTe26nxFYnyb4CLxOTf4kosI8YoabC1s6SFRioLib7oLq7HpB23Qp8w1joj6FuAmjAekGx9h/WkcWa/1g57n2666PoP8XcuS2hxU2JwZWGA6mcj9rOxP9wOEoJVjDW73abvIZ0QWC2cToW91xgiJoseVhd6dfcm67qzz5gnen4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787330434; c=relaxed/simple;
	bh=emy4mXjrTTmovPJn9qpXD+Oz9Inb5xzzmKD1oUZ/BZg=;
	h=To:Subject:From:Message-Id:Date; b=BHPHyYdTMapKf/pfBihyNv0035BVHsIk6323TjYnCJtKE69+SpthsDPXDcA9aC6jpor+Ds8M5zYDU9TH9OojNRcIz4Qbio86317omjtW9X+7qN+2md7E3y1Nqh2qni1bS2cMoEwG+fuh81JRXFFy//M/3JTxql+ZxBFUxU0+7FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuYd1JEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuYd1JEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8E7C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787330433;
	bh=emy4mXjrTTmovPJn9qpXD+Oz9Inb5xzzmKD1oUZ/BZg=;
	h=To:Subject:From:Date:From;
	b=UuYd1JEY+vSxp6C03RqTn78MnzrpOmkQwlmjrbcvkAKgDmB+0VlBHSbjU+cUMwfZt
	 Geo0nAS0Z8Tu7ypGxwuiqglIYMEMyn0EHKn1gbEiZ1HppScv86PYII2GhaCkKcjcgN
	 810xz89M8f9RyOUX8ZQAcUx3yLmxX8pQdScCu7WyAP0p7Ekk9SBniDwCswYAvYmEPD
	 ovfPYOMO1i/MAAxc7gIcOkvRUBEG7UGWauknhHu1iihPN70+52/cCm5XLr/Z+1eTjK
	 FDnJMtWx64ivmvG61o8dkouE3VypQybVwERex39xb0SaZ9AB/zM7ZSDxm8Jq/byq/L
	 Bj7krbAink9Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7C8C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178733043369.22618.9878330987592938367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 936e450e8662c6b1a257189bf458bc16859097f9648b6974188823b563372eeb
Date: Fri, 21 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787330433
