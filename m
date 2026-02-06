Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067571F2B8D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770337434; cv=none; b=gX3EOrnHMYu11NtsTgmuSJVgvL11izCMHtvBAGbLsQLnW0EobI30v27yofFmV2+8DuM/+3ZuRIVHNu3swSoVkiBLN8vw1tJTVV8C0PUyC7GPfAE1PrygppOVTBH0mb8hgELRi/gt0syXP7uzYF+3Tq+2+PeT3dRAFpC5qmPyRkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770337434; c=relaxed/simple;
	bh=oBaC2hi2RYZQ4xSs/9TIgDYcERAYVxYpQZRhWCRWvBM=;
	h=To:Subject:From:Message-Id:Date; b=FzlAaOSzw8GFFfKDDA7D5rglex5ssbSljDTJ0qXHaEKenqpFnRDyKVTispm6bdw4OZ61DgQ7QBNRZ2bcoi+inYzeE/gv4IkFUsnpCxJhO46zjQX56CHX9eTNVzCIiD8dyWifbO/7MoO2AjuvCmNIgFymPHyZbxolTLhwEmCOYH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILviz0Ks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILviz0Ks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4018C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770337433;
	bh=oBaC2hi2RYZQ4xSs/9TIgDYcERAYVxYpQZRhWCRWvBM=;
	h=To:Subject:From:Date:From;
	b=ILviz0KsjGg3a72RlSyggtw52FWPpIJ6KyItvCfGF5+ZqwnxtQ+dmX2NAydOlYiyC
	 mJ8UE3OfvCmygyvHyK9Mrzb4S34veNvjTwbunEKhhhe1qrDaCj0ZYRbCw7IMoUwSJi
	 LU8n/0AyTw8b8pNRYlRnytQncofJc0KdZBTvdlkENo7a/j+I4tdLZEhJiyfnxTYrlL
	 q9wftZOiDRwgO6EABH4eQPJQQkEgmZ53Sc2nAQKV4ZUT6uQ7fr4kw3UTYSXS2BK7AX
	 o9M3UuKtlPZRhTgNNQYavHi7/Af5S5fMlGEFuJDqFfaHcmH05Fr9folB8VMOGAiN7Y
	 Gj61J/yyYYdKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E65ECD9AA
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177033743358.3773.16995647748512819589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7243dc5667c091bd1e5fa8154da9eba8e5f268fda6d18b9fd14462e7f727d24
Date: Fri, 06 Feb 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770337433
