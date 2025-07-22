Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2519523B60F
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753209594; cv=none; b=tAca7/F7yn0aM3Dy+H3ou+UhJOyqjGHoVP/GhCMS+Bm1KGAzPeu5iIvWEqSZdpZaLgm2KIIyzHgU395CeMRGPFnCM0M99DIKz25YVVRR91TDP+eqZ2l9acitACkO/O/lt8jETE2s0f9GPdCbCRTitZ1IHgsRMlZN7MNJ1YDx86A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753209594; c=relaxed/simple;
	bh=odhF2vhgfvBg+tdIVoU8OWsJapDfAIQmC7gwYJAr/bQ=;
	h=To:Subject:From:Message-Id:Date; b=RQU4oJHnfAxxNypWJKI22W+tuByJtE2gB2MIx7/xLnVW4b6F2zEv7BhoK3+KTHXQS0uDmV4XAbx2/KsSoK/xUjoIA/cnXiSr6P5+e0hcXUuBPSpt5mo7Q0uccvqYYVlMcQhv45mgaPHZzzcAASUM1g01GIWB8ioK94qA7YACWwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9skz47N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9skz47N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88FDC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753209593;
	bh=odhF2vhgfvBg+tdIVoU8OWsJapDfAIQmC7gwYJAr/bQ=;
	h=To:Subject:From:Date:From;
	b=M9skz47NfB3bjatCmymvBHw1s2p35KsSLOGJb463GUE0UEU3Nx6ofiJ5Gob5fzMw/
	 xASKZvLWE3y6aZe6NtzFjGkXhwhMLlPKw0+ykbWblF8s7wNKBupx7a7wWkSrZiDj5Q
	 H/GbhuPrhId2M/Ye5q4X15NYGk1kr0/5ce+qcO2xtZQZwPfAUWwUdUIvBAh9XMsd6C
	 +4IIODuBl87mZgWbTMAjBNzIBP3vXGe8eWCwCKmTkWif/WwsDZdC0UoS4iZaxhPNF8
	 nfPDy4+hq+PNWT34E07Frrkaysb4Y3VOk9ZfM8QyuZ6DQbdmpTuR/rjogofHpag8j5
	 Adv+vuM41rO3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E5BC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175320959358.31429.10450056002103581875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7fcc5922d4b292b9f9c883edd2efd50cf5fa944a7ae5e114d7b7b58c9e03048
Date: Tue, 22 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753209593
