Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C29F3EBF1F
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770905094; cv=none; b=keucy14nv9jiam5vQnr3+2wFG1lozOAw+3AfQ19qgKqnuG0p0iMPLIMBSOexGGGGVzQKTK9/xkLfwSgEAjsVz8lhABfWRwTxkTSqapaUQlDIS4JijES3YwWSl1OYwanx2jlL5JqhqGL2vi7BjEd+iSfeO3XT1nlSMw6MfFlUWEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770905094; c=relaxed/simple;
	bh=bvWgXRMypMuTPp2tthgJtbvSCixALlO6BgfP95uQI4s=;
	h=To:Subject:From:Message-Id:Date; b=H/gsP2g19agDuJSQ9cRa3bdQCytHjHrM2aqRfG5S/Jd8jyfUr4SzZVeMqMAHSKt8Sz9l2kQN0pigQR5teYF75CZWM/YlcnzcfgLZeu/hB05hM+dqOM4b3TUkLzzSX8EHpJR60PYe2vlaXIiIDhCqznhqOXuwN3x9MhmIqa/Ozgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9LSN+U7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9LSN+U7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DE6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770905093;
	bh=bvWgXRMypMuTPp2tthgJtbvSCixALlO6BgfP95uQI4s=;
	h=To:Subject:From:Date:From;
	b=g9LSN+U7LWOxV+4LF4VrbWy9aRnTzyxCpFnT2jgzzshraqjZ6mOnG4xdq5ciKJqVH
	 0XU0hYVVS5e3b+kLcfwc5fBUXaSYiie8q7XG+eYi2R545okqNQvSgzYKEjR/SxFcCL
	 uS6dHJwq5cSyvoDcadD5cgMKWs1uJsJbHJ8+cFSqtqCaI2ZWuYyIpUiYsLhhi9RImK
	 eCD7jhevtEPH5nqqY4Ghk2JNXI/NF9y4w15hKdRBBsouAfI9znDDM1A7pGW5XMfb5U
	 5phcLR49MAP52KVRwMd8jtcmYQSorceazh61RVI23607ssnSRpPTQZsbhH//RTKJjm
	 8iEq6Y+XcUdBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C579EE3683
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177090509361.10597.18195584915936688863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f551132bd1a1c7cdac94df78118db6c718f78c1bce1ae1b937cba324b55e32a6
Date: Thu, 12 Feb 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770905093
