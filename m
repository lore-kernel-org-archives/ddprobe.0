Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6FB3E6381
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786791634; cv=none; b=VZPtRcDfFNKd4YLi9LhVR5lNev1pt6dI/Z2BHyw7o/xnSQHM3+jdHgAL9Idj6CVy74lZjCJiN95SMY3TOiVfbMxLogMAQ+n7eZD3q+NY6SMB0A4Z+OeNeyuFCtxv7LVXABdLtFIrz943NeoXEl8Ozl+lXPgD74tClBSUCBjivb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786791634; c=relaxed/simple;
	bh=WVHODBGdjqSIfAuFfK6NwrXn5+mWDjByanP/QmXYGk8=;
	h=To:Subject:From:Message-Id:Date; b=cBIQARpIX7pS7iiUYwkTGF3KgE4JEXBgEj2QN43Cop5gjL1Q1QWwMjW0BL4qllDsSAHIOKSY/xAJEJXxZ2hqfIazKmUzJlEAjl90ECtFKwjWyhlPTa/PqhsJ5dCXtetyv0GN3juBS478+Yqrb/RaL06urvDur/pIm2ZrXehtogM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oN+yFkwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oN+yFkwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D73C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786791633;
	bh=WVHODBGdjqSIfAuFfK6NwrXn5+mWDjByanP/QmXYGk8=;
	h=To:Subject:From:Date:From;
	b=oN+yFkwORc+AzCToB6UgckJSz8kVTtu2z+1i9Qk9CdVAuUataCFTf36hELugWNBwh
	 kSH0PRYzPcVGrMxopQm3n7pqGqtOjgtjNX+d/M4Qh/c7tmYB3CCxkmNMvp/2A59MO8
	 1B/lzQcsctFY0WGepolQQeHHxl+DGOFC2WQAPqOjwFOFSr7Vjbpk5yPxO6OBmltd2N
	 Fbziq1Fr/wJOL77cmzd0rE3INQ2LOqXytyub8RDovnsFuuGp/vN5BtAMAU7W1D022U
	 uvyfQy0j+1iPHTALRE9kC49DYCPRj18MBR1f581yVtOPZCaidH8eQ301CFzfjcCnba
	 89JLuNMtLictw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFB6C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178679163369.30358.1723290281765106150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb285a1edf2f4571bf7686d6648a4827ad78e84a09a577c77d96c66c0dbf8bc
Date: Sat, 15 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786791633
