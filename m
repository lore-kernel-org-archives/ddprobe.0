Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1EF405F7
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753583994; cv=none; b=KQQEazpwr5LfN53GHJ3pjTsaOh25+86Mx/RvctOlgfDwL+omnui9tLZQ6dLoryrOMoIqVywmB5d2fwg8MZ2IE93DA5yzQgir18pbDm7Kv6jPeIHxk6em/J21mqs3HXEnohn1WpA+tNZvTL9gw3klvK47ChAXBu0zn8O5X9uxNvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753583994; c=relaxed/simple;
	bh=yqWUXjFDiw3jP2uc8StEW9i+Yl5vtyDKqwsDXCU3gDA=;
	h=To:Subject:From:Message-Id:Date; b=AA2hn1ttAi9iJ1epMulWPbW4Ay13RRX1/Bvd6XPTC++D1MA/KzULnXP03qeAOVGpEtYmxRek5it7q4gaasIqfW4oSSp1k4AIYK+m+ooe8+4XozcFW70ImNzGj0XzeYDT0LHJ2armqtrQ7p1LJKbekRQdZ7EqrHvUk+blsEScP/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=as0OnCYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="as0OnCYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62C3C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753583993;
	bh=yqWUXjFDiw3jP2uc8StEW9i+Yl5vtyDKqwsDXCU3gDA=;
	h=To:Subject:From:Date:From;
	b=as0OnCYpZtxdoJ+2JRnI6uCQlWPtX18twsanhHGDiWJKsP13Ec1k4jhwTnRXobzCm
	 JSL7XBVbCm5c9ndMwufNIExwszBVDVXWd+Q9zthTx1eSl7qyUnT/rWe2Wb40qro4LI
	 9NiFLFNCjMONabYA0Hyn+7aeTVLspyq5o8Ls+EjFhq9FQHyoGIpoRHRXy2CbRmfULK
	 XqXUNOSjjct6dpzJnp0Pffi242hZiJN22g2a2ge6XqVyD1veZiVv50LkCX6MJZ21XO
	 OzOGS7XcBV/c+Aa4L0D6e5CpMLsfgn7RDlAl3CM2N8iKUSWgKPj1WhqBI1JAr3a7C8
	 MrhmDRJmLBnMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914D9C83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175358399357.15114.10378890970537406100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f639e3cfe2c9cb2ee92dc75f903a012c3ec4f79669d68cf2c9fe91d34fd80b6
Date: Sun, 27 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753583993
