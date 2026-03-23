Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098A72BEC23
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774244694; cv=none; b=FpFpUZvyFtZPBABLgAieHRxuspABUfBxq60N1Ub+j4nSUssLMwjDmjRpVF3E94mjJE49fG3OEK6XIiXZLMSoWXkuwONXDIu7lr1eFL89Kt0sSh774iLAA84XxZGXyTrCiqtYFQ4hEpx2yq/zs7www//rsOrQ+a6qriqlTPgfyyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774244694; c=relaxed/simple;
	bh=8HzWzx9njD0WQKf+yoJydHOJk3D3QQguAZGKmVEIvG4=;
	h=To:Subject:From:Message-Id:Date; b=og7jo3anjPUMY4q4y/yZCRm7pwMXYWCRFHlg2U+eIskvo3vpLyxrnxU8pIY4yPcv2sJvCZ6L19FXopA2T8koQWOCMw+6njzBeI1x2r2CCiA+R6Eup3cLFKfora91blkxnFPUM7hfjcrKtDA/919luIhdaVW5d+tJpPjfaXWygXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGqbvPqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGqbvPqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAF1C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774244693;
	bh=8HzWzx9njD0WQKf+yoJydHOJk3D3QQguAZGKmVEIvG4=;
	h=To:Subject:From:Date:From;
	b=RGqbvPqzkr7R6oUKeMyaxMTN8u4NPg71sl4iGSQewxPuh6RvQVi/c6JEkXX5T/m1H
	 32jGSwt7ZHyUIphMRhurAf6ORG+omSqkLaVdrdSG1Q+P16BW4127gLfA1c/AWRL5iy
	 N8fXWRDfGpkOxpJqRlQ1/Gc+OzeFKe3WTZ4ZsSGlzZxmdV+R7IksKG2JA8ZBgvXPXN
	 bx4aWH0FEbRcALtgXW2AfYtTOUrYz4XzviacKU5X7L2awouqzFI35Q5oGiwlvOjl8M
	 B/hnInNgOl39eAASUAsFY9SzXbQOui046dZtVCHEXKvqzx+0UijYIkHhhSb8oy1IjJ
	 4Yjut8oDhYjgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90758D58CDC
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177424469358.10856.16017158222248316758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ace56958c89437d156f301e1d7bb8b62ebe33065da46df3c6a2eee6e57eda76
Date: Mon, 23 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774244693
