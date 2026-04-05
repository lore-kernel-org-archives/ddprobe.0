Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D51601607A4
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 10:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775386533; cv=none; b=qTcAlCNNj6tsU8aNCoJbeNwTGbR7/bSCXLbKxEWGo3tOmh/J1CE0ZdSN1jsRy8xLOczljZOIMPiNo6dbhWbmog8b41NZ0If0ZyFi0RS1H79VGFErxY+sV9e+uMUp0YDsY1pOT8uFFdgusHuKrLINY2WvnSAj83RK7xnaXdNYdvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775386533; c=relaxed/simple;
	bh=dH4+ocdSe2pDcTYtZKq3TWpGGusB/vsA7zb253gi17s=;
	h=To:Subject:From:Message-Id:Date; b=lCrU0OOjqRb5/uqB6iVhnIFeyOPUe4cQF/gs0SJPx2hi11DCiFW1MwIcfV6bECbpwkXjC36ZW6H71CtHa8IIeI2LuLT9cgZ/F1Pa+UiSl0iPn3iUsH+dlTST1lu5OuS0R5L2D6pM4IaIqqgS1ADeVd0M6koRK2otbF9WtBpOu2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPG+lut0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPG+lut0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80D0C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 10:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775386533;
	bh=dH4+ocdSe2pDcTYtZKq3TWpGGusB/vsA7zb253gi17s=;
	h=To:Subject:From:Date:From;
	b=gPG+lut0yl1ESQko2Hs+6utoeLEJKMzsM8yvvfKQ0fCveAsdIzyZrpS32nuPv93Fo
	 wDXOlUbIR1E8X1OSh2Ukv1umtGukcz1Fgn8Oor0P8GYbYXOjyDxk1gA0Shs1Ds43tN
	 jxpskcQra7lQJP5ZBeByP8u974+nCqO9PLvvO8mfBu73ZL3FoMMURo+vx6l0in4ghT
	 rV7wPx2YaBzF/AWZOm13F74ZBmnwjjEix8AqLMO3YS4C7USDZJIXv9+nBuP/4lRetx
	 ys+1n8cfIH4SDPh+UNsvS5frn2k9BkcOVaabpTkDlw6AZfmy4QVLA9BEEgbBRED908
	 /3MrdMfZ6Tluw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF466E6401A
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 10:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177538653370.12307.10294972384934801311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf0dd340a5e2da0d495f58d8b0ac2c3f61a218b80f7b3acdef8290ea703dcb8
Date: Sun, 05 Apr 2026 10:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775386533
