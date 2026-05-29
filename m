Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EFB332EAD
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 10:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780051954; cv=none; b=uTYdowb8SstEwVpAjXcQyKfVXXIYs4fKZ+Z7vSwufx3yQse+0rv8fSMN1BzZVHILc+6SvcKrRD3Wku4FEKERoFTB98IUf14YWjIauQ9herssoQluluak5jwGQAnY7BeGtmg/rhgO7ZIi7bwdRTNtLBvAgQTzRrgSPj2wkXkknCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780051954; c=relaxed/simple;
	bh=d1+5OssZtaLFBCZstL1E+bW7HoM65J33qPcxa/yy690=;
	h=To:Subject:From:Message-Id:Date; b=GqmeiWdKzbwkX3PR8Wkl705DcrnqMKgx570erH7WdDm2pxBaPYKgZ9NkPV8VavjorhLhzO6EDktJFJQ0YVMuzi0RU3aLfajS7PvEIjgRbTRoYr5qc0ntsUoeGLXF5AjiG2xq534LMfzMHnR76vd2KuanNXZtN9FPwuLVXA20dy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMqhbXBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMqhbXBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0964C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 10:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780051953;
	bh=d1+5OssZtaLFBCZstL1E+bW7HoM65J33qPcxa/yy690=;
	h=To:Subject:From:Date:From;
	b=lMqhbXBcQwJEkTbovO3k4bVO4NmdZQRpCefV+hzRAfeLRNDmils3k+xDhLwim/Nq5
	 DKtprNrzds6g3PWcE0jg/SJlyeubDn7Z1b4CqEPU6LKYO7gN1DgC5e/nlnrZd1Zusp
	 g1wAvSVkkHACBNG6+ubZe+K4O55sA5YXUnjUGWbOl19YVPpSUYpQWpNdD2fZzJU5Wt
	 mNN7HTsZT5eGKYmtf52YGslXgjgvmA18d18YGSi1r8wgj0NFhsbFSvBHgb+bPEg2ny
	 bUJhpcxTgJ8zvmX8+I1MpMqP2GRFFqpdFmpKGXHJr0p3qdBlFjDalTcfkImklGiLsS
	 pM0dpbjM9JANw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B9FCD6E43
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 10:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178005195368.27816.5171952840623881235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08f5356e4aefabc1564f984cefd43612322484b55bb4bc4fecf494429ef6ea0
Date: Fri, 29 May 2026 10:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780051953
