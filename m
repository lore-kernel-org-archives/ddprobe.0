Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D0911CA0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762143594; cv=none; b=c+If5bkhbZdChwQFCERaF1u0m1NA21X3tVlGU8xn4W7rPH+wsQKNYUGdbjBS3bFycKrc3oDymjMn3rK2a43NQaeNivj9Bcsm3nciHQjSBll33YOThHdoXGzFmuI444hRo6/Lqj0N0dD9Id5LJv0CcEn8lI/E/IYaLtPO69HHMZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762143594; c=relaxed/simple;
	bh=ae3uAazjRKyKvOPQW7E6ljkIx3QfPWHnfjHpegq6K8w=;
	h=To:Subject:From:Message-Id:Date; b=br1qtHomJxvkD3ZNsUHk7QTv/YfMm5hQ45VSSb3m3W4GNMq1eNWA7inofmyqXIElgt6bn/LjoRC6rlcbJYkMm0Ak7x0R7+3YkIiz8STW4k/i/4T7qjzsiqm7iiHdHISfsdDTIG4UNdFgdrNUrbjmopqCWHNLiQ3V3oGGymqozk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjJqx28g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjJqx28g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C27C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762143593;
	bh=ae3uAazjRKyKvOPQW7E6ljkIx3QfPWHnfjHpegq6K8w=;
	h=To:Subject:From:Date:From;
	b=mjJqx28gkqB28aE40M1jq+ouyTPIqpmRIYiRvPoCJd7Dh6dH5P+T6mYWIap79Ohxe
	 E5yTT9ek4ZkUfnOf925dMBoTd0k5IVeOsVgEdL8yzzv05NvWHoachNjxEDPXWVXs+P
	 jyAUMPQEAsDdoYOvH9NOIJdHVBCqy97KsDrv6O+qHa+KQcuSbk5uhWEVvhPYZ4eyI0
	 oA7lC0CBvjPz02yMBXleyg48P0UxRao11OKGVSCpjITM2tKajGYqDxpH9BWueow1CN
	 vFbhX7IRiAltet96eTwtFsHl1yWPuGjHcIDF1sSKKCyyVQRajirfEia6ESqZ9O6yX8
	 RFp3G2gtL33jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC121CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176214359363.29630.2740992508827467487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e5222f503decb0914e80b39656ef3d2eb3b3b176cebff1fba8fab8947ad047
Date: Mon, 03 Nov 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762143593
