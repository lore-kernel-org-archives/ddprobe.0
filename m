Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F57515C0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 17:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720979423; cv=none; b=M/ZmOWhC2xHedBmAttySp7+MDXmW7CniyUAS9F//yzPBd8LYo2kl38ChABjOZaIBkdzdBlqueLWA4eMPiKFfVCZtWFMYkh1ZsWqxSoYxYmuVFOV8uQHLloHkLPZEDzetbOO9O3a3LRvjMjJu22g8oxia2PZOv+7AoAXr4zkP7SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720979423; c=relaxed/simple;
	bh=pTchflFauwKZhhvdGIqOnp+zxppNcNqCdaCK4C9gyOY=;
	h=To:Subject:From:Message-Id:Date; b=GpIrlOAkBb7qbGEjk1EA2TKi9IlYLxD9CdNqZKD4iBwkIaiZbPxms4LT2h1Cx27jw/U8WLXijT0naxJHve+ac1rPC9hPpkruMsNNQYUq3iDoS5yM9PKc1qIy+GNIgh8M72P8buBkGA/LL97QP8P4pbMYTEHifzgdJMzqzGcMU5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVSZwLmv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVSZwLmv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCC5C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 17:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720979422;
	bh=pTchflFauwKZhhvdGIqOnp+zxppNcNqCdaCK4C9gyOY=;
	h=To:Subject:From:Date:From;
	b=MVSZwLmv9nWOsS4AYDMFC67UypQdsmFzkjgAINBKvW0I/goy7CZXrthEWSFsdSrLG
	 6MXNWfj/6WO3ks/RdwNIhE2gWymcuPCVaF9bWF3Ifs7mRI3DAlCapJJuC6gIZdSatT
	 4inSiKSO1Tr5UbqQRX2kKA7Ca1O4TKpOKVPFwwB68UJd8+qsvji3yp+fVfX3yghc5B
	 KE1RSfisjApsttKBA0G03lxVNqFsOxOVKhnA8mMNXuc/wknxf+2X+XC/jVPExFozC6
	 KKJrhRz/Q6HnKMppv8LkPVpIPHjQ2u1VwS83EVukyoSsP5Khuj4YHvpW5CftqI+yT4
	 q5yRtpLnELvyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C18B8C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 17:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172097942276.32336.17539190874981734062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d2f5beedb65da3ebee7c09cfaf000ad9920a6fc11e2f569b2ca78f421de5ba0
Date: Sun, 14 Jul 2024 17:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720979422
