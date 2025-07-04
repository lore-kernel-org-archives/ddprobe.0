Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C06F2147F5
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751659794; cv=none; b=fO8PONwrXXflR4tMKDihbV3Eze4h+j0Qw19CTyWCbWRwdR+n03s3eyGkQ/TdLnXKqDjBYvvufsL1PUf6HkSDkduct1usYSME9ZMTeBWFQhF38xoALLq2Uqsfx7gyMaKubrcK6IdziyEGCnagYosCBvt0hdSsgVlw6vooewc2TIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751659794; c=relaxed/simple;
	bh=l+oUMqg3DL9gV3uIYHELF/r/0VsAEuHF4EgYDhbKRco=;
	h=To:Subject:From:Message-Id:Date; b=YbqcwHjpbMba0n2abFmom8XnSBM3N37WhvGIjQc2ettGp1IUFArQNAAC2JmVZowM6KDO4i/FaNcJLEbBvRAb4C5N9N8V6wM0CFeKTStdbwxEXIhY1+C0OWJLfqp9D3bof6zS69Zu6mM28tvG02y5Iw37MlkqxkegEff5XtS17I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMbi4nyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMbi4nyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A484EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751659793;
	bh=l+oUMqg3DL9gV3uIYHELF/r/0VsAEuHF4EgYDhbKRco=;
	h=To:Subject:From:Date:From;
	b=hMbi4nyKNdVR8TBVZbVkmILBY7HKh9XcPXZ0ms3v0LBW/GH+kR8ltA2GTXE7W1yZ5
	 z3dqRoUzn4SLyOtcuzyqALsHaLxRpYczQLYUSS4GRJ7j/F5UVCJra2bm5+7DL/oI+n
	 C++MiWw1cd0IcN9YcYScqgHNTzSf93yaCGgTTsSAhpL8w18YNsDZTfJzK5wAUOJyei
	 wYV0N0NwORV7c3OUfMJElJNuynYKUkLBel6KXR2LoOUHjOBQjhCVE/muadBfSe5POr
	 Gya6UHcQH21nEbgFG5OAtMALTH8FhUpRbc5rKQEDTk+8nQcdhvIRxWdooBWxHWXPh5
	 SZ/dwrGOxJiXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DDEC83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175165979357.27347.13491501461242041068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2995d265b8327cfff229665ad6d36e11a51bc2e7e36b6b0e760366e07afdab0a
Date: Fri, 04 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751659793
