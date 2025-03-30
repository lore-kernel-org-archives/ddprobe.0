Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4EB101C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743297594; cv=none; b=QY8M7AHhysR5RMpHc3Q792T4aJE1W6zCSNatA3yMNRfhEnhh2cEnsOjCw7TJ01BY816NXOpUV5iqBhQZbKs7xWdX6cqTtdxsbUB9umKUch1oA6MZJU77gfnrSu5Teres+IYz91b9zzHSYVU9PKhU3RR8M8oubywBcBMCDJUuXGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743297594; c=relaxed/simple;
	bh=iYxoS6AuRPSnam33d4rcY7/iAHzAfMtkEwVi2eTY8jI=;
	h=To:Subject:From:Message-Id:Date; b=J1wEkK7zNJyy6vDUK1+6jmuXiam3O1dVx7jut4/rVACPjO8nPnGrdWGap+dMbSXHKdcIiRDQt2HhI4Ec0fu5THpUDmgfobC9n25IF1gccUNZKpRj/YEt9E5xN9/0xgsmbHgZ7Zo5MgkkRD0YROfNE8v19s5if5RdU6h465yaKvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNYBoLil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNYBoLil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7847C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743297593;
	bh=iYxoS6AuRPSnam33d4rcY7/iAHzAfMtkEwVi2eTY8jI=;
	h=To:Subject:From:Date:From;
	b=kNYBoLilcnvlDIPMhfC8Oxly9O3VDeY5fHzhd3GwnuBhigfmFTeWEBwqo5wDgRtVT
	 te4fyvaubMx8TFoH5jUObVDcjg6sule2hAiVt/rUYt3UoEdwDVemPXbo/jZexORP9o
	 k8bjAmT2h31lPk2pWLqYYtaGKtK+uypcrfEwZ/AkXAM6h/CzW+R6MXDlKKlRrdMhnZ
	 RoTRpFulMRIt2urv0fHeNmYvGJni6S/yHW4J7Y0rXH7af51wXAZZAprPUdXytizhfk
	 ZrfXYxq3cPN9tvGtusOIzNLmy1xYezHrWLHAethssSZkEvRCYeehgzujXcUPZPzpEs
	 Dyw37dtLcS9WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97745C36008
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174329759359.7999.4705525295218756916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f7892e0f2b0248bd0ec04596c7a7b76a4e1dbf5af156a91246fdb426c9c0a1
Date: Sun, 30 Mar 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743297593
