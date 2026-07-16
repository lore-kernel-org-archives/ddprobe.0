Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA1C364028
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 23:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784245114; cv=none; b=QaZq/+YO36JzAjEeFTCV3AEc4LJm3NTlX2W0nT0uKbd4cTX4njm5q6HwTNTzxot9o5hCanmjtbbu+mUKP1VPQXWssxNetAnUu0p3R4WuKHDSVOSZgMfD7585L2pvKFShshSsFT6we/EFjr7+2013r03Tkok+WswuOf5lfdW2oms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784245114; c=relaxed/simple;
	bh=8t74/V/tjrEOqHi2rJlyaau1yx7siiXZjO40aX1BLCQ=;
	h=To:Subject:From:Message-Id:Date; b=hZGuHG/w2ANoeHOyJ3IuB8vIu+g8e4tkLFJeu50EzMG8QyJDQhPwA15Q+m7jZNZ0F6rlrtGQYLHgUCmuTf4pCqT3bfiTPGtCdTQAXCXSv/fBWuuAkpBuoyI5uLguvGy/uWvJ7Tch+WcbZjBrm6o+z32WLD2FhzNcNpOhBIZv9Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eOnKPiil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eOnKPiil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA4A6C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784245114;
	bh=8t74/V/tjrEOqHi2rJlyaau1yx7siiXZjO40aX1BLCQ=;
	h=To:Subject:From:Date:From;
	b=eOnKPiiljlrrsJseSI45QN+HRDJqvJizHwGVQKQr56Mcnt67dOLlWFyGt4biaLPuA
	 kfTixPd65iwOwlZts1GXQcP5MNw19JpeDpQANrlVcHazfvA2AAEY+PBzVJvV+th5nu
	 QXCf5zwa8GU8xZEvDiTW0O5Uhlj/wCsQ5k8L5ZB4WVSwecQJEYikFP2O5wsQVNMeyp
	 HADFLzd4krOtDZB2SzPfJPMar9NSinwts9ffGWfaWySyN3XqJKVRWFVqPwEs9M0rob
	 5PQBeIh9a7E1s+m51+rCLaIHucP2uJMRIVH9z2jnb201JNB8GpnWGdgMpeV9dmLcuc
	 HuJvGwPKNoypg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA722C4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178424511373.6669.2608820822480670985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: debe0d9aa1cba09f7566ba789fd339673109597c5bf7745b64f01f31c1c6b2b4
Date: Thu, 16 Jul 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784245113
