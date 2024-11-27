Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3415A2BAF9
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732678554; cv=none; b=jWTMvU+BuMDRgnstLhorDges1N5Vbgnuyf5qtqmb/rIQvMsWVr6TYN9REIQA/7g/plkuoALzyVyHxixPWOT3OyIowd+uJ08PjIdI77UMDgYrtw4+TFhdzXDqij9NTALqNZHzZuUkH5fQJpojvZqr3oq5yfy6rip3NaKBoIH1QmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732678554; c=relaxed/simple;
	bh=RJKzUlhAncgRwzxtSjkis/LvGwEjawWUYDiwUz+5jeE=;
	h=To:Subject:From:Message-Id:Date; b=Dt22aiLHJDFszaMShtGVmtDx8Ek6n8Pik80klaBh1nuW7gg96zFseNNnXJUin4EfIZBUghILF+CznMUWfrmhpKf6g9NtNh4mGyFYlHC+M2cRoCKQsIh6qPGtOddnKcgn56nrkucDQbuMp6VNZ2PVPOMaGFuYxPV/fPEsfPNQYD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BF3MXPy+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BF3MXPy+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3901C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732678553;
	bh=RJKzUlhAncgRwzxtSjkis/LvGwEjawWUYDiwUz+5jeE=;
	h=To:Subject:From:Date:From;
	b=BF3MXPy+msUhkIc7He7dfbRXFycJyV7RY67kMJ4B7MNTEdbIiEQYrUTzZqMgQzukx
	 ezfRWmQnsE4XR7f2o1olXCuDcUrUNDBe/nMCBZTdfI9QmJutbV2mywLASzezhveLEy
	 9wDvFyTyW2bTzDqnRn16T831AtAAMw3LKbpvalIwTi+7AFAsBRCGIx709/l2ti4xT8
	 2xHUstVO7HRyet6ytFu2Ew+vrluu1cHtgNEFTr5ye858F0eza23Q8QdV9lrNPU/Lfo
	 nGybBcWiYOoZFWTJoU9UzmqT9VT2nQq5SYAYoVSxLWaUdAiF0VllhSe02pdNbI4d9v
	 YpMF/oml3g23Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F491D66BB0
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173267855361.376.11426388325889995592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02edc6eaa2e4e26d3f724ad3d53122f4a3ac9f10b53cdcb5d6b54a17cb8aa19c
Date: Wed, 27 Nov 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732678553
