Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5AE13B58A
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 09:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781341594; cv=none; b=Y5nVZhNzY904tao11jqqISaBBVXm3v1uT+Zd0M72+4Y16riLmQSkwxlWXLYIDhK2FHS86Szc/ZAVFUQZqk1qWpWPDMSnTR8mKCInk0/YIC5JEe842eET1kksfXNGfmtEv+MZJ90102w7FYx+9h21Dz9WonJpibavtbHNVAbHTEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781341594; c=relaxed/simple;
	bh=L+vm3O2U2eCokr+mWiOfV74RzFPfRWhSlsoKQloryg8=;
	h=To:Subject:From:Message-Id:Date; b=swhFOxkif8UkQ4XqnX4aBXzhmZitr07y3GK7e5rlieK17jopDM2+kUYD1wfAR2x0thUi/aRzzD10L8MPdxTBKsfnAZKr8EsDjQQWymQr0UJk/y0pU3T2lSqxLKUtCLgc8/6v6B299KK6hL5n3Y+rppeGsOdZuEbstEw/uHZ5ztE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfzL1i3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfzL1i3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E8CC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 09:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781341593;
	bh=L+vm3O2U2eCokr+mWiOfV74RzFPfRWhSlsoKQloryg8=;
	h=To:Subject:From:Date:From;
	b=HfzL1i3nv5JHv/N5smM2zHeepjjDml19/bhpihXVICJY0mgS2+c480kDRf7QAAETW
	 9DyjHxxiVU9jhc5LWkJw2RJUpw10Hft/oFUrjBzHiHwLSwxc2jpIBBCDz+8bfdmIbO
	 RQNPbaeS2gILneNZlL48GuyhgvSDSW/S4/gsN3u7l9P36I9NP9zTNqGDNPkIgyI0Ks
	 qnT2h0pjjKyxsolgudl2DmzVN8UcdPlIFR1e3R3C5Q2ZHKCCk88DjuiTmlHZdknZgR
	 fLngsnizfopYghcNmdNAjJg2KakBFE+3/K5m/oRrNnYMhyxBHfgp2ks28hYX1Jz6tG
	 PlJWkepCFgkUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B76CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 09:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178134159368.3694.15300857608903172536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ea715f993967405d287b79a33070b5f8c101e4ab364fb54a9d49f62dce9b3f
Date: Sat, 13 Jun 2026 09:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781341593
