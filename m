Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7D43264FA
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774646094; cv=none; b=evEX3mZPMkhd189S1DmUlU93xQbaiq23k90674XydsoKCCHslpgcFkIKqjepjdJZpWj+94WOeC62/u9ZC5QLQ5P8FJCWKkGBRUrsM8gV6Pr90ENB6hjGCefXzgKeMUOz2eG8J8u4DSSGVpFD2CPDIG4HoAfoxFsbgr+RHj5z2pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774646094; c=relaxed/simple;
	bh=IBKNkS8WgVG4vDMtC/lD5yZ8ZQHn4CbxanfXvXzuh3k=;
	h=To:Subject:From:Message-Id:Date; b=QmHJb19Ez0vGWUZDllKj2mMR6gFv4HYhbWn/kujecCqtct7HEfNX0qmbbc6dyAEFl9J+/lbwYzDx2M01DvtivuAAtxcb3S3BTLdW6pVJgxM5DvmWoM0+gpK4rfsntlMC2abV9sfO5Dl71ZLd22KFLfeTboP2W1jDZTHzBNoM77M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjou5/Cq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjou5/Cq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A994CC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774646093;
	bh=IBKNkS8WgVG4vDMtC/lD5yZ8ZQHn4CbxanfXvXzuh3k=;
	h=To:Subject:From:Date:From;
	b=bjou5/CqVK/FMWdkN9CapIWdm5oNUWy6RG+mvQ16ILrBY8PpQa1DPkgun5/FMwM3e
	 sjZs8NOtkbZ2qsWgNc6oQoTHDGR71GIanWJbMRW1COyNbgl8KCAA8jRi0151UOiTtJ
	 O2ii0yG9TD5UQrn75NBynMeX0wj78Tb6Ps0YJ0CIPCmol2gVJS40YRzTtNl3DNfjdn
	 NWApfRScBH4Cujlu0FFk14VMULyrlI5YZ98SUhtqKy+Kf2B0h6PumY/GQFRndB4yKR
	 eLKzuxIao6neR+1bylW71oAnZ4IH93UoOOO+8yFvyslgZ0aobrn0yZxH3dLg7j6fWR
	 HuAY6qv5qOrFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FF910F286F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177464609359.4666.3719674768345146334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be422a089af11bd2f11702410651b0f586fcd7c56dc227dcda9eab68a2669ef
Date: Fri, 27 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774646093
