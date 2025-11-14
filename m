Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEE032D43D
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763137194; cv=none; b=m3b2ovezLkz7SQwgDHoD+WEpzkSirHq1sN74pHu5nsNDo2gTpR+hpifLYRY1ClcA/F6Mv6eLIYCB2gUeiy4hVhRoECRDv73BnD2OfJxI92IEqyRMFRRgKIl9fWZhO1yYHCFk7REa6tpKgKev3RHDu2bp3hUhbkkzAx4ys4eFAYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763137194; c=relaxed/simple;
	bh=G4sG7+iRgGxjf0dsSDVB4H2LOeiEaF1V2wXhzCILzaQ=;
	h=To:Subject:From:Message-Id:Date; b=FOxmQF/54Urap36hjVE+HRd9SC+LPp+pU++myDiaGsJp5e1rareWTIWw8CfduwcdGkY0qY5tZiNO2XTGA5q1jzlH/z4Ai1cJNGmLFbUeKj1Z/ll1IyVEKyQ6rHWjqxAOJ+VjYQZKTSNI93G+iPSodo+7E4AAtPIbZSotIbJ7kwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRkxt8g8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRkxt8g8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A077BC113D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763137193;
	bh=G4sG7+iRgGxjf0dsSDVB4H2LOeiEaF1V2wXhzCILzaQ=;
	h=To:Subject:From:Date:From;
	b=oRkxt8g8dLqDRfSra8f5WEENlZ8ZSE1PqPtauXrN+zeUjRJ2yTsqya2SEd/NR8OTM
	 raoUkPEZs+XhiG163/FDMjPT+tScTxjlWJukMatnG8B/DXM4mhZMP37Ps/xE+ASa3o
	 Og96fesuI5RPuEEY/1xSsJ2K+EEZSalFMEwrS7+h/IVe9AdkFleXcDumzCrd9thqll
	 uI4/j7jKaw1cvKVCav+eWpzr1aY6U0lOCLrve8CFU1jyti8HObCd7N8lFnfs3JYpNf
	 PGnYrAfUTYXc+CkYGHq4ossPZ2cibZayugf8wPHeGq80v+G5QfzYCCCBD5KhByOrMF
	 h3aGpFx8QPlRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C9ECE8D4F
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176313719358.25579.1416899876615222627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b0b78831880a7e6034db88776056d6e3c2d03a51bc92f75875209935c0e64f0
Date: Fri, 14 Nov 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763137193
