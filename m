Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0150B3054E4
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 21:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775253334; cv=none; b=Shw2hRtyFF70oiXqfnTEoNUSvCx8W2ZaKUcNCyMOH+ve8/aoMrin0ygUPHPxuWBh/8KRqAUmaOOZXMIDJXwnBsJcpfsvgBbrbdFtpiLhlihtwV5J/1dqNdsflqSDX/c1qKfOpzigdpVIR6iu8pCmoYOmBId4p1SDMhhH+cHIrbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775253334; c=relaxed/simple;
	bh=3NePKU3hg+LINnyX8Rf1PT5RdK5hGY56qTdYw65JVmU=;
	h=To:Subject:From:Message-Id:Date; b=UswXp5cMYQ1uoZt3A6iTmDhBJu8nJey4MvRIRNtcPtoBHhAxP7RSSK4q59kevVyHtnIA6kcVjZRjbI7yjJ737CJLESAGNnU7jwbD/3XWNE821Jb+mhRCHiy1Lk5JP5kVhS0KjS3mgyCe5zOKn42uUd+S0XdY0ROZXKE+y2+VSug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tcmi1zft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tcmi1zft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D52C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 21:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775253333;
	bh=3NePKU3hg+LINnyX8Rf1PT5RdK5hGY56qTdYw65JVmU=;
	h=To:Subject:From:Date:From;
	b=Tcmi1zftWRuxhUsBzQ5LlUBlt9PAlQOqJZxlnp57QG8yXDN/DdGK0LGIn8GCytIv5
	 0+XghXZGFrXSn7zpmzGFBdcZcTizzQmPF4VqtpufarSfjh0juYYCJH0oeJ/09kSCqj
	 vTvRiBqgGj3g6L/ekjqNIP9970aItM2eFiRS7mbw4pxse8Gq4BoUl5AH6IeDqRl0r5
	 jVP6Ny9pC8CY1V0apSpOumqrZGgMdo9x8k97hqq4N/1R3nxuafRz24pEVyCRkpf9gF
	 kA+0m3HgvsJRxmDrjPb86e7/qHqskkTSfj+dXcsu/K9OEZXWMGvD+gf9KCQhoSm3p1
	 CiEkEkQ6m5HJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A9CE88D63
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 21:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177525333369.22957.14864482221558810931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bdec6ec983d4d6c7c2660f93d8434465a518f1edcbe7373d741b53c1c8bf7b7
Date: Fri, 03 Apr 2026 21:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775253333
