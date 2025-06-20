Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3F12BF3EC
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750433394; cv=none; b=hHcH8Vyqr3Dih1a9H7XILobk+DYkpH3Unr1tylEDRCvkJfHm/yetFHOQko1cwI4dp5MhW/1Nehu+ywJkC3jUXN3TBKkC0IHxKblIkElCyzjzBegfJrkcrg9dGbG1moBWTyTPVojXSsUcA1RAZS1qt/L9i8fuTLLdoTDpFfP+prM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750433394; c=relaxed/simple;
	bh=lx5BR04LYK4HZ+0EVToW52dwajKKREEAsxwFtzU7MIs=;
	h=To:Subject:From:Message-Id:Date; b=KinsIfwcwR+qufXj4GBL+6nlsdMNFdBxlMXLyIrs1RttW4JxcZJU2Owbll4u1JmFfBmhR+xAp/bIb3L/+CwOEdrB6myY2Y+Qp+wuTpu+FJVRQKwY2PCCkgPJor3pRALS4IX5DEIldOtgNqdinvBurWx+PGg3xO4bHXxPffUWKio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCG8Ccje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCG8Ccje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A052DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750433393;
	bh=lx5BR04LYK4HZ+0EVToW52dwajKKREEAsxwFtzU7MIs=;
	h=To:Subject:From:Date:From;
	b=eCG8Ccjeg1UNoQB58EMYvyXwXdNQglsgzLOzfmg+cgLCjfwYekrpzoUunp8s70tnl
	 GdqjoHdubJ+HWi7RmwfqzPUQ2A+GFrNwdxHiOeSvlc3XyNOw363/V0LIe72YYPThOt
	 hW0wCdYvmQFkYMT3f6Jl9qkIfUVg2lzgQXUXJTBoHPfEgnbiiYuzCeYx3c3NUZwjQj
	 9zw69LZTRTmH1mBVckdB/LCIaw2+2cNg6i2Qg0WTXBCfaQCHe/JkH6n/giDD6wrcIk
	 VasA0q6vGb3Tj4lBTLHuHiA9XjEN6v3aC16rWcSZaQbn54aqDix/MhWbF/QGaPo0M8
	 H8VOg9esN3Qtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904A8C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175043339358.661.10203271817546626732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3c544e9c224d51e38def6d358b531af5984f964bf79a5254b042680b82b028
Date: Fri, 20 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750433393
