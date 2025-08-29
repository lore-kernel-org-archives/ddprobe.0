Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238C620B22
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756502394; cv=none; b=AmOCzToc9/UuSIJw9Q6o/GVHcxqHZIRAzR1eZGsFvxdf+CQpZAV59nhrJmQ96Nkaffw8cHx7T9bwidD53rza7zr3MydJTQfYkPD+ugdiH8/iBPNtug2F/A7Xqk9cbfP4BWnHMX2P7hp0y3XMoZtyfz7Yfgc6CdQSuX2CGesidAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756502394; c=relaxed/simple;
	bh=El2dpMW15ScClF0rwCy5SXRV2RVZodFmCqx9V/I9BrY=;
	h=To:Subject:From:Message-Id:Date; b=Iqztk/+2WhuHvajv2iUBN0XJW6MJW1DNea4JXozLo03NqLyZrowbe+t/zrM+IDmRsgsr6xfs4dqnuP/qqHuj+zl3HziGSDobDepxfpePktgJl6Hc1nJrnYkS3UwBducb85U9DFsxs1NYaONkjN4rM5dAzepU03MoQXgkRe+yZlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G67llneU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G67llneU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B8FC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756502393;
	bh=El2dpMW15ScClF0rwCy5SXRV2RVZodFmCqx9V/I9BrY=;
	h=To:Subject:From:Date:From;
	b=G67llneU1bu2ekDlyVeSMM+Ixn1PF2XqqGmXvQIJ9MEn00sj7ICxI4NKBkJ0CgMgn
	 W+3RJEII2mABv74HA3xSMojpjdH0d+edmESeH3iJI5iGoBo3yyBy8n2+6WZspvzviG
	 2yzBPz3XMyBwoIj1FF8a3Roa0pPwGUbTKcNqBsePX6yrkFCO2+jJL6wZyCFQoPLkRW
	 QBEis8dMjtMRRWAnLJedEe2vfz+/PXvmSVznt9cMKle8bTifPMUDdtQ5mm6W/I0MWB
	 2iov99INNC+gSUW7cF1dh98qTPXLHmleG1RIwPcTpAJDcd+V4tJzd0fHDf3uOlszWK
	 eXSg6kNAI9aFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90211CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175650239358.6818.10801306861897758865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9b707d5c02c617626c51ee06f34ec772c62cd2cc56bbc04708f4fe366c834c
Date: Fri, 29 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756502393
