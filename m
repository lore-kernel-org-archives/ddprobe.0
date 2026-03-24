Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3962439FCBF
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774389294; cv=none; b=NdJonmnFubAiSuRbxLLZcU9ci7oV+vRkqwk1orio7AuHngeZ5fvP7vbQ89TdfLVJVJ47ft2O0YP6J3GcCrYHwGi/iiiDzvYkw/yYi6tL8EhwUeWMSLDwH/2Tp32QBCtqqxzxVfLhVzlSyMxu8gvs+/eZnBn+WRWac46nJzAjitk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774389294; c=relaxed/simple;
	bh=YMrd+9FvCg1a3e8Z4mxkyIRpdHafashJJapnaA+nVHQ=;
	h=To:Subject:From:Message-Id:Date; b=XgDUuYFxpwEnDZTck49tivEMmsH85i0WfpqTUBeASO/f9HxbNXM9Xprdy4XFBEBM0PQA/lkJkk46DkDDAQnigxV1IcphmnxE2bl+xGTatsg+OEZxIM8TXIY6TcmmvrCPolLUOny5A6ep9DDQrT2wnivBuXG1nIbUXdHuFe9uEZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RuhUzkdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RuhUzkdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6339C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774389293;
	bh=YMrd+9FvCg1a3e8Z4mxkyIRpdHafashJJapnaA+nVHQ=;
	h=To:Subject:From:Date:From;
	b=RuhUzkdYu6v/nyAFgcPza9Ou6JhUHV7/qeFMtMPHBRC2C9VJ4YmpYB7Z+5ob7Q9at
	 TPzmbFQiBMwE+f/+OKLZGLga4EdEBa8cF6GcWw/HPKSb15BF13cwYaM4pPsDTP8MuY
	 13wJ3CRiviWjoLWDzbEnWzBl5K5ERzgJL60aA+0VHUFgjZHPm3E01PXe4rYMtBOB+H
	 xDZyS+N+GNdPL1oXz6rrICiY1ugoYm9NXTwbG0o3DDQyGQuQ0oD38Gedsqm5xWPFba
	 JFmTApe9f7trw+SAlp3wmfvqZPgVNXesR5G1oIMwRNyf8SGttkr+e7hTfUV1z4cx2F
	 bwIXZ21yykqow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2ECFEC11A
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177438929361.25964.14463429469850232073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f520177751ba3dd90494f21b88d64e78c74c4353844e99e5518f86a6fecdb92
Date: Tue, 24 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774389293
