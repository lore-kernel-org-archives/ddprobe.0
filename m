Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A12B433A0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735805754; cv=none; b=ovZZCleYr8Q27k6fdgmSE/t7tWrBdHSHsIjLDd4ckwrjlQP1tMdtMggtwr7/tdMYdWFsrmY4guQaj1A97SK6g/U8FIO7Sv6wmzo+b9A9Mgg1GE+qj4Tz8xPaDrFzf3mnWtTnwMbEG0/GwJsnBmVvop0thY2l2TAvA9GjqNdwZcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735805754; c=relaxed/simple;
	bh=7gSzvzgtXat0qLjlZWnvPD5ZGjz6yB8rTyW6R775RBc=;
	h=To:Subject:From:Message-Id:Date; b=sCKT+9rg1PhcZ8WnlG06tuHejgdu+I9w0NLrHTtDsYau340vu6+dSJ/jCzzvKznW8UGR+i7qhYChVfcMPgR/tMufIDTIs5xXqIwe+T3OJwKKKQ7gCbaGRJdgxwoLw94ge1miMdMTXTsp75bNyDYUBnNkGMTkwH2FO1ZZtIQStRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFqkpI6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFqkpI6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96B3C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735805753;
	bh=7gSzvzgtXat0qLjlZWnvPD5ZGjz6yB8rTyW6R775RBc=;
	h=To:Subject:From:Date:From;
	b=KFqkpI6aLFqfAiSWdjOVmGqlwRC/g9P6vpLSoqt5mkOhgZGyntp1WCCgDwDErA0yW
	 caHuuo8FJH76r4Lwjnqize4KR47sINBkNgWegNim/OtXPeeofGGauxFlH+q6bExFt0
	 tzkcNNmptLdYr+p193mobbjsWRltc7cdx1F9JeWxp2M+gVrYSWIHQt12ysN8WNT/bu
	 7+NpGW+CeAh/u+PtTLk6lHcSjqXF9k5C/gQ9iyVZm1p0jU+ejasJwyf7Q3q7iA1csv
	 HO8bEwQfPaP3myyjwDz/d/nqHD8HORiJVDD5GmncqN4ebEG34rswi6HqzqGYvOQVBX
	 Mj1UvIziGm+Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977E3E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173580575361.10746.12108952285317501560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1791a32f2e3c239fd6155742c626fcd7948155889936da4a6b107958ca1006e
Date: Thu, 02 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735805753
