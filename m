Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6D21FF613
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743098395; cv=none; b=FEoHarlPZUd/KdU49pNC/54uQ+mNEVxS/IC0c0R04611qiQr/j4K2/c/N53nLMUHRIVsDscplDR1bH2HbkbrrctDEf/U4TDrzoHO97wWdugTytXabv9An//PZAyVQXfzfSInnzvootCGqShAX2a07uWV+Gbuw1wrYYQ25g1AbU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743098395; c=relaxed/simple;
	bh=hvOfCFq23gyD/XPKoZ1mvVET9N97PjMLND4rE/1Zuu4=;
	h=To:Subject:From:Message-Id:Date; b=QiPv+ZU0Y1DT6HL1ejIG/dmRnDhF1IVk1feJC+kQxB5tUApGLSBN2JwSnGSg3fyWcPQUeEzEKqFPd5QqjE8Qtsbo2QYrkLeg/G1yV4C4EBCK4mbgX+cgM4DtXTbKZ3s6r3sf3MgyxFMyG3LFlsIiJZYhKI2USaR4cglb5Ha2MTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPBIMQV1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPBIMQV1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4273C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743098393;
	bh=hvOfCFq23gyD/XPKoZ1mvVET9N97PjMLND4rE/1Zuu4=;
	h=To:Subject:From:Date:From;
	b=hPBIMQV1DykM5JKQzEwG4zKJcZl+Uk5peS0IADq+7GSOEklamLwSWUhbUrVlPQ9QA
	 TBenzRw8w1rjEmEGDVsD9lqWxEi+XXbZTU95Yl1CkKa+b3nIjsx8utKq23FnIavTol
	 mP7XJHFieuMjO0nO9W7DitYqoy5gz6AR2I8lLvWW/yS6EwaTxxvpThWIdsC0aq+DGr
	 gAPZuVcp/DVOAr2A9gmbvFnt3Nt4xGaEEdLqRNzWhO4KGXE7ZVUYgL2pjtg5VpB7zb
	 KkpkCAQFxZN2bj6BX8Iz+jqhxmal7qv48bcws81dGo1TwihbipK1g1/aojMxebT35Y
	 8EP0jtN9NZGzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D58FC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174309839363.5613.9530410548453114256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc1714f422ea473f281eaab530aaa38a7690683a941b4fdff8d69415ef720774
Date: Thu, 27 Mar 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743098393
