Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B5D2397B8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736774154; cv=none; b=c7oGwGDfKBBfLVVbSZdL8v+wT0l73SRhIQ6ISBq828jdAe0CfCitc+woC2x2QRzFqYCiqxhJyeQwNgES6TUOvn5EUmZjnLMWCDo9gQrM9C/XH3l0X+kS4kYW1+HU477eioaF+bAkEp8LkRuFZ3iOwDDF4swBYsug4CqkN8sX1S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736774154; c=relaxed/simple;
	bh=kYWB14ozQ+bfazpDfJxWcNWGlMdM7wCl3+gdRO84g58=;
	h=To:Subject:From:Message-Id:Date; b=jwNPUOauQT7PDom74TKT5iCAu2kLDUQBfouWtkwvlCCWdAHrnsDS0a1VAwAn5cL5SYUC8kiNM1oKhSYP9pul8zbCyXSABkE/0PTj1vDPSaQLxRKZzvSOmhcKs59HceLJD0UGB0orVbIrdJLUqigvvYyPDHWzzGLRKAuvv0CDFdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGAUKJlZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGAUKJlZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5E6C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736774153;
	bh=kYWB14ozQ+bfazpDfJxWcNWGlMdM7wCl3+gdRO84g58=;
	h=To:Subject:From:Date:From;
	b=RGAUKJlZA+415szIqTa29uVKUdVLcbvavruvHbrQYaK2ICM+ZNNSaU+ESqO1Irui2
	 y3VwlH+ycqbnEkHqMj4nOufnkGGZYANVXz1xJ7exbE7o2E1b6KBizzEKjQFOFcBx6K
	 /3geH7LafA/A/Kb6LJeDnwi9bPDNqObQKbJdhPv3ZuzxRQjZrZ9ff4xIf4d3r6xupp
	 IsG9c6UmOeGBxltOnK1TWzE9oETskyV5jc2MtL5CIw8hniKRhPVKQB0U/wTySdgqqI
	 uPE0hlG52sSFuPWaXkWUlDKF+71yn1QJpnTrxMi2Hyrnmmn2WbnlB1ZSHOPniVgZSi
	 ma1UZn4gGYkbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD68E7719F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173677415362.6848.3420877272631701143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17bfbb3f9c7931de6f43cf3f54ad37ddcd666cb6b021ab2db2bf5ab7aeeb7f4b
Date: Mon, 13 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736774153
