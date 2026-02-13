Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521F034E741
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770975894; cv=none; b=r+9lbBR1KZE2GIZX1KLiSoWyU/4a3fwQPWp0mZXyJVzjQ3NHzvyMMoh7ze5hU+BYuIiBB576GLVlowmlgTv27pjU/FnpNk77zyk6i4gF8VST7whuMhqIEJWeKvQ4d8qdmcyOabHYqYZlmZyJN+Zw4kFd0fLea4T7+2na7S1rq3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770975894; c=relaxed/simple;
	bh=1uLVZEL7BUldRvcrHgb989ltV+TacaPTHK+ZepO8FOU=;
	h=To:Subject:From:Message-Id:Date; b=aglr+zqfORcc6cVPKG5OprfOgEf/RlUz32BFTSEtrqIvFmCHXPoBB19c5T+Oc24HGorgu75OWAV3hMzyIpUOq8YwTXY1p9TpTLx2IR0xJGN7vfVEXpAOEklpWmQAZAyj+JSf+7uQQ0nDho+pTAb3Zon53GGI/diF8TcjbtFaJfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RaHQZpLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RaHQZpLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F65C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770975893;
	bh=1uLVZEL7BUldRvcrHgb989ltV+TacaPTHK+ZepO8FOU=;
	h=To:Subject:From:Date:From;
	b=RaHQZpLDMRDCLsgkthkBQPkHBXIwpp7aZ5wZh+Dh6TAyBodsYW8JH/975yu25wL0l
	 UH+Hl3rdeEnmY5yEFfVp0lYf5iFJbt2eEYgoUs8KQkpbQYZuAeBpmogk06z055twa/
	 A2S8SCSzTQ9syX4TJMIRJnBvOTBGe9YTJu3XRCmMR5wxClSwqZD3O+LWS+qVt7/Xls
	 zGjCJghyigtojStylkM66aovATFo9cOq33hCeuf6lKkLtDZoG/pyMW/Zc+3uHGfxcO
	 qLm1rhNBTBNJrf17WH7aWFHqSZQgmi7qym0sIWISuchhF3kEV4r7Rj1wzFbMopAbV+
	 Vzrzt678AXTUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FF7EEA860
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177097589359.5839.2328479120031620392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10a8e300169401e1b5b273c943f098b0ebf064a704d2f1992a48f33b531a3e9
Date: Fri, 13 Feb 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770975893
