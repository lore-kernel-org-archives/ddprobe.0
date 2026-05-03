Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C643AE18F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777798654; cv=none; b=tL7eUP2IwgvbnOLrPEqqGy6wzi0PMGby1SPHbd1zrejYzFzTlcK26CKpkhI4R+J1SfsMK0C5amqJbZQk6McQD20adugzqB02tCJ4DiZLbCzN/pdFfUhwCQiD+VxVTG9X0iUhEZvN1aqmm3gypJNrxa2SitNzpXY1+ChdtWfgqH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777798654; c=relaxed/simple;
	bh=pKKYCuP0ds6hjc+4yCJdWy7cbU2PuiHWfWIhuoGx3cQ=;
	h=To:Subject:From:Message-Id:Date; b=KERi7StTOyPHGDWqSaOAipLW3nb7twyF84uuX+ALa8XocLtFM2A5YNS9kFybHhHsaFpmeUj+6fWiaJ4jd0SnlaRnN6J4shkp9jAS5WQB8NjZFTPjKfnW8h7p34fY+RqM5yg4zkgL1FPK1YuZMpsC9TLkcRqMBlMae7VzlYXsK9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEI7yysl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEI7yysl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B790FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777798653;
	bh=pKKYCuP0ds6hjc+4yCJdWy7cbU2PuiHWfWIhuoGx3cQ=;
	h=To:Subject:From:Date:From;
	b=EEI7yyslRv7tBUokicx1CtKuTdV0cNRI9ue2GTf+gzbXYlv9ywJ6Ned47OKw83+eQ
	 z6ESSLQTlffxEPMT40E3z3VZvWTCl81VjpPgaA7tHoA3/hp/FYgseHKQJ4dcd5NhYH
	 8Nc7R3hbleXnVe2/DA1uHYEmAxtY5fQ5PTjlVneLxPvunB/TGcMqzpk8LfJXWjZPCA
	 cAD1cADs4pM0qbr3JLiTGnHoefbaXQ3RGuFtUhlEfR66osOfA1gMaZ335xcNfIjC38
	 6jJJKE0xvrnA/6yOGUkgNFMB3lBwUYqCGaVhcLRhsRS1XWp6RBSzS6LElHfC6uRNHn
	 SmCaq3ft5TnwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9525FF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177779865368.28921.15193637749361311618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca08165ebcbe4daeb4067c5621c3cdcf35f87e1154c546210c64f53153f0f5a
Date: Sun, 03 May 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777798653
