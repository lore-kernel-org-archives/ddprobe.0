Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CAB48CFC
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777123654; cv=none; b=AXoqGFmjjF2nSjEIQ9wYstsMOy9xEbb7AmoMT9063DUBiaLC7jDpvcON/RYqnJBbM+1R+N+siIYMEgWayEMKSmpd6AQowK25SHKgqLWC0wVVkLZOoiaFir/qHKs5xrS2vkOuVLeXhWjyBuDH8P2fHWu35AuBCOFwhURbnK4dn54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777123654; c=relaxed/simple;
	bh=5vtKDvHI7iBBT6ADTCHS+q7L+DXqMghHrFRmixGyDB8=;
	h=To:Subject:From:Message-Id:Date; b=io84UpnI0NcU7fIl2liFFTq7ilgN4dAYfUFMEPmDlo2IO7fFMeX2bASJfnPXWI++Wl6f8GbSw26/4qctHQoKMJhev98uyE3z34QptOOSWjdxGFCZtIMLhF5nj0JP1yqCUwKGCgKryLJnbLUAyvuDbJvyNqtuciL2d+8sovLoo6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GaQ8Nc+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GaQ8Nc+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE7CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777123653;
	bh=5vtKDvHI7iBBT6ADTCHS+q7L+DXqMghHrFRmixGyDB8=;
	h=To:Subject:From:Date:From;
	b=GaQ8Nc+7iKdlRFlQv3jJC3udCE/LyZaM9IFuJJaezIN3hUvDjhsO5NXNcf3sud7vj
	 L+Az6GNXVCYfXkTkI6ot5z0uOu9b5UMqiPHRBd2iqgefOg1T5rChuDLDI6wxusRXXe
	 VgEnXH38IvLrf/lqZm20kbzfVHEmSwJusXKAbD4lhkv+SmulOhQwS1sGKbpBoHzpl0
	 hsUsshkv5NksVNu3lfqGg4S+cmMvh2VYtBGml1kG+bQ+NnLEV7Ob6pMr6inZojEhQC
	 sjv1r+uTgpXs8V2muMlbF5p/XzEF4LOlLdGGYnflHQ9g4nx2vG15o4ZK270ax/e6Bg
	 jlYZ2IibZY4hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEB5FF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177712365368.24836.6541353330537174111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04f265340a2377ec9c33fcb159f80723e5bec46983f92326eaf9ee246fa535fe
Date: Sat, 25 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777123653
