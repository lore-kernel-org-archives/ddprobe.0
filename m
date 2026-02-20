Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C6733E37A
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771584294; cv=none; b=PLnaij9wKjVPm/WCm/u+i6OIVWXrlDDXyfGv3+wnWtwGOlQpJtdayXzu8E3v4PMNBZhrghRosq/OQ2o6Kg/cSnDPgSvwbd/Gk/zC37sB8WTepicnBSWvMmFRdbNovoP4oT9hcWAtCy4lQuX1ulBkCpSRMBUBmecQI565vtAIcYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771584294; c=relaxed/simple;
	bh=2tjpwy3PPJZ/7Kna9t8n1xN74gXLBz17yyB21HAgmZ8=;
	h=To:Subject:From:Message-Id:Date; b=KnAjSj9e0IVK1FduV4gLCUiq/7W36iU1Qxm/nUxYPuAmRq5z4AcD1fIhYipeTmEX3clfVSKepnypGa1Rxr2amuq9xiCWU7Nql8t6UDKTDKQLjgSb6pgOjvOm8A5GLPndOpWZQemv3unbifJ0JuvvO/xUvicQYBw80ZKyykRkTeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/Z1czRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/Z1czRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A985DC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771584293;
	bh=2tjpwy3PPJZ/7Kna9t8n1xN74gXLBz17yyB21HAgmZ8=;
	h=To:Subject:From:Date:From;
	b=Z/Z1czRSVo/yi5J9oXz/7SX2/jnOtyaIPJZs8Vn8gWxxuCZzOpcssNcaRNnL4bPiN
	 3MVlA0YzkgIZy2NPoGXpqCgH9pgTxjTITnyk68xbhwfcAjZ5aetUm2JL0If1DcYF11
	 mWr/nXyVVWPAtlLsgxVzawX/oxRRwQoun8Q2wxJq+Aa7X8qZL5N5rvaeKxYh7OEOMa
	 8PIM6zWcGQWKIqy0f8ZDP+f5Crjp4jdD7nJflUt5c+pBeyA4/Kl9vK4UVYs3qHaXH3
	 164w78eFHDPhupvoaL1ZpeVgC6Rw3eQMjxGyjRFlc470mniqDEpuhAU5zeYjjEqxXO
	 uyV84tXFdklVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95681C55196
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177158429360.10272.7108968273441653051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d0e1d51e2d0b8666109fcb2c175ef18c5bbd3c7ebad3c5aee0e56d91bac536
Date: Fri, 20 Feb 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771584293
