Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061581A6166
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722357954; cv=none; b=HLmWBiFpiVqaCplHvIcIey1GJg3VTapkyHmgfZWO2FXGS8gQywPhqqZTxphs4YG/INMKm/nz2B5bZ475rpTi9oFfc+W+xPv6jGZSeyQMYlhf6Li7LuAyj8GIXne73nFrtuYEo7WEccm6++YD9MkTeZn5E3yE8cO7OVOsETYvoX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722357954; c=relaxed/simple;
	bh=Xh2PdTmO2TMfRUM2ujyqvtVmezwA1jsgtZJ4cWj+LsE=;
	h=To:Subject:From:Message-Id:Date; b=XfPYMNTux8doV9w2AyrXzpqiVC4u4qBBSXMXbZoZiABTz4+dh7WBeUef/aoNKr1307vMG/UldrWwjdmRYAN39beLYI8JGFEaR72WA4dWM9P6IAgQeKYgFUAPPPaB8RYciKuUYa3eWVearmheCOjddZ3KEt9uRke6mHGCf1KCZjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhuMgmlm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhuMgmlm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC287C4AF10
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722357953;
	bh=Xh2PdTmO2TMfRUM2ujyqvtVmezwA1jsgtZJ4cWj+LsE=;
	h=To:Subject:From:Date:From;
	b=nhuMgmlmw83Nzoafm5MvzPD6MRwosfcIJ5e8Fv0kyTwWKNv+600o5eqScOXfkwZZT
	 bVqbOSn+WI+1F4dXUxtdba2njKetKYb86PAc9vQq+4nBs3Zy+LEw5kj3NU/fGO7cBe
	 FNCXjzJmtwR26Vti8ZNjFJQ+0seVe5NjQWX/i/w9OrovHKh7LSgMqqVB2TIuaoPAzU
	 hmKtOZx+Ox2JAQ0ztTJ2ZZCFPWnAm5kan3Aw/JPRi6lU+h1pLU73YLclvnnPQM26tM
	 P2+UIvjO+HxS4hsPFEOYoy9mczDryIF61cVIXH2/jRnu3acm/YovsqSvt79zqV7Wbf
	 f5zTxDnulAy1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990EFC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172235795361.28730.16345026299583662733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba0b73b2534f0ef84c897ae1636380e69214a8bad4a7b4f82f97073fe517680
Date: Tue, 30 Jul 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722357953
