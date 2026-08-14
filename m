Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189B045C710
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786729234; cv=none; b=rPjfEj2d1uPRAXAFsxdvyCV1MdopBxIgLXQrOe7whUKL+kgSV3moa4TFEl89WdMuF63/6KmqDBBOicKFz3pCfNkSXaSK9s+YWadANmEm2JRpgCivEIZJIYeUJhGFHa0sjx0Vq12aGkf041tVgMkXmoyRM7sFGRo7hLFdFAHpzRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786729234; c=relaxed/simple;
	bh=9Gt2iuKXqABNYfU1aAAapqbHWKdhDk1fkYYmwmoDhtI=;
	h=To:Subject:From:Message-Id:Date; b=uH8cS9VOIZN7TGngs1qhjB7dOlscIdxZxwnmkAfbQE9pp2VVbCeZ6QmbIx7uBHd8IpMthmTG+u6fg/IMqbg7Q4smAMZmg01OGG2dWiBvDTeZvIy71kRTVSGNTSAFpaSwybyJepNdNeLUs4muH/6+VdlpHUncXZ1BNfra/UDxhjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZvG3FfW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZvG3FfW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB31BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786729233;
	bh=9Gt2iuKXqABNYfU1aAAapqbHWKdhDk1fkYYmwmoDhtI=;
	h=To:Subject:From:Date:From;
	b=UZvG3FfWmYL54d4NcyM3X7Le4NovBJd9Fy+7ZQhE9B1V4qs6X7pDGNMxykl1qKDMd
	 zYmqkfPNN0oIXT5pB5sHican3Yx1IFyyq+Jk5L3rulzriNwb1GJCN5ncy0HivQeicq
	 eso6/X2l/atXUQ0Sjs6sJqYajtLLy/77GvzZ648GRlKtJFPwkwzt35Ed9j8APf5VOU
	 QyIA8GOjxj0wiNRrEWHyCW6b10LLJOWSR/vcfiZ6GANHgx7WrRRhdSDbidhmVzRSMF
	 rY38kPhXVU2vrxylM4i6DPXsRFR6cDGM06z0kt8sS8Bdmz+DnHDda6zVhmtjs9vMO6
	 dy+/clRY2VWVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A807EC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178672923368.28747.16994108448297083987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81743125ddc922d0a2200d917150505bdff5dcc67f9e017fdbb8e536b64d9377
Date: Fri, 14 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786729233
