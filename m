Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276C23101BC
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755589194; cv=none; b=Ui/tEqtYJDSDfc1qeFIRTIDtt8nZSB8QhCcJu4w9bMFBZTv6+OPCDMHBSpyHh0wieVaIH2sTK+mswg/oinkN+2gjqnlZHHlKqCHxXLIRHDpNZbt2lLwsW9CsSqGAil+mKLkRD47oaBpIClJTSEwBmciHW05qXiBsciwedtC2g9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755589194; c=relaxed/simple;
	bh=uosYJUlMFbKQpEgWebK7l2PRptGnXg6JyLhXTmM1oIE=;
	h=To:Subject:From:Message-Id:Date; b=DQKCzYuo11gS+Fe1cTRIrz2sJuw2Cm1DZ8Eo6w8Yt7xdETdrD17nZAkQColkSE2B2ndonQN+oMesBPYFxT185DVhudeRrohZzbUtdWdVU5/glfv6ahPQ6je9YT05dEWb9/kpw4Bj7V2cbe4JSJl6GDqoRJlRtPmY+LN4+Mj566A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYw5OXNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYw5OXNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1111C116C6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755589193;
	bh=uosYJUlMFbKQpEgWebK7l2PRptGnXg6JyLhXTmM1oIE=;
	h=To:Subject:From:Date:From;
	b=tYw5OXNMM5tVO3g7Ixi92MaA8Fua24lhIfGR5/ZSR71iY8eB3u3L19+nMRE11UgXp
	 JwTdXlX3vhMpKOWBTHzohRYyc2s/+9Yvq1LkiKgq6mjZyLfbfaiOBg03bh2g8TVuEc
	 C//Xl6qeEq+AcVlsN1k/Gxw++7zhOLEbw3ULnSBd0RH8vWXPCq7SDihMkHaeqM5+8j
	 azPhGgmxF+zaEfNtGNNaxaNR7x+qj9rQmUCJ9v4Ouab64ao4sYtIsYaimMaxn3JYcw
	 QvtVK+GCOuJ33VWuPxXlWycReUqqkshoR/UnQBGVFcXDcDpc2Had/5MyXGKCljD/MG
	 w/HsUaHAi0Zyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7BDCA0EED
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175558919357.2460.18332380745115197416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14e363a4b39a3e1b0b0d682a10ed55ead213f0320a8cf6fc1812cb546b44ec52
Date: Tue, 19 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755589193
