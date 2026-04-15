Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AC01CFBA
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776266254; cv=none; b=AkLI0OxRLSjz8DVwdDKYPnvhJOre4aClavT0tzcWlnM8bKcSDFRiIG8ysqZZ67Gwa+VdOZ3dHzN9TUKmJ2NhDGKWZpFANYeR9Q99v9LLpoWwpKiWe8WjC/qb74IUtN351ak80xDPkX1/8Lg9GBEX+qxBqmM7ISCjG8hM5L6XzCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776266254; c=relaxed/simple;
	bh=oO84CGl6BT7SvOezYO1Kv94irN5Tq+mIyib4S0eIlsg=;
	h=To:Subject:From:Message-Id:Date; b=eNCnDWw7TiM7QqSkpD+0fuxh5DP9TxBrL/0oJN4WW9TWPPe0ELdVoye+mHMIwgAyjVMDqkx8+6aU/vIIa4VpsPwPwoBoetO6jUpe7uZr/CL1zoG8lSCAJj5osId9kxTZLMrO54uU9wqz3KrYLjyaSAbB5g0nVkNqwZTGH/IuZkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FU+cCrSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FU+cCrSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8311C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776266253;
	bh=oO84CGl6BT7SvOezYO1Kv94irN5Tq+mIyib4S0eIlsg=;
	h=To:Subject:From:Date:From;
	b=FU+cCrSdXTcvynrbDAYlZ9NZCak8jXH0Ysi6Z/3tJ9B3qlKl77DQjSUlcSRKDPS0j
	 rYB0Fl13/gclO2qsHIfM+oJGPTl268Y079X4zUYpPmo2n1TdTjFi3GAsN4g+gwQUMw
	 q+/KI+XlzIvef11h9eLJoj7MKyMCRnjMsC3LzkkhX3Tg+4x08fvFEqX539lOQOpcN5
	 G2aUgo50SW9UbMZJhaa6JYGx+H64bGSGiUE1cTeECDldaOkUfgkrp1f2Jq37i14Pw9
	 HH0nuf73grl57mBW1GstIcYpHfkz3MhFOv2hKmg79sOW77oxaRlYMgooO31bZJ3bfO
	 MRPem4wtDE8vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FFEF43834
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177626625368.15183.3276130185766061666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f3e73c6db1024b539ad467e25a724c011fdc4129b00fa3be5e5c1fd2b6a03a
Date: Wed, 15 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776266253
