Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC900346AFB
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775012694; cv=none; b=plyivWwF3mni2JB+XtWl6huSN2qjEUhsiLftwTZWrg6QTJ4CEbrHqhcfA45JTuuVoRLQh/QO5FfalG1ydVbzLsKc3ujUiPkNEVW6myVfyqaMiEflxQHAs1XKSsiK7oPWBNqc6u5xC66zS8wcBNDzgSEofj/SrFfdwhFTiL0Mtf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775012694; c=relaxed/simple;
	bh=+/a21GBAyIDE2A0TT+tFpwRzmq+tY8Q+cBQnZyJgPVw=;
	h=To:Subject:From:Message-Id:Date; b=dOG+x7qalYKSkH5ESVgZGrg7Zby6g57lUHD6IFp3GOAST8E9L6YFxkJRj6I4Mwh/GcuPt5GmWBlFak/7GsL2OojT7EYEtDg9d1l5Rlfbz417XvmeZjGkYxsDigNgw40f7IK5JrWf1ZmlKi2GiPL35w5IOtH/gEXGZ0iu1OZz8nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRSqQ17K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRSqQ17K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBBBC19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775012693;
	bh=+/a21GBAyIDE2A0TT+tFpwRzmq+tY8Q+cBQnZyJgPVw=;
	h=To:Subject:From:Date:From;
	b=rRSqQ17KH79ZPNmrsCDKo1Oi+p5rFRc/hHdd3f6t9W0zYe1gJ4EoKodkUR7a7+YdA
	 s7VcLkOymw5FlZxwucqOSgwK0S9wDC4CcEm1wkmJDdEWdb1RSlsT8+uhhcVknymUBX
	 lSk/gBVXfx5EynCc5mIoW0G4MFRG/7uJt73lCvna1QqHEsSozjdrhsfzvruQv5D5Du
	 uDe8rHHoIC526tKB34hFeAapghZcGMrSGj2MEJMU++8VRjVHxcPpryHOOQD+Kwg989
	 vjek37hDOnwO3HnzztX/5eudEgnyayPWTOyVrNbJu8zljrBjJjfJvamUwaURDUbv9N
	 0ILZYK0xpEJ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995AE10F931B
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177501269358.31930.7516480999944923216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca7112022bd067cccee3a6cb18c1ddc83cb1660c7c4f85c9eb27a3111474c4bc
Date: Wed, 01 Apr 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775012693
