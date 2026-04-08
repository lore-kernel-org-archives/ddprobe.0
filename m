Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E32F2A1CF
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 01:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775612134; cv=none; b=BX6+1yeeFZo9he6cxtCHggYbrldNm1unY7KdW+l5lci5pZRZv8y3aGjilC6UgrWmewF4aQAVBhXvv2dWIF2DGUM0b9kBJEQPY4P3cwgc/8q0ayGpZt+wTphyLBJMK5GGYQukU4qLLqWcFwyUfYCguVrb8EFA7qu6jyVjxR6PuZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775612134; c=relaxed/simple;
	bh=g9G1WvJdNMGWtfagKRZ5Irr3Bd156t9FH2ShQDvgbjQ=;
	h=To:Subject:From:Message-Id:Date; b=VokI6ArASt9jY5JVb76ZK+2nPugv+0teUMVWx32TbQZghHbCOyqCE8YnllHClOemVktWLFFVJHoVtiStI74sg5pVQ9KcOVYuUPUaQOChqBp6GUTFeJqhy1MSOrWTXYXTDw58fWgpbsJNALhxAxH4yOeDIlZVcpoePO+8wJr6Grk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5sYRXwA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5sYRXwA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FCFC116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 01:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775612133;
	bh=g9G1WvJdNMGWtfagKRZ5Irr3Bd156t9FH2ShQDvgbjQ=;
	h=To:Subject:From:Date:From;
	b=o5sYRXwA6Ox2tnkpcQ8VIdw4NyozdSBbpAPXNk54uj6zBHgJUPcAWtEp1Eq9ug9pm
	 mL1WRVRkI6zDXbgn7iyiOZTJMrdTnnxahRvbvsM+E91Wdrd3Q77uBG90U14hudnTdM
	 am4z0NH9kUj1NUJF/fO2CWm6SFeiCKwOfOvn776L+dOyluKohP/vpD4t3tMJ2dl/IS
	 75iP1CuV1J1/jHAXKpJhSD0g00IWfGiaSVYNFAKECx6gvV8suBumkPf6jl0vFcuyDz
	 +RPN15kM49xIlCj+cOefKncMZerHcFEPdWD5Gmwvbh7/dtgOmg5UPv1QVhlaTCshUz
	 lv1IAL2eG6aHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD58105D991
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 01:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177561213373.11983.3803338118422539965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db657173293018473db70fcc6a446ad88db000b1010790a382bfc309d0cf44a1
Date: Wed, 08 Apr 2026 01:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775612133
