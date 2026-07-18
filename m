Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CBA43F0A1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 08:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784364514; cv=none; b=eXUTEiLguHi5WXzXkOKkH7tOWDTkLB6TMHszt1XU7IMcuvbj+3ecgvOC/hR4XyQX8/W3dypwskDPnbpfCZFit/HNIONnVwMVHHbMA7J9FGKFj7gJ5fBcY0Mp69k7PMSDg4herlG7MnXzLnO64/HWxq6vc3jl4X3e/VLsxmOWZm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784364514; c=relaxed/simple;
	bh=ceFbwuE5RhiB2w8Wb8fkIKoUGm85B6Um2NL/fIz2cwc=;
	h=To:Subject:From:Message-Id:Date; b=YnM9y1JHbNFrJAG8klxsapcIYIcVNGHabDuvIjwtksGY9usAumGgYQYZ7fckAOQl8zZaVy2s+Hk7m2tuhV7o1YuyUSsPhtk/nGeqwV1G54YWbaIhTbQZ6oSs/1upONC2AJL2g5jDKVP/wZPu5vg7ap2eKkGlUbXUmML7G4hyU7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOXvIdy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOXvIdy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A5DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784364513;
	bh=ceFbwuE5RhiB2w8Wb8fkIKoUGm85B6Um2NL/fIz2cwc=;
	h=To:Subject:From:Date:From;
	b=ZOXvIdy9jO5RB65N2HD32yQ/NBCn/hQg6ncBQsZWBMiYrMLyR9cd+OIAzFI/T4sYg
	 mhz8g2fNPZoLQkEk6o2hfkXkr075XNy0vYb3pw+sq1iAG3l0ajXwfePKZVuNcLkbq1
	 4C7yTC9+4Z85AYWdpzDOoE/gWVICkeAGbNQZIbgvjlXLgbFmw7tZSBpwXTbeLJ9Kca
	 qD1faFTvX0YWaKTU/JwNv+RXw1joNcd+jjuLvFUKcqKK0EFv69KfxYOUHadlzJqMnx
	 i5HU3Xs+XhNmoeFpbXrB3ICgo7yV2Hh++uw9lRh4VH3nSLXACuvCghvuo98gOqXEtw
	 ChFWUWurJo/GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB048C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178436451369.530.6465118727731977760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5d0e5de2c75118cf038c7d15434592687ef33c27f70f132bca506beddcb5dd
Date: Sat, 18 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784364513
