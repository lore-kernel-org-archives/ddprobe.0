Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C4F2E6D1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752244194; cv=none; b=uBkRZfCtmDy/Zw09ojRr6yFY9wa9XM9PvrCerzkbRI4BBgMeUpN8EqMeZNGWLwkYQv7d75LZvMVWPIJPdNk8UCdD3+Il+p2LFFgYKZO+KzxXeVLUcleJZLXLLvPD8aav1ZV5ZefLNU/nGGsRau/Xt1aEKXpXvH8QFijPvqMIBak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752244194; c=relaxed/simple;
	bh=XYE8vt86TxDClSbcWbRof84oXLklgaZ+ZULiLoKes0Y=;
	h=To:Subject:From:Message-Id:Date; b=uvhhygGcz7t3daMvJqUH3TCTg85x2jlKH9usBo1FHdYFMX+gNdlqLwhVcazHBSnqM2T91kvv0byS0E8A50hsUklXdTXLFHqVtEYnda+bKJZdqrACKwjsNqAa2xFzqN38xhCG2XugO7cqibIvDu0lehfI1YKbzIfvcOWzI6cESjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNbF7tQP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNbF7tQP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D5DC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752244193;
	bh=XYE8vt86TxDClSbcWbRof84oXLklgaZ+ZULiLoKes0Y=;
	h=To:Subject:From:Date:From;
	b=DNbF7tQPbaXI4JCqd7zOhuNKM1fX/0xHLiyTvhT/Rrj5HCm2W1dq3sRKTnY2Zi+bK
	 RnKnKOJjgwGThlSrWO88SasW2E7dkQLaHHBECaxOFw6Mgl1sbCh6RtIRiTTFxg1DBd
	 qZqsqxekNtWm8QzKjnyuwvK4g3kJppkM6s8W7IuzJcjWW7bDfEo8rYesqbM3dymj1d
	 TVfJ8TRCzI2Q/ehQ9By+OfwzBCnI5ZfA9VdcBhsJhEXPWQstxk64np90/Ek14NpsOk
	 WNdTRMMcTVNDDr4NGtkmCO2qLLPQ1drblunNkFD42CHR6mZlLa3SypW5tQtEPtlQor
	 xj2+qiWNId2+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F879C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175224419357.3448.4728209509945057852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1527df9995ca8c9efbaf70e32d0bd32b24be91e00942ec7da112ad1492446126
Date: Fri, 11 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752244193
