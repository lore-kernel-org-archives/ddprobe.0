Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356852233A
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732805154; cv=none; b=qClOMsEjxUgrlSyrVwxHitr6GaQwIQLV68wIYgrRKEqoOBQ66gn2b9ZdasHvQ9G4GXY4j+f96zpENSmHPRm5/1oSFLlX+zbO21s0QlB1PfJi72GLm/9G1MxsS5CClHHpI5asVnQMy4bmCnq3kJPsK6miTKCd/1EoX3+/IRFzX0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732805154; c=relaxed/simple;
	bh=eTbvaQdDWAoIESuay/v2VNFdtU0cuNepiiGnVdWoTnM=;
	h=To:Subject:From:Message-Id:Date; b=YtgGGar37GUrhWsV6uS/8cSZty71ESq+s8so5Z5jU2PSwrfy2FRQjmAppPgMNbtCJZOnqS2r8dzgqxbCZ9R5iMlkF2eJ8kdtTsFi0KA+4vHO9Y79/T1QmRbaWu07uR5MCjDMTKK3wQ//J3tHCHIkFpGJ5dUgRFUwOoER4qK71+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2w6WYZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2w6WYZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7CFEC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732805153;
	bh=eTbvaQdDWAoIESuay/v2VNFdtU0cuNepiiGnVdWoTnM=;
	h=To:Subject:From:Date:From;
	b=Y2w6WYZ77DHZyZMz+AFmLeCEwzyJh2Hy741uNVsUYNTkoQhsT/3VscjJW8esw8PN7
	 d0NU64STuLO1rwW2iVUtfn/E5HSVVFmSQEmLE5nnZQcAL3fE8Nb7FOD2cJdazlTslk
	 MUBXB14JGGbWnI9tMVFyka9xzAqCs/GOh4Kl6ObHw2HvFCbzh/v6Aq1lrwsN5SHD6+
	 zX6qEvaPkVyK8up1+jih7yB2YN62y6oufUbBHskMZ49qcSDRFW6aCOPlzXxFco0o1D
	 /Pjv7n71YXHprHYjoIqNIXMErDWKllBTwNRBZSSVNwzdUZR0W/mWt39MVx7qfWctZZ
	 mhA/SR/7He0pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B345FD69114
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173280515372.5023.18149330171515092965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faff0059253a2603e1d9998c742757b912906ba6827df3a0611410a3bc3a7e7c
Date: Thu, 28 Nov 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732805153
