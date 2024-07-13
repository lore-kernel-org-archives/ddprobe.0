Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AE018C05
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 23:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720914623; cv=none; b=Fspgco375mKmnmbg1OfnuzlOAVU98PwZz6JQ4cn13k6a0gMeDAsXfqd1P0wy46yp+IUVIRcOZ74mh9eIM+mzGacn5/PLXOdHnwItkk2cTwVemdVzKUuxYM5yRgUeN0ekbLMpgY8tSAA92roM0YLjuuGekBKP7YDzKTE/pLCTuos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720914623; c=relaxed/simple;
	bh=w740GJ+qiwWQkLHUV3h+R4ArpnHer37b3b+0oGvb2aA=;
	h=To:Subject:From:Message-Id:Date; b=MvJr5Hb1eh05+yJ3oOK0zJocj6sNwHb8dRCm0li4/lfJ5SO2v9GWXcGuKfmi3EYRdubizun/qI4mauJwvna2Tm4gsAem9m1Pja7et4jwlok4kO8X5fVakVb7Vtf0sE0p7ahZAhjIJvzMOOEwgAuvXBALG32IUMzxVk0zLCOr4E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqoUQdnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqoUQdnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA3BFC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 23:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720914623;
	bh=w740GJ+qiwWQkLHUV3h+R4ArpnHer37b3b+0oGvb2aA=;
	h=To:Subject:From:Date:From;
	b=QqoUQdnVBRoddP0wGxF+KM8TKjzBvz7XZUtLNrhldfMw3By3EESS2oLfncUoYbUaS
	 X2w62A79c9Vy0IovKCy2fnuymtbRMnTMF8Lt/mcWMAIY9YAfygDcWHp9oda/xrHINB
	 AWxH+zduQHbs1lwwkWH43XWmRI67KswtaAuvaB5Kch9oxsV6lTdS5jbzz7c/m2UubJ
	 Q5S8qIvaFmzrjiajJGsBVnv6rOz1kJ34QjgfM5Q4HA4+MXhkPYmn6HMfvKg531GMkd
	 6tjbODvfFPOEeIW7hqir2/9qM//wJIidF6qIq8B+FcJgeNMcEhKa9WW+7jZFEZIc6C
	 3N77y2I+HojQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCAADC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 23:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172091462278.8949.16876447369267063795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a895a8ea96df9eb0f7082b55029205ccead057230223e838560486e52b9f1229
Date: Sat, 13 Jul 2024 23:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720914622
