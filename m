Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA2919CC28
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745314195; cv=none; b=m+vBXsDVzCmlUoRIxvxoaBpA5r/6O+qgqBEeXLAnDoixeBFxZs25xYs7+4/xd/mWUO36TsOh2rqA/K9kKzsvEK2XZBsRi0WQOIcmaaPZN/uV15HnSzsTzuf4xIRdSGQ7KVSeKEqhUx3K3NWh86BU6+vyC1XZRQF5A325kEW4WpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745314195; c=relaxed/simple;
	bh=8l2joVfZGtazX46DuztquJASCcOeceRpT/d3cxUExLo=;
	h=To:Subject:From:Message-Id:Date; b=QdFTGxXnAVqv+H/c2B7655lF/wS7cJP37n7o7GD3IqvS/4NIXsWEZEg4AYuUA67RJq+qVBe31PptqF31xAPv2kh08a7DN/yIYLj/uiXYZTq9IDX1pGizVw+nGKOoJWmdBkoDIsGZMwYEJPmsG5+l+ARWoVoV+JB9fPB5oOOTFt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soiTCGaB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soiTCGaB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A225BC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745314193;
	bh=8l2joVfZGtazX46DuztquJASCcOeceRpT/d3cxUExLo=;
	h=To:Subject:From:Date:From;
	b=soiTCGaBGcKXC6IA7NA00pVzezrN+z8pjkIvpIb75RTmPKownsY4vDCjIdI2Ma+3b
	 qywmbE2SSuTVJthH0lcfXoJn/8J8SFPurHOkLFqo/eqvwTeGJibfZkC9DX/RWrJYBx
	 ETlTy7kdytQlYFDymHyv77leUuW8g/0Hc9Qb7Fi8K32ABC9DkL9JoncPvEwUp5Rena
	 NN/q8tCH8oV+5TopqeSVU36DjROnzwpKEXA8kHlklIfcxBcoSKdNn0Qa5quO9KUFd2
	 5CckMk4OwMxB3h6PwTVwHGB/ZOw2ZvPEZgadmiCzW6zwNe8imd69ZZ5x5sgVro03G1
	 qeYsb/SR8yL1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90988C369CB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174531419358.16084.11450077576172063345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde251c523d87147fff64eef406dbaaf50fd8061679e7be1ef6494ce911ffc86
Date: Tue, 22 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745314193
