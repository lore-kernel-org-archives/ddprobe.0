Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3435F1E7C0E
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729859154; cv=none; b=dANzCWknhey8kzDZM2YM2enzANfI8P4D2nAiDtb9s8WySxPRJBbm1c6SckR/Bn9Gj2vO7CdCuGdeOxM8q2sODUBUqOxS4Vf+q3yy/aKnEWLX7/Mf4PFwgthvfeS5cjFdSiZa62p97WfwXPEiCgpwtZYYp8i46Kf5E2vS2u73zok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729859154; c=relaxed/simple;
	bh=MbcKXVC6uc3W4jjtw0uBqfzTMQG2XV0PVzv0hlJjC5Y=;
	h=To:Subject:From:Message-Id:Date; b=QXV7h97cSnu4xACY++hQ5EHVLaheC+ZK+XKaND9nygQHNPBR4cbv5DfFGjKCrSwa85ctwVui44IX3gG96SNJ3X2/fd09kPp3Nb/KMshvpJx3conVQbhiuFX7uGvzOnc+sffja1J+6iZ1YyIsrG4eg7B+rC4mIbBu26WvwiS/PxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrYdSkKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrYdSkKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1429C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729859153;
	bh=MbcKXVC6uc3W4jjtw0uBqfzTMQG2XV0PVzv0hlJjC5Y=;
	h=To:Subject:From:Date:From;
	b=BrYdSkKlYv97vhYnn6mnvQl4hnqPy5+WwWBNOVI7IiMRM98ToKrdXqYO+bJKbWgNQ
	 CAWtnL0bTYiGR4aI87I3c9BiMemPK8VRr9qxOqfeQkOmCQuVEQBGES633wcBEb48P/
	 B+/XDZsrpTBr+oTGZMphkd/vrbnYYK6Wklyzvx55R05+hQUYQChJ0tYD9f7YJwYM98
	 UWPV+Km2yB+M6VS6ZVaVVCj0SLF2VOMhFosGrDInUZKZPrJ8fj5zenA26cyF26m+ln
	 TSJn4GvRNoaOc2lPO7LGu22ArnhzhxjfeIr6jwlzabRoAfXpYp2Nl5LkPR+M+C5KdB
	 MQnk001qeITjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9672CD0C601
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172985915360.17158.4471976876556747924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce5e9f041fa31f1ce829ebe3481df3e5566e1e0204328a8281e44802bac0eb3
Date: Fri, 25 Oct 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729859153
