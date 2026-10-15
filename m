Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F23271A94
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792089634; cv=none; b=DaebMWezUQhXFUrarJGM4IaByN/k7P9NvZC7De2wcArI32fzMMXkSFT06pv5+1Zs6lp0iUjXMFG5H4P95O8uuzTE5oR8XeZiVMC0zXFuBk5CTiowGHvB0Q2aXeIYlYXjfKlcrD1R8c7KN4Bff6kxZTHgtu6C66716MMVGreZ2mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792089634; c=relaxed/simple;
	bh=6JU/enPxrJKzxa8sRpR8HXwMKisBE/VL8KyWibW8eVk=;
	h=To:Subject:From:Message-Id:Date; b=mPy5Soc99K65ue/oqeI+6qDBOaCd4pYn6I633a3dCjbtA8J17RCGZt8tC+hyVyzDHrbeQYrKN5q6JEpn6wejMgovJ33vsLcu5xt35hGyFX4gOn2LtWO0fFBULqkhvzXp1Z4oAKC4KignYsD61vuplBFGmuPPlH7H9n3thpQ5Hv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5dQQix6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5dQQix6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B25C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792089633;
	bh=6JU/enPxrJKzxa8sRpR8HXwMKisBE/VL8KyWibW8eVk=;
	h=To:Subject:From:Date:From;
	b=L5dQQix66O2f8YeyGLkGVhAF44uC2F8BS8JmBcn9b0HSws6031R3x8zIrvRWJuaFQ
	 rBwZ3m63uoseaKmumLZyi7co31cbh0AcJyv0M8aljFE6mJVVkldpWwBo+bOR3hoFCx
	 mgyzzxwg1faX0RFc4SHd+4hiBzNsaA6LCOXNfcl9tYG8iWT1xHOTowMdIzF2GGnVo4
	 /VuOWVQWpHQRQt7xtpuoReSalBpdvno+M9CZmauyO4nL3TxS8LOSseZOfBNvdzvU4H
	 NUTDpAiGm4ZwNIfyhuhGo1JMO/a3WLGjvzJDjp5C8+se5XMTN5+EyClq5foaUA7Wd/
	 ZMkCzfPs+ZKbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA993CCA464
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179208963368.15338.15920911437612776200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d2c7f8fb3a432c39a7510d044339a60507c900fca2ef9006d87a728ef18b10a
Date: Thu, 15 Oct 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792089633
