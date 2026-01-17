Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD1D2836F
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768644234; cv=none; b=RjTVR5NWHD9J2dgjt7GHCldvRTO+5x/ijZoRbff7nrv17lFBUApa30dWYLA+a5Wh94j7Qm7KKN3TBPrYVPBVaw7tLHhSzaSltE4WtBtHGfT7LJUDsjl/siFj3B85bbrueI6avDyhBR/Rb5iFL0YqRqKbbTnaXykL5s5XQGNO2hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768644234; c=relaxed/simple;
	bh=pI0ODszTUQuIXLLD9HG3m34gj9OoW6n/Odyo9tjd8zE=;
	h=To:Subject:From:Message-Id:Date; b=AQ+rDXL3sz7/lFOe7DoQLLAH1aLmvqLkkiZRxovCd3D8yOpyf9IlRXbNim46ODNHNJA+W+Pv2dqshiqxwM2JYwvxBstzppHhF7u2ttLbkP9iTrg5Qs/XUFFGMmTQduftkpydb64TiS4OQeS40hk25lA9M1A14psWs7U+9JE+XSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbgLCb5Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbgLCb5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EA7C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768644233;
	bh=pI0ODszTUQuIXLLD9HG3m34gj9OoW6n/Odyo9tjd8zE=;
	h=To:Subject:From:Date:From;
	b=BbgLCb5QnNKu6k5no6n9o/733CC1PkHT1aa/2R1GmOoB794M4qiYHLMOwoAgOnLdA
	 A4oNS73/69rfY5aX5ajODTR2pGOxYNXx9WnCNGa225XSGPjC66c8TKMGoQjI0lh67s
	 11pYom1zNvPyNivwmLm4Q0SJ9NnTqL3G+7FhFm6RR+u0v8WlDQ1PN3lZCw8CpXVO/T
	 gwYNjoO2ve8xK+A7qSf3zJYuY87PeXkKCfxA0HB0Avexy2+ImaS6Umizp03grMJ4VZ
	 FnxQVLdKZCDJQOZeEVXgwxuc2FPV+rxthADXXS0e6JnARFDS6Bh2DkXovMNtS5SuQo
	 45w3ohruv2hYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A33C98321
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176864423358.19041.12281919437547798817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc5ce3be46393f1163c50f9771876f7adef7f5d9dafb4a626068020e772af9b
Date: Sat, 17 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768644233
