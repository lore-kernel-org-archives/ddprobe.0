Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6201D9A54
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747703994; cv=none; b=eF9eJ+0ayFS31c5+rDcqE7GPWe7IZdavf53uh3fgNvO0va0b+II0uOcu2umkJyGHOYf/RqLbkYEoSIb6AmRCZiYlRrV6V8UOEHpHx4P5RTJn/rXdMasldbOxf+ufNs95lt7as7+nJjc7m9FEi4MIVJ4I1n8ChiTYG0r9mMK27j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747703994; c=relaxed/simple;
	bh=yCDGNa4GL/Kp+cLP74rfRb9U/oGOVlBgkh4vagRr1g0=;
	h=To:Subject:From:Message-Id:Date; b=RlNeNG3Oa84LA6ifY/XEqvnT/xRymDdUZIiz6Nr55tbEMmXZiMdSfTdpnSTWNnIseuBssLhncTZZl0OFbTc5wxOq8XRp5sbhXc23GgqpHzlukjmSBS4e8AE5Xn/siBR+suQJmBrigxs6RPqN4jubr4NacmwlHFJy+OxOJWxUJQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b30rGc84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b30rGc84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81F4C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747703993;
	bh=yCDGNa4GL/Kp+cLP74rfRb9U/oGOVlBgkh4vagRr1g0=;
	h=To:Subject:From:Date:From;
	b=b30rGc84HwhNaYL7V94KsAuMIDSLzqMm8Ld0DkBQUrr3074JiwFu5WUP0F2m8Cr4E
	 UsqxzwQLXt5o9s/EAjU3Q86yZ+beDqLVB4TQmBPYhrtb51AA7uDqQ3NkUdoJ921q0W
	 ykteYrIxOMhTSWTTRBBSr64NKWj3ltCzGG5C+/PNIuamdj5BasZAKsAdYR7u1lgbLx
	 YI3D93W1MvP5iPzPp/G1TflN2kNdsqxREF2lB6ctDqUzeGLH6x8JGM7qIh7xWUwX4y
	 WAktFrGOQgPKdQgKfpmePzSfFMQyC6KXfi9CEzSwT3/ExXZDxKWuzzEJrIN7O+ISzz
	 1fAgeaf8QNmqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97325C2D0CD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174770399358.3312.14823988376999263605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 442d61952978eb2e9d88ae2dcff41969ce615dab6541ea70e533b8b03cd7a25c
Date: Tue, 20 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747703993
