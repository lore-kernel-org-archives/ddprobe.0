Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E63279782
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759309794; cv=none; b=ohMFQpJQOB0N/fJce6IXXZsAHCGg+d3apBoPcAEtxpcnkq6pu6SXyehr7lc/VoY8VsfpnAa7Kp5VfPoMxnlg+JrDyqIHIBN6JOkfH9egeY9Ok9YT1CIXwThFtz2kTyUNONXIsOwpvO+Chqm9/H0xtGMquTfb+0FE7t1Qro/7OTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759309794; c=relaxed/simple;
	bh=a1JQok03BNvQtuyZ103fDZTqD3a0ZH7DtelLvyTTh9U=;
	h=To:Subject:From:Message-Id:Date; b=Q14PKvMAWLOWLnsxocGaUNpgTnHsXTQxLQHAmgM0JPenAIyXho4Qlc5e/gh8v46F0nuRhv80kDMpVm7fFMoe39PIKzSG3hhtmn6wZxHQ3ju1bCytmakf9Xsq9Z6/h4DWfCqGOrZtdo/x/4F/6zVl7wLRvHEVTW9bZLIuXsBudRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5LLi6el; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5LLi6el"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFF9C116C6
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759309793;
	bh=a1JQok03BNvQtuyZ103fDZTqD3a0ZH7DtelLvyTTh9U=;
	h=To:Subject:From:Date:From;
	b=V5LLi6elWFdkYgdS/zT3kmzwP+0QBpq5jAHSdSjB8iJnuaXlJq6Rbb1T8xblaizXa
	 josXVEziaXfKlbrHZuJe8UNAxemzlEnFXbETNfcJFb0GeTyhh/brs8vs5xjaKofJIN
	 k5mVowYhd901grwfBSL1mYzRtLgC4MwlFxHDtYM7o6FUCuaQRVtFd3bdv+V+SpCbBO
	 zX63Lx8lIRlaCNTm1QjhLjOUg0H/jPQYYwOqLwqRLBOS6PXnKrjXx8wtst1SsbzVUB
	 oggZlkD2lOD2CGcMq/yPtsE8lB/7/yD4Ey3Egsi6IUzz14DP31xzKorzCMbdloGQim
	 samWKmTrAZ8+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7ECCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175930979357.18148.7328153815319857392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e9d3455b95f0b5d6a7c019b0d5cb8407490a6d8c055ac19f64e82f07ce4ddf
Date: Wed, 01 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759309793
