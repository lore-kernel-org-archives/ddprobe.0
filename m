Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3290F824BB
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728758154; cv=none; b=XdIr3GNU9TiaXIVjJr4nniOowAq6QXoDvLblg7efiOxbEMGDgLF6V0W//dGB+Zai8ib53uk+c9ruYK/oE8YjpwFwQO0Tdkk4awLHXhUbsV9wUSv385MhRtEdP6qUk5nCWvsdqnNDekiWdoXpFETapF4ut/AFWSyj4CDgsoX+hzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728758154; c=relaxed/simple;
	bh=FsZcsNsHNDKeGe+cWyWxv16U4cs2mx0BYeEfYS4gANA=;
	h=To:Subject:From:Message-Id:Date; b=B2lpttUS612s3H1oCiXTe1a7RsFmtDqHTBiTzEcXKXYNbWwvrPP0Clj1m2IbNp3vQIPBcSdt412DQuvRboY0q5B6pqpETO6YrE1FZOiLnTcB0q3mONU0pAy7sf8hnUGrSfpuoUiW4gkXVLWkHar60OG1r22OpTCBhdcfL2CpZhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1W+lj6D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1W+lj6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37FBC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728758153;
	bh=FsZcsNsHNDKeGe+cWyWxv16U4cs2mx0BYeEfYS4gANA=;
	h=To:Subject:From:Date:From;
	b=q1W+lj6DUE2TBcCqpGpPB80IBotlBYE+0HJu+DfJ6N4fwKBKuK2ciVJW+z425dEyH
	 9gj9ZH7A7SpOTPMaZApIBWgrWPO3MJ00OgGHzH8cdmLSzkyJNPuItQb/zeIGnYEOrt
	 cJFaK8xkl0sxhqQleCaHGMF1yGB+OHn64jCxFYaHSAYxuYrisYjyblLSnY2m2MTTj+
	 Rxj6FOxqzDwEMBPTA3SbtJt8wcDy9kA0iOpwsOiXc9Ue8WOVYzia1sX0F0TDwZ0P7X
	 hfxnV+XeyfX9ZUhJZ8XCKIgPBC3KTLiizQfEx/MWMeXFoJ7Mi0Hc06zhdgIHmc+H1Z
	 PY+Am5ojjAQMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0867CF2573
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172875815362.22983.16547795141661692770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae4e6eb2054a6b7eb6468cd8f0c629b4523f5f1a82731d8c30850ea8aed38d50
Date: Sat, 12 Oct 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728758153
