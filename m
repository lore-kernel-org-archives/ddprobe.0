Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA732C08DC
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776379054; cv=none; b=qBwcc5T9aHnJOYR8YuJdGpH6OQG7vrLsywpVtETXfN0nq0hFD18jt4HjBupYzbS+/9jiK3bJPiXPW3mgNPIi+wE9F+DT/K0FyWQgWkgE3e98TpKgES/p4YIjf6CdZPAEpVwf/7qaLYulx1sz/DvguSRXhGwws73bdTmfUycch7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776379054; c=relaxed/simple;
	bh=sMddDF7zSeRIFtCgZwy5ISBJ6JDukDZ5NgkATg7bDyM=;
	h=To:Subject:From:Message-Id:Date; b=N3M3CC3nnE1oTqz4bGOfjQHnkjW5c+gFTaTr6xtwkiiGgPE94kgeHUHigvV2u5MUAScWcJMhJRPRiBv7zjurnUtRlQP8VFHoIYUMvIx7kGGAAScXtu+o0iKbMR4dhDrZWV4GZKFB4OgmynIqMEnL1/DR+e+Wx8k4Fc8a+EWzWTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vlw303KI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vlw303KI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C219BC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776379053;
	bh=sMddDF7zSeRIFtCgZwy5ISBJ6JDukDZ5NgkATg7bDyM=;
	h=To:Subject:From:Date:From;
	b=Vlw303KIONli0v/16tUZ5XLj55oSZK+4MpUV/xPFaS+X89sE8WzJRg3ypYJWoZDBT
	 L75YhftsXhv75Q0EDt1YkgOX8qXgd3bnD77tvGah6WrFc4ikqSKK71iGaSNaQrLni1
	 doYmBGye0c9CmsYyGPR940mpftB6VbXov0UYtyFvWNh//NGvX8yaNrib2azMTN8cC4
	 0QnO82VqhDrvkfctwqGlCnyBsj8z0+Ftm1NL2E72hTzUuIhz0PvanZ90gW2dwmONU/
	 IwgaCgFVWs02O6yC1C2r+fYvXzGhLJaRUHXF5GXkzZ6i0pZgV9xdh+Lr/ePBkPtSFI
	 ax9SSKcLt/ZvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC406F8E489
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177637905368.5519.12926074538858585200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c17ea815c25f88bab355c18d514ee3d77e2978581fdfa89c499dd1bd6c0245
Date: Thu, 16 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776379053
