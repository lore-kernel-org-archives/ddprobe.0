Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1391CD2C
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734162354; cv=none; b=LzolHE/esFmgatTU5jVqd+ViG2Yr2UDQV2TKeO8CjqXBXQD1Rlj6/k/5w0+B7UQoq9nfn4LqS6WsjMEXrhN6D0eTGedysE6lJIWp93LNUBk2Gz5tAS1UFqSMIKZr8GHaYd8tYXjawj3X2dOw06JGuMBE3dd2QU5AAY8kYbt5Mc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734162354; c=relaxed/simple;
	bh=4zbx/11HEHYpDcTvEzofXX+Ype2Kwkdighd1D0FzVqQ=;
	h=To:Subject:From:Message-Id:Date; b=czIhtYjE1iygwih63mHjvJMlyV0CyJfONUASZQgI1k+XI7QfHYol+pec5xEel4PI6i8achhvUAaLtyCxtkZKbeB6Gm/izagHTc1exU9WxQ1FO9qx0IdU43WdUQTEqbnCD5dpAQXNdHWTbdWahoDqkad9ihZFmDIpu1DAR7W8nuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ru4sGO3F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ru4sGO3F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D0BC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734162353;
	bh=4zbx/11HEHYpDcTvEzofXX+Ype2Kwkdighd1D0FzVqQ=;
	h=To:Subject:From:Date:From;
	b=Ru4sGO3FoFFIPxDn4Rae2SaorXwVY4H2igHcOeOiShvkyJIQNYLaFZH5/LASfPYMK
	 I6KFY3gNUgf4gkWvfE+cnHh75wdXPQHN2DkgNvOporUEjXhb80hm0Uyo5w4bnkeCvH
	 VY6pmoOGvIyeL/wARJ/yVXU7w+tl69yoUH9LYAca1NLMHzLHu8/NmDGu2Y0mPE6Ha6
	 iznQUHm9gVkXB6YwRWeDwKN91Lh4DGDflbE/WaQOa2MflApXNHnKMi2Dyg3mKWu1lh
	 UK+ll2plCb4yG+htOE0jnyQwLjyWql/uN579KNACTblT9zvyjhbfOiwt5qv+NW8RTf
	 z+YrePF3JD0rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96226E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173416235360.32573.16053423259822440841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a0509a8900a28fa5a71fe42a00fa8236d3b97a62d8b2783c1f7869dfcac810
Date: Sat, 14 Dec 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734162353
