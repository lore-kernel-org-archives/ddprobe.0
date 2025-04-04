Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E532E62B6
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743731994; cv=none; b=XXUjeBMYxL2yM7POc3QaPWw6zOrSlB/erzD0/83FY8vXKX8H6MAcup3IqvkJ4ZvOyKxLlsHPzCDNc70rrGut22CSa6xEK4RCCcjbTp+IIuVv6+Lmsnjzq0HgVqWOHpVrvan3iHHRr3lX7ckWgay/bFmo9K7Ud4FHRTaJEnC2tc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743731994; c=relaxed/simple;
	bh=aXr9wiMhqmjY8dhfmS+02Ye+W0hlMpF6D0IgjM9CDWM=;
	h=To:Subject:From:Message-Id:Date; b=tgLPWwUtwaFsjCYkoHRWA4s/9jJaqTtU693oWXFo176lryZ3C2Tkm52UcmpymXLnpNJstK2XLaXftkQoIGiCeS1b7+WShBdpHKHbzkg1uRw7N3MYoqfu7j71eTVUsup2lXrvMbJTNJE5LAlrjCTv+i2x82+YVXgikgTfwtjP7IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvErsvqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvErsvqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62A7C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743731993;
	bh=aXr9wiMhqmjY8dhfmS+02Ye+W0hlMpF6D0IgjM9CDWM=;
	h=To:Subject:From:Date:From;
	b=kvErsvqL5zj32y87Mm3pkEgFtvyLTylfjew91x/2GsWuMnx7eE/dvL26F/09czYmr
	 O04kKpXfzry79MmavsC2a5RJrFuzf0QeZfSHBIc7cO8HbrGbdOXDdrS4I1vJJnDXzZ
	 HOs1S6JU33tNZy8nPgfLB3ZmZGuvQoN2ElpeS7yiNjNkPLFnMQIcJaJbiLqs70P07x
	 hJ7hLiGkTiF696Kk4QoTn3VHXYY8XT6YJIk34egBbmfPPZhHHAXFXpz7uL11iF6GMl
	 UfMhV/cE8FMvijIebMoKNZ8QRVtLrj0HBg/L09fEt1nPrGG+MM4sa9m7IYlhc5WMFj
	 ES3KrK2c9Iarg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E3C3600C
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174373199357.22156.6256711808628864157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68599f85e06afd45493c58582bfdc350297521d1e214bc89d2d69d50cdd0f142
Date: Fri, 04 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743731993
