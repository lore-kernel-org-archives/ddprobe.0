Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD72226D0F
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744124994; cv=none; b=eNU6BpI1bvsGbs/gLFNrJjBdFbXbn1ZGxzAeSAel6wfWK8vJ+EOOJkfEd8IX0ii3TYu8v98OBrp+YCeWQ9sekV3Ft+ZgDlD1XQ/4M5w6zQ9XL7zgfp6W5E7oHfhirxkqV9pCwTAOV0QWq5C6rsUIu0tMroJ7TjCsAeQr6S7Lm/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744124994; c=relaxed/simple;
	bh=K2ZzvOLsLPgb14HfsH/IRFUIi8olvStEKctcwe5fb/I=;
	h=To:Subject:From:Message-Id:Date; b=eHOkyXXFmmL2q1Kdrgkzwv9h95Qzr+xOJFYtlCiAjbLZMfNyWHbNARsPFBt4WTTjWpvIK+3rH9DarYk6Kka0akmHBYm3+237cAdd+sujsMW0+Dxf4dAbeFRiL8i44Te8BtA2w1/gZdWTxiJcHsZqP2C+ocgmy0f1M/JCrtLIeSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXTgYMat; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXTgYMat"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD2E5C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744124993;
	bh=K2ZzvOLsLPgb14HfsH/IRFUIi8olvStEKctcwe5fb/I=;
	h=To:Subject:From:Date:From;
	b=GXTgYMatK8u5r54yg/7jG9dgWzZ7BEwhq5wsHWWBoVknHPk5vMAOy9u85KSS8o0Ej
	 3iZ1ELtJ+qSsBmoewcXHcL42AXm2Yh042yGk9MGG/EH5g0qIDE7+AVHA9CrqbdvJs6
	 cklZYYG1/RHQg216SqEltS+R2LLUVAFsJ8ex450OvoLQNpczCjrk+K7NCBM2xDiD4E
	 jhe9fIksXF+DIMDRMql5nhvuRxsw0hNNAWZg5hm1B4U+Bj0gMxvtvVsgIxx2YIzHqp
	 0NcMlALvDmHhA/TxnXzPQqELBR+oSO3WG2WgSJvPn5Jdb5Gx9B387ZX1n9nf4Ksp0y
	 GyWH63GLQF/Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB028C369A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174412499369.10915.14780207322655980106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8586f070bf7328b943a3774fd589c55e8e3cef7799a46653751d30ebfc15134b
Date: Tue, 08 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744124993
