Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDE39324B31
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778129853; cv=none; b=Zm0cBPnRXMfnKjcG4kdr6kDj/AgzQrPFBGVkBqy99/1AqlhueqQmD8T5aT7w2oq8gljA2foY4QF2YEvmaYgvYjEq1lbnZSK39LS+SkiDSqnI7ld5Yb46DxYVPY/yg+mf597IlC9owcXZ1I0Itbxp7irTgf9q+R171OcwELtHGwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778129853; c=relaxed/simple;
	bh=MTLPHMEQyMIlndYKRNl3swJnJp/HuJyR4nI1kNh/5ik=;
	h=To:Subject:From:Message-Id:Date; b=u3EQfHaQ9gwR4QZRhK/DeVtsmmOv8nsRUc/qe3I0iGOHNhLs6873dgad8kw9WC1edYkZnqIPWCNRzLjVQ3W0SM7Aqdwzaxuzixsbp6XocWQxdLFz6s9+Ja7/u6lUzYrw9EFj7vtc9HepFbGJc5zqofrOTC1NyRTKLCP1RiQ83tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8Sk/X6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8Sk/X6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFA2C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778129853;
	bh=MTLPHMEQyMIlndYKRNl3swJnJp/HuJyR4nI1kNh/5ik=;
	h=To:Subject:From:Date:From;
	b=M8Sk/X6Vr+TLaI1Jff+/SEqdhiWW9TxTdtA+6JOzetp+gT7N4wroMUsPh6G2aKflq
	 lD59kv3HARP8TDhcvpIRPF3dgHJSPT9KNzYje1XL6xPaX09bOhwIsXxmTL+9a0x1Ua
	 LzUfIeRECH9ibpq2ouqjmuyUkyaw78HPTOsgigFUB1BmHIcuk8S7ro2cc9K2rT1j4U
	 lc36ebpnCxIDRUUjYHbgvVBmHm3r6Pg7UonjQHRfFFMMevV5JvtNjdwWSi6fntJAuv
	 Itlzs0prHZ8T14XCCkv0Rtcp9Pyky5R/mR9wjfdBh/vqSpW/D0pJg5q+qBHMYxRBID
	 JEhdGD8X5VM1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB00CD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177812985368.20618.8746353125262125381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36fad5e18944bdfd90e00a23e745d1d8514b0261dda57c33338e2de028fb5cf0
Date: Thu, 07 May 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778129853
