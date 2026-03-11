Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387CE355F37
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773195294; cv=none; b=e/krgtANvOiFayxQZq4qUUDlc34yHLTfmguC+5y/P+wt3OV/0IfE/ty68unJuyw9vzdxTrp16RaL13tI38MaaN+k+6ob9OqpzpWJCTVHkbYe6E6Dy/lcS8lHk+TYxMbrO3tf2ZV4VE98ovGFVE085GzvQCZjcMszs9ueXinwbNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773195294; c=relaxed/simple;
	bh=OSDVY450+o7d30pxeWm1RQZ63106JTjLVSXlG5rIzss=;
	h=To:Subject:From:Message-Id:Date; b=dqoLwhfds7srHUGVmj6+JGwKGVYmd2Lc/x60U2wsSl/3Iy0hvmQ+dRm4tXaZmcI8zY1SjUe3q9lQpmB+eFXxe9irsVnD/Uo6ES6wWon3MH61qeJxxHWN5u3iy81YS0RmM0witYOfGH0q7WxftaeimMlJT3NMr/B+bjX9veQqiAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R0BPuxec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R0BPuxec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1658C2BC87
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773195293;
	bh=OSDVY450+o7d30pxeWm1RQZ63106JTjLVSXlG5rIzss=;
	h=To:Subject:From:Date:From;
	b=R0BPuxecvT/qn4ANMxzJtAllmiDn1BzEqzLEGfw4EFVLGayd9lQ9w7+xKrsEHDW6i
	 Vh5CfEduDC3gzRQKLyzZAcrdg+hgJln7z/Lf7MapKuZGJWQUX4onsqaU4oa7L556h/
	 xUSNKdQc4t7yZrqj+2jqR0IGHr1s2+9mJT705OSjUBcQXW8w0J1HJiUtQkXr1YbGOv
	 AdSg4Wh68YJU3eYMu1tLzYQce9vVgu2Dt4MFXXufn2uO3AOeV0FDFe3FXBxL7+IxbW
	 1qACdwma6B+DSS/9mOmGxWzlhz3dFK2WtDroRNksNmWodzVug37LBtL3FnYEVrR3o6
	 nBb6LMKDPf0nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D23DFD88D9
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177319529363.19926.1369475704692065714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90daf056349ecf33b46ab954b51d86c9484aba74c41439508ae561399b2f7f42
Date: Wed, 11 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773195293
