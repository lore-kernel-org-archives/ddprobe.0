Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546673C10B9
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 22:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788216635; cv=none; b=WbMPHqsZT6KJhlY/KpXfc3A0GkooynaLRwDirYdISnVB2xtTdTolme9Q0GiJXsdKDJvVePhY9XTZCsPkxTRwCawS1BXsd6jPHUwZj84XKe7zNkVj85YGlISirSHW2Qat2HOmotLSx0ozvgxGGXK6E2gs4NaHYau2WQWjFN+HctM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788216635; c=relaxed/simple;
	bh=LPGT4w5wOSx02HAKnUj97hFG3qy9ctapZETZEHMr5YE=;
	h=To:Subject:From:Message-Id:Date; b=ajOpn17MOTbWi5oIbS8wGudCSbbRATzbpsLwDmrl8ZHF2b7LHiumsJ9HQz5a4irGGgz5x8+uaPcuymEVe3GIhVMmCbjDpKNYT61imG7jeTB9BnP9u6Vl0mxddAyXWwTtOLicQgIlbScSLXurbNA7vFeOYVS8EHXsPyliM0ihSDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yq5dIhXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yq5dIhXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBACCC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788216633;
	bh=LPGT4w5wOSx02HAKnUj97hFG3qy9ctapZETZEHMr5YE=;
	h=To:Subject:From:Date:From;
	b=Yq5dIhXhdCAZ3oAD7W84DmUOyFdkc+VKP2lIhSr0N9PbJ8MJ1X/CwT97k8rqjDGpd
	 0B5V7mt1PY+K7wLs/zFSI4/EZad8Wr0waZnuSbf9OY4v9zwqPnrxzsaz4LhZ15nY2C
	 SEJyN2ZhJaVfuZ5X3Yr5d/iYDA9NMEE4XC6UQMdWINEiYB5O+zMnSWEC4YKlHn4Bcz
	 V91LQUNzzu9tscX+VuB54lnGefucMZCrEiCaXDIDWaA4qkuqprJLF0D0Mp8tEdn6SV
	 peKASIEQ8Qn4Vg/7VPkcdqYQMQ3tyfo8tClyJ9XmGMLj0yB/T6HYd8GawIflpU5Uon
	 Ii6V+VR18hV6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4F8C61DFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178821663368.28687.6316561108240076193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0630cb2dfc87aba281ede7b5bda38855e5e9640d23eff29fa29b583dbd5d41c9
Date: Mon, 31 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788216633
