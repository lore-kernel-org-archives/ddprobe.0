Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFAE64
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 00:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781483794; cv=none; b=Oxz+4kCc0fE/hiVuiHb6NZcMcVjkRx4Rh9F3JixTiH2wfbLM4ZKuX9c/3IvKb6fVLJv+2FwYzKQK/6XipvBTSoGDuWl2bVrpXuCTC+L0+C+74rRl9csOJcUcypNbIv9EWuwr54NbeXheFk3dmOQDxVKkxV6a79V/GUNLT8eHb9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781483794; c=relaxed/simple;
	bh=omFO4SG8LB7YNx9ZRbKZmYKYJHe4M5vU/XcKhcRVv8M=;
	h=To:Subject:From:Message-Id:Date; b=iSduaP2WsYEAVzgp7YPupMUA26bUxK8qVrXq/84miSO0JeeLzzl1njSQPfpShxbJKswwDMLz2VeOrm2r/pC23tvPH+2ornHPZs/GsIVj8ae6nllBXpdrz4EuwGPKhCzvLqhyrrC41lKXLI74yf+UhufKK2ldEL1Gkxvgh9Ro9LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoW0r+Ct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoW0r+Ct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04F1C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 00:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781483793;
	bh=omFO4SG8LB7YNx9ZRbKZmYKYJHe4M5vU/XcKhcRVv8M=;
	h=To:Subject:From:Date:From;
	b=PoW0r+CtwMAopi66nANaCjpMcQPphIpe+etU4YLyLeqJtxctqMZqNSA54E/Q4CFCw
	 VuxKks2xBt6jdpVAS4C85yQ9gzfhspa8iuZ5ye5RYU1d7U7L5W65dQNKL5+qK+2WL4
	 6kKR92lozsrJiexyp14d6MnSispCiDymnBOA41xlml7CfuCzVKAz4dyx/k66ry3dk2
	 KsaaFh187XO30ED/kpGXl39pXXDwfKxIBv3gaEiKRZfTdBTd7963ZNlZy89x9efIlP
	 BzmVBRK6uXANviX/X764y2tRUwOPJ94/zZ624whf4KkH3dqV2FVxmgbqba9PuY9uNS
	 l7QEvtBQYjagA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEDBCD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 00:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178148379368.5663.8877383806258189267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 475e74f5a7a8db3fc4d1e8882f5a81be329855f320d46ecf445b761211387429
Date: Mon, 15 Jun 2026 00:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781483793
