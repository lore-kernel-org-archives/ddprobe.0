Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BEA33B960
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771871094; cv=none; b=aLYWqA3zLyDG6QwaXZh6lm/zZhHiAGWJuWFDYHCiWIUbxABk0+LQiOdRagoI+OFpqKSqhhF4RhAMr9gvaNnNyDiRhRhcRvvWVp6I80tV1ahA3j+i6CyFE3GNU7bEo3kSTr0VNQYHYXAxDY9+1GoHtGfxQmqBnotU+z1eGX3dhq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771871094; c=relaxed/simple;
	bh=IqNXrDAlLZtfi/3Ys6cgQIjfiFunhCHe50nWaQ6FLqc=;
	h=To:Subject:From:Message-Id:Date; b=RZJsglp60bGUMx+a5WWparbix0lIaLpbS4yoFjeiCxcpxCzAs/b4HDaiY1Pi3hWTLchjSpoJGgr9vsB3yHU6iz2wFvgV//XLRK0PC7w04CKTccftIzu7NTrWQDtvzlby4kbc/luTkUSHZjuzjaXNhSmGsq3DQ6JK1ZlPpa0JQ6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5UszDGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5UszDGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A499CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771871093;
	bh=IqNXrDAlLZtfi/3Ys6cgQIjfiFunhCHe50nWaQ6FLqc=;
	h=To:Subject:From:Date:From;
	b=f5UszDGj2MtDO4esZKUUwBU6Mn2jh+gV0fYhpRoajzRwL5hQhR9iRJRdGDD81dZyo
	 uO4WhEL5siDQuxPeC0T2Pr/sIpXDk5jhl0fa7usxkp1sVmlkY3Fr6yGsmMgctOFx9k
	 /PFjVCOyd1GLW9/EJ1m4FGdSP6yBXYnyQ6Ksey6/1ofif04We26hrIIPPYuDMCnHiu
	 5+jAdX8pNCG0nl2trs01PzJuRewqMKt9jifMI0Pe7lEl+1FOIg5qcbaaY7SnphO317
	 Zwfb+HZSzfhLfrLKnuSDrqNgsZ7Jvc6Ng2VsnD1UAUBaK+oh+DxrB5LQLGfsNxEm7L
	 dGQgJo7jXkmkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C9DEC1118
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177187109359.18654.3452247892927201215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bb019c0f9b5b86fc42fccdbe407b89f94f1529ec796f541e51a39dc985a9116
Date: Mon, 23 Feb 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771871093
