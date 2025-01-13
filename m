Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361371C5D7E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736796354; cv=none; b=sLN+u3TzGNKxqvNqLhOWDeEUDrMY1Sr8KNPpvBrCXWtSWv7rFA/Zi+L3fBQa45IYb2E1ha+aMhY0y+TX6eoXgaRv8dHihfX3uh2arP4sUld1vxUF+4sIVb0fsdxEJEKPA0gSIsFReKQtb49qDL6H233IT3Uy7JgWSDNORWuLo5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736796354; c=relaxed/simple;
	bh=eTplgRp9i6BS+txhQvtHON3BNP8G0Dup5wY+jS7u0MA=;
	h=To:Subject:From:Message-Id:Date; b=Imu/lKghj/W8tD/oV+Hju7gAW05ChWcY35HO16Dnb8Ysium+HJ+KKJTmW0FNqQ3j57VYl+cSeZ7POsbr6TysajP8jE9Vc9wbtHGpjCpGkHn74iuzS3Cq6HgWPwWPHbF1sNF04nv8J7kopTP4J2HAWKfV8sK0uSDl69oQHCzhy28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7Irl4oE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7Irl4oE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B702AC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736796353;
	bh=eTplgRp9i6BS+txhQvtHON3BNP8G0Dup5wY+jS7u0MA=;
	h=To:Subject:From:Date:From;
	b=J7Irl4oEJkLqKEcpj/dervhbLfJ6+yxEljHferCTYD+wayarkPgaaFxLvEoUO/nTJ
	 Cp40GHpybiL0mw4pVrnSlUZb7y34LJQjLgPXl+WFs/lDOHKJ8SOjKRQt/gLuT1ve/c
	 1tRJl1oJtfIJNoNmRNy24ExHaLNGScOJVAZ8NALmYWT4NlW0j+MNli1KXfdOs/hN6U
	 OXX1etpoLbfWyOzXj/EQAFlZNOV0vQi8fXAiZg056AQcH3LjrntBUpdN2icwW3dwJ8
	 6FN9ToudhHDDceXMQetYP3IdNkBW50b4nRtyZ0nPbZVPApviT/56CKKKc2FD7mya9C
	 WkzeP5ad53WOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A15CFC02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173679635365.23634.8806367053017463293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d7125ab59fa76eb1fff13b027e9f77d3bd75d7b0b1b686a707ef36443dc8e3b
Date: Mon, 13 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736796353
