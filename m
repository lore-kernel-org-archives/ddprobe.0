Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D9B1D9346
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766984034; cv=none; b=IvcuL+S/Z2dJTeH7/qx+uW3pOBLpF7HBAWRi1r4Y9aWXnfSK0oUW3KUldchvwNr2yguGwuETvv6Z18/cGYfS566WTqonl9sk4Wy9i1m4iir1mMQvMJggcAbAB4a6cT9jOfJDEKeq/wW+JQz0p2GVnXNR5y/wHwBysxdpXFosxBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766984034; c=relaxed/simple;
	bh=QldSu0agoLNroDLuahOz4zsySooc+exXapeYCxCIWa4=;
	h=To:Subject:From:Message-Id:Date; b=XPLAf49KYyNYcQR35Ncgz4DMipMOMj4eYzWFb83OaOK4MDJN5KjFgb7riUKhyAyKulQQqEllbg8lWAZAKT8iCXyTaklI6SXBi9lvNo+CBCWMidObEqwpFWGlsB3kGJwBXn9npPJEhQySmQ5LpVamW61VkglZx4L/fvkAg7+0AsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUfroj9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUfroj9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1E2C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766984033;
	bh=QldSu0agoLNroDLuahOz4zsySooc+exXapeYCxCIWa4=;
	h=To:Subject:From:Date:From;
	b=ZUfroj9Fxg/XVl4+fy/nCqTQI3lWpQOuNrJO5LlfudTk01cnX7b+7ibU4n8wGypSL
	 yfijG3uHJTEfTC5LRwgm8kG+fqNZsZuOpWc9P/SQ6oG7nhkcqDYsdfOYZ33efe/OZs
	 kBEdT2sYpM4+3Hni/RoAws1pMrO0wlXXJTZ7zhplU19iQFi1r8wIOt/zzJ1reJdzrQ
	 G1XpqoPvSW7GOXQoEE06WQbBsvFKNQYNwynEQiI1PgVw6HoDgAq369vwjXiE9geuuN
	 mjxPe64Mi/46ke97NR2VriGjJWwHrhCcTkQmCgLwUBlSnjZAQCYSFIBKGfKRXRInfJ
	 4TKp8941zIaBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A314D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176698403358.23992.1338708552327734840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b136d729532e6578de13c83adfb77a77fde18a4edc7dc70c1eac95eb4259308
Date: Mon, 29 Dec 2025 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766984033
