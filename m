Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3076B384CF2
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 10:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782986914; cv=none; b=itglCcwIzVnVRiQv2dy/4wjk9umGALPwQat6M7sYFNNll3gapPlKYmMNbrm82xhJ0nNE38/Snoj8ZvAf+DtbNy9VXBjMEqCjldShcYACscidoLNJchKJlslrBDM3WvcnpoxanBuNVlY1KEcCQVCRNbcxr2HUrkLE+yVGJb5d5oA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782986914; c=relaxed/simple;
	bh=ngQogIdRW3ha2MZGelAZoWsyA1hyEYvmppEucY1s6/4=;
	h=To:Subject:From:Message-Id:Date; b=bvlRDDTkp6xD/kTNsurYjOguWHTQqaIitaN9B5YI6nKz6fsZbD3NeSnH+ajZQ2UyILxMyQNTo/p9ryk1luGRvRYIi30cvwHEPVcqkDac6oacS2WabmH9bQ7srQDZ9jkEGuMQUzfSBQr+PoPlp8Emx01RH85lP0Md6ZSd26K0GPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqoSSo8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqoSSo8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8F4C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782986913;
	bh=ngQogIdRW3ha2MZGelAZoWsyA1hyEYvmppEucY1s6/4=;
	h=To:Subject:From:Date:From;
	b=mqoSSo8cduOsd3lWNKHVRqgCSU4oeyoTDEGDIbqXkegxO5F5SVBkPizLf/6BUdw/K
	 sz/ifBXM1gSq7edNp8GwHFD4G6/gHeRdRetLwWwPGMHxLSMlbEIRYYY0FIIBbZVsSR
	 y/wsSsXXU3kwVUaKFbXzePgNCtvkPfZZ7yhGzeZ7zzf6NQLwv7s7BNMshKm80+GL/9
	 ss2F4aTD1/LGdk8MTtR9xDG+H8OghZcq5yekl8ZQV8UYizPQzoOi8Tl/N1Y/Fj5wew
	 PztlFFiAi3+hNhXWqYzZZPEn+0WyOjuKHiatzX6zLrtBAwLWpquQsn/kaca4cLRgWx
	 Hb8egGXfyABgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88B7C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178298691368.18944.10946212649388727924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d4ad09b0db0d58c9432690ceab003154ab5840e07809ea43bca87395b7d195f
Date: Thu, 02 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782986913
