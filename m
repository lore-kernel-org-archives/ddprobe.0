Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437A5173
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728520554; cv=none; b=qWkltoX+MfzITRuDe2pAbBkocClw+6ZuVBJI8HqWYDymxk7rUS+s2D6QUp7QDnQ6XP/b0kEGDdV0vDo0ue4FNuT7VMKDk5lzAyd4CGR0VEXlJoDnbaXp7PfSJ0QyLueJ02WNBmqfAAmJXdyIBlWpAU08A+mCAjBIOGDp6LhbZDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728520554; c=relaxed/simple;
	bh=//EeJ+ebuIH30EyB1EFRHbB3lwrwGN93rg+rIDzUJ1s=;
	h=To:Subject:From:Message-Id:Date; b=ooqINh7n1Y6W8UNkYEXcZrkDq6YGt4LfT8inlOLkBCINrvhPhTTdqTh4xFcK2UOWMRvjjow81KU+ZTLZHslJXdperQ4YEsrpRCr+9n0MGnywDMESWbaT4OBSHPRPHWxH8Jw4J1hScv5Q+xGUds0TwrhyeQLanmQJ+vyGNY2nbpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAwoSRgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAwoSRgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8A7C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728520553;
	bh=//EeJ+ebuIH30EyB1EFRHbB3lwrwGN93rg+rIDzUJ1s=;
	h=To:Subject:From:Date:From;
	b=tAwoSRgb/tOAmdwmG3rld6Vr26+Sc0fFWWAhgQYBvdUUv0ENXy8XtxZ79bjD+rNqH
	 MP/sI2WxtqmDkTX8Ti/tqemSGKOgRapohBpeJLZJy7RzGWHzgG/1e1mpldxOVTG8a8
	 pLBUrgsbo5ywXaNTcwgxhyPp2cori+4SGNCryV5PKo22SfA3aIq2zPPHvPWV9t2l6m
	 2QiWZ0UO0BJkuEqNVxlv+DHuZIDDyivnXB2FjCaTdOn2Kv5QChpt8LA7vzq5gZDpT3
	 y2bNX+zXH9E1wA8NSsDke1pHdJUN7bOgG/Nq4szE64gZwrEp5/mRg4nnxOLiOv0X2+
	 VXIZ/KA2bUgig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99117CEDDA9
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172852055361.29405.8759926910438443411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8467792762aa34c28d5999a92e621a8ceea385d5c03b2489f3928e2756fe88e
Date: Thu, 10 Oct 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728520553
