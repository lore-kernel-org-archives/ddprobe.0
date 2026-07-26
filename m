Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8E720DD51
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785105634; cv=none; b=O/t/hhSTMCGeDf3fCIzcYKULSlccrkaEZSuj15iLpZUPE4h5Kb41xXOlJC07HhajlRPocMrkjbSCEuzjf5aZZN7TA9dCMZMLMF1nZCETgfnGgdPenAs9Vxw0HS/7qBt0ixbi42l2E6FOPyC/4mzgrtinXA8Lk14qfHygEupw1tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785105634; c=relaxed/simple;
	bh=M/KWyW+YoSSVBFyuSIh+tV1N0UtpY1W+am9/70KCjDM=;
	h=To:Subject:From:Message-Id:Date; b=UJ7L6eH7aD31H/hoaHfeSx9xOEATNY9oQRTNk8HNU/a1k51+TXs0E92GZZuFdcPcmqtrYzZkm+6K+Ge7O6Mw2/jt1znGi/zzwiPo/+PWzeuw3WFGGCYmG0eVU5xhjxkUbjvBjOOo74wV9mxVyDaV4hVjrknAB5C3njOS1sywed4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtBorOv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtBorOv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DC4C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785105633;
	bh=M/KWyW+YoSSVBFyuSIh+tV1N0UtpY1W+am9/70KCjDM=;
	h=To:Subject:From:Date:From;
	b=MtBorOv+Oj73zfLV1W2z/t9uMpx1CiSCC64rRhq6q7A4GCjjrQeciVrJ/Yix5JuSe
	 lzio6zTnq2xqWqmc0Fc23eowsBxlJ8qoG2EVtAByesT6nmEha2sBlWHDHrR1N4gtt4
	 YJQhi3/H0fgVp2lAG2QvdS/Tjtqwr+2QcsIXZ2dy5fjI/T3rwaR62VeIlTiujx9rc5
	 t36uRMQcWEWw4h84fLhTG58zzVxjp0oM41EukdVsF0PTrgUzKKQ+kbs+nDfK3au3wp
	 sRZ4Oy8sVVVjb8JN6cPn+Zf5YNQRaHGA7LIIrquBrfMrW97rX36Pv6dEL+VT3q3DD8
	 do0BDU0YZJ0Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD810C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178510563368.22456.7733816082550893844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72bb745ab15378e0edc48e6f58f6f3f48c398a4b2a899a8932c913c5c719fbc
Date: Sun, 26 Jul 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785105633
