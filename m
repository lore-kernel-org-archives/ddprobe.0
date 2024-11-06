Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCE11D86CB
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730883354; cv=none; b=MONW48ZWQ36Ai7jihAxRKyEyJw1Y77hSyN3tfOcdRey1rh7TLHnLgmGBYt+/ptC4Tl0U6rg+be/6fFA3IxQOieOLDHAnXQh19da1Yluo1F6alwyJrd4hVYHvYZMF7pXJwW98QOcRAZdMwFlDiaGgdfuvvHQpz3TzeinK042duOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730883354; c=relaxed/simple;
	bh=SY3ozPu9ay9ApDtjjfEU0w6X07QC4scocRp6oQZSTTU=;
	h=To:Subject:From:Message-Id:Date; b=FmiZUwQTS2sOIkjNH40wWXVmSTaQSWcMpnj0xgwpwp1LrY+x2EnJAvrLPdDxfBe09ElJNJJbKxIdvR0iPxXRoVMq70tJJbqMlnUN93tcHbBfpPXkkWL0tfuDkT70xWIWC2qgpC6iS9U0sKbUHp6rRTUk3J+eYaaFxRQeyRQE78I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wf0o6TbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wf0o6TbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29CBC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730883353;
	bh=SY3ozPu9ay9ApDtjjfEU0w6X07QC4scocRp6oQZSTTU=;
	h=To:Subject:From:Date:From;
	b=Wf0o6TbErUHwBtEl+TFoZDEZb/uYMZDxC5EaK8uMB5yIwze06ObldBX6TE5iWuog2
	 7rBdcs6wUr+aeiWm3d2onSwRO2vN0duQ3cftZsL5qxJ0NrfZXHPLB+ffCRqh0eTgkR
	 IxeyaxgtgJxmNSHYv98xutv32s4tNKTBgZp1m42l2n969zmdWcgIZCnQTEkX5VWp8o
	 TIFbLsh32w+LFitPPSlW5Cqt1SA7qxuYOADNWTqXD6W94ie0D1ZsYuErv1WkVNksEB
	 CUDppqmughbzAlBr6g7LXmsByLbQnB4aoZ0qIxc1SXtZra0RL4sxPCHSsepLtf1jB5
	 XdmfdU6XLwkQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFB8D29FB8
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173088335363.15541.7446139154215266035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d6c53840291823d4c6d4cb38ff96062b2a83d852f9580c59353666716b3f3a7
Date: Wed, 06 Nov 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730883353
