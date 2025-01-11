Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F7E1114
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736579154; cv=none; b=sRnYvo2ZW74u//cw7NFdceAz8IkVQVg8IijrQ2zr7usbr98qFPdXzuGx7+1MJxgRJiFoHKnBU47bf+DMIbBRMaA13M+xSSlKfPaJCNw5IP/AdZErsmkMfIK6R1iDEX9bISkeRRIZMNX814Pk5ljjqcyWE8RpvTgkSP+BU92KeaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736579154; c=relaxed/simple;
	bh=7Laq9hPdkcvdX2hRnmd1Z6scdGQdJCWiRlS93AEp6GQ=;
	h=To:Subject:From:Message-Id:Date; b=pBU2B3SyiIyBPGzN+43KmkD2kXBmnZLG13/Y9dpeuGDXpZ85EBNz76xOaSsVnNbNVoVRb+bKGhS472UXnkJauYRtiwmbwaXnQOW/kozC3cB6P00ARI/1XE6V33KSz4pSCF1gxfS1ZQjIXZJhneH9X+e+IP68EegMc/loYju/4lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmEqP/1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmEqP/1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58CFC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736579153;
	bh=7Laq9hPdkcvdX2hRnmd1Z6scdGQdJCWiRlS93AEp6GQ=;
	h=To:Subject:From:Date:From;
	b=AmEqP/1zZDXUsPeiBMlguRbLWe0TduDzPOhTCKNRyQZNXdCioZLmlKrgSRdWkrwmQ
	 AGNwzgHDVPeb2UB/IiFjtnurIjmplzdZTaVYYqqv4KZrRQ7G18r7CRKSb011rO5eDG
	 uZj6OpXvgdYdttWlOe+ARD7MUW9/P5D7aoYcw5jlzjrdDUeSVVTJkd2qM8QjiFXWXm
	 i6TB9yDSOHNPRLbv6W1Ydx31rOia0TWeS6IuR/Sy8uS68ZIB/14DXYkw2hfgmJXu6r
	 I7J98oBHww96Za1RAqWaEwWE1FjIkw6n/nAKfRY45kN7K8+4xA3yx6z3aAiAzkDZ2T
	 9ptuPvAI+RPVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948D2E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173657915359.16244.5959290215076103099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16f28c4020660ebc71aceb6625e241ad1c694e39d0233e353f0ab81593624ad
Date: Sat, 11 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736579153
