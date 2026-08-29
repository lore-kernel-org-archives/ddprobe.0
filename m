Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44366283FE5
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787972434; cv=none; b=lrxs4L87/9FZ/bgd36hUg/DM6ZggIhZMtSKP6xJCPuFxvI8MwIqgWALu2cy26NiKrsbcQG6gszSU1XjCxiIWVhpr+MSJWpTSA45v9Aisy1Vyjqd9YhSZkt8vPxxNajupF0ktF4k3VUWQUjDlSDOElwvZdW9yxApWVq+m/ZmUXFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787972434; c=relaxed/simple;
	bh=y0wnPh3LT/tEfjbQBsMSm0qmFUxNcJV7NMhFDpwwAXo=;
	h=To:Subject:From:Message-Id:Date; b=QL44sq378p1uEYXUbt1fCw5qFjWz5fUPWnQ98+Vd8/dW11QEbyZG2tOfCJ+do7Y4xESprmov70Tm1dVdb4Oz09Bfn0kL+aP1hA3vSSfadDjorYZkSrdEYFhQiIEVYpHydNigoNExp4gbmPsBEO6koT4OCXG0ba1yUfBrrRKl9kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdH0XRzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdH0XRzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CC4C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787972433;
	bh=y0wnPh3LT/tEfjbQBsMSm0qmFUxNcJV7NMhFDpwwAXo=;
	h=To:Subject:From:Date:From;
	b=UdH0XRzFfrUVi7nbrpvpYkSlXZ3YCHia4y5QsDa7tB7w35nElE48U6T84tuVYfK/l
	 jZJPCDXPql1Jp4u3y5YtHsGAenKkqT5YdaGh4IOotHVKvOU69qpnuAoYbqCT37ng5J
	 aP8Qmj7yO75WYkiAEaDf3y1+Pk7Y2GOTXG/UIHshvKX23tO+hPsMLBG0Xw3CMakqgA
	 jggUYBQnr1+sQI4ncEPmVR6V6eQFD//GVeUdX/Ky2PGa/Zr1d0xoO6W5tMT5lxPeie
	 KauCLSQeMGt04KU+dbiMCfg6PA63h6EpyKmBZl5OvR+1avtaCrH+7c+HAE8vaYP44J
	 L2J/nWW7Wal+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE30FC61DB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178797243369.2589.9282339046779348676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d10521ebbf7fc03a6e87b4d4082e8ba49eae09c71239bdcca91f195b0c01832
Date: Sat, 29 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787972433
