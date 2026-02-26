Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0855B3859D8
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772109894; cv=none; b=g61j5Pknt+3an9kohCjOkyBjV9TwTg5BUD1EOPa5kzxWvZY2P9PfrxrrjU6P+uTRKtxY1jywD0TXJGx3/lKvckNTMsPOzL5QRbRq+P/B8w6XhQZN3ctrYQog+Y1UcpXRp2HvSdFjG7z1CIKX4sDHjHNUTdW1PJWj80RTmEuiR0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772109894; c=relaxed/simple;
	bh=VV5KwN2uZLeVJ2A67oFggqAGLmrK2pSb4mQrhlNR+IM=;
	h=To:Subject:From:Message-Id:Date; b=EO2iVnvrhtl6hfRX4LDWmhtKV3YlLADJh3EBD5QaBk2mC8ZyvJt4cFKHb8qbl1EgKduuqX4cs/6mDEeOgbVw5/8Kz9he2clnW3F5gs6Ak3KOyokIHsMJDkmhsqSmsBsm3MMn5d29xN2B2MA9f4ZrnLiughZSqeeGWZrAWPJtyFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxkXHhQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxkXHhQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55B7C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772109893;
	bh=VV5KwN2uZLeVJ2A67oFggqAGLmrK2pSb4mQrhlNR+IM=;
	h=To:Subject:From:Date:From;
	b=mxkXHhQrmdNFPC1AJl47zqsSNJ96B045G/0L75HIDFGOXYQ+d55awDycburOoJwzh
	 gYIKe8jFWPjAO+bGqA3TdttCUfJKguoVls2LVECaY4fu419XE++YePHf5Otf/yUb4g
	 RuT9XcSJHrR954rrnxPD/KBuyUrNtpw+OKZ5JLxGlpuPEwhVQHCmOy5qq5qKBEB9O9
	 dkiIsZVJ7kXnTMzmLGn13wO5Y4m2VSQmCvLi3HcfbNF3/Oty2RWnxwfDvtwKEmn47/
	 mJH5L4p7SiyQK7Ryvjc99YRI+kjb1hjn/0mdRw1tdPZypAcCgxXE06nUSmGEpVxhGg
	 YodCj9fEOfKdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F482FCE068
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177210989364.6262.3654271125482594695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8c338349702e013a46939bf6fc1589fc902af97ef629176ad4bae53437805e7
Date: Thu, 26 Feb 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772109893
