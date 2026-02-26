Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127701946C8
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772083494; cv=none; b=rdKRWVtDY5ELjyPGUlQcGR26onO8/63ceZuZcVpRKCrAsnw2uFnhnEj3YjNMakk9+2MPNgqfMhrufijZ4YdTEY8SmDIfQU5gK/VWlvm3EO/ZZDc4mqydrA5i1Dau6j1vS5dQCS10BUsRx10RciKHP5u4ZEDS8Hw/JvTZSu+/GKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772083494; c=relaxed/simple;
	bh=yjffOfWnbPQczdeNTMZcxBAVA/hoDVttPh+wj8yNZpc=;
	h=To:Subject:From:Message-Id:Date; b=sgXMJfDrZ3PR4qk2aBxLPLeiyAWJwvg0sayYamOKnhZ2O2UVm+Ea8vk+z1I3S3/7BIQ6UNeKAN+X1/OxQk2Y3lsjsBOJ0JyH08Y5MFAJwkIRmo0dzxmkg4sGwLPimUq5tYFQ0b4TZ3F3D35eYqVCYdHnEoutn3M8vesLrHcRjeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUuVH0gd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUuVH0gd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6843C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772083493;
	bh=yjffOfWnbPQczdeNTMZcxBAVA/hoDVttPh+wj8yNZpc=;
	h=To:Subject:From:Date:From;
	b=AUuVH0gd+l1OmM2H9sc+Rr1QXzqoSERASwS2BFKfo0dONV2ud30bRnzd+eBOYw39Z
	 kClYPLboIf/jNKn7A5fmbFZlFplPsqm9gi+KCYcDtvTTk4FvGOe13OE+K6JN0HA3t5
	 TWJJRp8r3FxogVFd/+v9kvwcP6SMUsgIQuEnknnDFI4Rq03kJWCixbkVWlJy5PY4GF
	 ZvvaLWNe8A2TVH0INgdwQgMAIOYke/FQd7VJ9sjd6KrGLzRbdGilerfxcs9SONvBqR
	 K1gj3MsQQylSVNc2HRXIMnbi5MH5I74FMyVJHLHkFoCy21mLcg77aMfWCZ2f10dhp/
	 GeF+7ssvhpxlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932D7FD461C
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177208349358.15581.10823736175282799051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf3a3bd90793c4b1c0e4053544e24b3a41c56497b2aae9f17e8a0fb297cf0f71
Date: Thu, 26 Feb 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772083493
