Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E4B1D9A41
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746370794; cv=none; b=bmY3W3XDnwz9CQ8by6MNepfFaPTDf/xkwe1Jtw8O/L0sRTbMNONpoyGm2oEUaV1zahKUE6TommJveROUfQPwiricHvT7hfD3gRcPR7++u3uyl0OqYSw7ss0hYj+HeW3M2Pjawh3TonPB80uuWbxR5fotbbDy52ecM6BfahFmdWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746370794; c=relaxed/simple;
	bh=3EWwisLTV6qODgiPvBl5/LBJtJJVsepPDaYRVUjFosg=;
	h=To:Subject:From:Message-Id:Date; b=nTjZxXA8rCi6cPyNgbMqB/OT0KIOQwSi/Ri0O38ahGCCO/wtYgMfcViWYqW8KC0Pncu6jkI3uAz1GiSKCxq2MTt6ZfsHcTs1we3XIAOyky+uDV5hfXQIsFPrfWdFK0+I4tQVRbDLokDodNkkC+9muBU3fc6Yl3IsFyuGowxtjF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWfNPja1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWfNPja1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D89C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746370793;
	bh=3EWwisLTV6qODgiPvBl5/LBJtJJVsepPDaYRVUjFosg=;
	h=To:Subject:From:Date:From;
	b=AWfNPja13sTI3fkimLm+rZV7MTy4lVnchNePQj6JTRsJTKG+QlTRAdGfh0Z5LxWIQ
	 Gq3TVjBiRcsPJqgI3iRh0TFiNH6wazYCccyQart9nBaPbYeQ/G1qvCArXbDNilKmE8
	 NiitIdwOfzJKBy6sZr+gg1B1fCPvGrteXad8JD02W7iGnaqWM6u+fDsnXYzZecZyu/
	 /tHlR58Ioj+aPzUOdhsna7Jtjl/Pm1JUoM+cn0wqsbUgRafhxbSr+MoH7k6xAuXQXt
	 FTvNsJV4qkWsFlS2pjZ3AgG1zuV7xSVBgUAvdnsngqPINduRLV0F3roPFuAOfpdMB7
	 xI1JQoQ0nEF2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FCFC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174637079358.31732.17985830984566192628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7636661d42fb7da93fde57cceb66af3fbba47cfeb7aca3cdea5338fc8da5ceb
Date: Sun, 04 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746370793
