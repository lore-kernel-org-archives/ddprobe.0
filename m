Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B2A5CDF1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 09:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779529954; cv=none; b=pyjX7fIbL6uNVwal+OHPKlUw2NXFydbWPhQ9cMpvuPgh1VAJEQyHlN186MI7QcoWV/aeTNQuPVzu0F3nvebD4yKSswcaGD2plAGJ47DGGN2k5aHEGcQOlne0qPo1H8WNA8m0/ltv0rPCLzkJTdPd49mDlHYAaY0k2wygEIhlWyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779529954; c=relaxed/simple;
	bh=JaVjcmIh2NmKfR3I8nJlO+Zy0InSolosSWs8E1ZRsCM=;
	h=To:Subject:From:Message-Id:Date; b=PdL3mV5l2Dag7tCVTyo42iKPwZwwVepqpGxCUa5R08ZViMQRqchHr4qARNyw4jpH6FaJgMJOkkT2K3vZOyWLtZtN2ZlafgpZGJhxSnBFWSsHGreqEPvFiBZ2RRZ5xPnzrFcAJkpz8j8v6IiILYfUVfdFE07GFEE5LqErxohXM58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VT69Fl+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VT69Fl+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0AEAC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 09:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779529953;
	bh=JaVjcmIh2NmKfR3I8nJlO+Zy0InSolosSWs8E1ZRsCM=;
	h=To:Subject:From:Date:From;
	b=VT69Fl+cCiNj62ogibyMvSBaTS1QUUJijC9MSxttrtyL1nZ74jpJqfOAko6lqEE5/
	 obmZ3iY3fHyg4H51KmP3Q0bA18eQHy1miFVUS40wT1nWAJ9NhL3uG+p4wxan/A848y
	 kTFlzgVC2IExlNM5UOcEk9YE1eYrxqkz/MufkaijTE6JC0Svd+ATovwLweWtt1akRb
	 7wAgX+sfLW7Gq01oRSzpRE6sHG+dMUJyAlbuHDOLNHY8jgaBOVY6CJEurnyKHVCgkh
	 abGUMZvr8FlrFbwq/Vgii9Wk8Rr9MSve5BwYMMVl5LstkDIdpEm5figsJMrVHVJLNp
	 elAfFRiIYOIPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A8ACD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 09:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177952995368.26290.17125711616924212187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1441038c7e2a6398e3c4a009d5e00d09b023944de897ca44e8f599764eb517b8
Date: Sat, 23 May 2026 09:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779529953
