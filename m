Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3770D139D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 12:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765629174; cv=none; b=CPO8qQZMU9ma+fmeBYstcuxdAcPS7X+k4XDShj5mo9hoOwnboEiny8E6CovNr3yGOxXaBsXY3j8NBHPiuT8aryMtzyKFQsOUyi1VeKS7j3TZOg49+vv4o7mvCG6WfG9l+/0s9CfyPtGwXcPG6qT9GI+nts8nXMrNxGe9krnlj+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765629174; c=relaxed/simple;
	bh=oDsHEIRjngUoeGg+TmltzZV+zb2P0+UpGU8Ft4x2YHQ=;
	h=To:Subject:From:Message-Id:Date; b=EqpINJrDKD2CMOoaDM7KhJTmCEeipgly3aUENlGh+tacYXOZlDcw/gmW4yd3tMjLfRV1xD9FQL9wIE2Tc6VthlyZ5if48DCbnRV0vveSP4OvJ6ao3ZTCgSyBcZiaMwfqLSVHsFMVrQnIKbBb2aflvIvkMZHMtYiH8zKQjTIfmSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjZ2P1Az; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjZ2P1Az"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA0EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765629173;
	bh=oDsHEIRjngUoeGg+TmltzZV+zb2P0+UpGU8Ft4x2YHQ=;
	h=To:Subject:From:Date:From;
	b=hjZ2P1AzBk7Uw+dDqqS9Ak+Z/zkUkKE3jvLfvOIdhdfkBAkhrl7uYSwxrBx3q7cQV
	 tR9i+iimcyxxfOs5oO7cLh/VRVYX6lGJuuknQT09S1/iRQ7lu5sZBZT3tE1zB1WJeY
	 LmbvIpcFlmFaFGiJC07Uc6X0xNS0F5T8Py9vZqh+iN26Q8Z7fG7WAtfIFxIaRWOf8I
	 L2ushdZ6IgRUPoCP+exswuobYaZzPdNBJyShuV0zYf9oY8K9tMmbEbcK9dhucOSMdh
	 jGzunEWSNVr284YbkjIxDmbs9rAkuKNaeDB4aFsfPogWbKpgB+SzKiI5ZCVv5rZLD8
	 jFy3119xQVmRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E2CD5B158
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176562917359.3809.7523390142317269054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9165667ead4c17866ca1c3ba88bb3153210767fab11c0b7bba0cc54df709cf3e
Date: Sat, 13 Dec 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765629173
