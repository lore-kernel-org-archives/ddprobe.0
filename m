Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1795525392A
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773500694; cv=none; b=BUEg90nbYCzvmHS3YtuVmcSas/CtsdpFBTb3K0IBuiSHducy18ORkVI6i5MrnKca4x2HPTUuObCKT7sBpQnhbDQbfb+j7eNU6rMVYipEWJ5KZMk9CEIhbzDGO2oaLytFX/7l8l6vmBqt8LP5unZr39kxjLiOi67og5Rd/BaTT90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773500694; c=relaxed/simple;
	bh=685CABh5AB4uj83YbrbKe9zMhKWVvHBw0NrOlJjFKWI=;
	h=To:Subject:From:Message-Id:Date; b=P3kY36gts1skG1tmji2ACb8E6gkJje96n4d+eQeMEe38q62g2+tV3XQL9gJV+W32KMOrbou4heAXiNkC7TvAOvZQpK9D7tUAlbaaALbPH+rv0y8FBAPHLqFjIokp5yvIBZzsLW5Luf6Ie/NrdK8DwfCNJjGVQE10NkAC0QdKahU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUcnJfgA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUcnJfgA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FFEC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773500693;
	bh=685CABh5AB4uj83YbrbKe9zMhKWVvHBw0NrOlJjFKWI=;
	h=To:Subject:From:Date:From;
	b=CUcnJfgA7lTNGIXFLh2xgVCer3FjbEqt2Enfm3UhPlrAxVwNsJqmfjrHCujzKCG8k
	 9sON6zWbPLbqFr22CGeIGqRCW1KEZ7uH6RoKeNzN7fmOuYRxDHhv4QinC3we9nHYr0
	 mOHTnt33svmftXnfQD/JdSxeNbjl3XtFpktrjg90Mv6wAvr5NtjHOQ+9/ZZVB2GU8q
	 08cwLW0WZIu7bwF4I96V0GZDjWw2x0qQdMACR2QGBStRDBy6QUKQ3AUlqquI/9xtgb
	 u+L9fKyiRZ6w2fMHe842DhM7GaOuJ6mLRkt7lRyO7NjZYat3/1OILTwZLud/981jYA
	 pqDBPFnUl1WhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9553910706DE
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177350069357.16642.391821694848324965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e924168645eb9f09c47c10bf63d93bcc5356a5ffd893db8b16eccc0577d3cfb
Date: Sat, 14 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773500693
