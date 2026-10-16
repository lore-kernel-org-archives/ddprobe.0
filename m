Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DD035E955
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792124434; cv=none; b=nokfgP6A69xqrlMHlHoFRQiWdT3bcZbOttJrAs1fMCCDV2zB4U2pgTvXIKdpzs/75VBT7uv1Nzjb0QaspbAts4BXlWeMlhneU/o9huPSRNZgD7mQO8PH6xkf3ybt+T7jH4ItUoeIgBr8wPCeqppY8HYXVEsFIqOqZiXYHJf0ucY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792124434; c=relaxed/simple;
	bh=V2sEYKKLD7061s4MTbIATdRZMYECBwUDGPkHIORGM5M=;
	h=To:Subject:From:Message-Id:Date; b=IbyA669MfDrgEPtPsNtM+W9AM4CEVAyYaPJW74Qv7PyJ1DfSeejba+CvH1+IjgLhmSXJ998/4aNQx2bDm/6Q/6BLvN8XqqV4l27J0eDaol18lDMDW3zad+SmtaXPT/qiXXfFRq0ys234YN+1tSaxjjjvCS8Nd8z9oJJH16Z3nGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSpqXdym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSpqXdym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E64A4C2BCFA
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792124433;
	bh=V2sEYKKLD7061s4MTbIATdRZMYECBwUDGPkHIORGM5M=;
	h=To:Subject:From:Date:From;
	b=GSpqXdymgIs2seIyaJU+dikE1iH24MK71drzVbiLZqSCFHFuCtKi35bWTz6RCgxU5
	 d4aI64aKCd0Q+MCd1rAR5gYp1sT4znIiOYBb8e2dmJoLupTgfJ89WZ/tkkew3b8iA7
	 9kil0w7o3iU+J5YF+MGDfl5CZAS7uRTF5o6Wv1w5Yn7jKCMJWT4R7NPprO9/tVwijD
	 dspvMldRo3x2KsfmAlMScRRUl/Zim92EV43U8zkhpK7J/QSHF4/rXY0V3EKGXl21F5
	 gbPoREBTCl2H2E+lzcZ9noHbdnNC2Lwn/H9WxZiyKvRrcSnO5R6g2lDxRvjRm/p02n
	 oZlJO07GQUPKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E14CC6B2D
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179212443377.18952.10613919585442259660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b59ebaa7f38400ed59d92df633523da1205a8db436a0b31cbc679e6511a347d
Date: Fri, 16 Oct 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792124433
