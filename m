Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B881FF1B2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750666794; cv=none; b=pkSoeiZqG+jlMWqdIhAayT6DJ85SDeocQ1w5vzwKDwLvv260TUOyPFzV3B67hiubCH6ElLlgXxWcS5BjHQySus348pASmSv2tE3oZSp5Ft0mCV4Sp+cVkdg8GzA2xcsUjVIat4Re4EzCDH1ONdM7DBMiOkDgbC1FxdnE3QnEezk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750666794; c=relaxed/simple;
	bh=YDtIS8Y2zWtxBW4xI8OC8hDkvVCpH5ZlxTqbC4WGnAk=;
	h=To:Subject:From:Message-Id:Date; b=UjM3pSCaZhKN4qyLe8y2PylAeXWRD1uZ0BqVvMcI8BhHftVyBJj0Ei8tI77RiylpwZaHFw84nYu5BVrKs7ZdYtBtdvj0Csq4Ly7/S3xTkteZz9a4m7rE/H2wDNsucZyBiRNWTJ9Oe/bn8ZIC+fHgXQ4b+A3i+sfhDFzuLwhDKrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWIxd9yN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWIxd9yN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E36C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750666793;
	bh=YDtIS8Y2zWtxBW4xI8OC8hDkvVCpH5ZlxTqbC4WGnAk=;
	h=To:Subject:From:Date:From;
	b=lWIxd9yN6+maEspoyGz2IbJbI1/YinNJQvnXUd0tq7wbyng+BnOM8Fxyi+A5HwjSA
	 uFHA+2ROJ+50cbLUGjGKqlWqK0G3279R1g22c2fTiG1nfvAQgPiH2ioPPw5lcMXzAt
	 7ZLgZHVuYJC41rkmubjXq3UzxJS89H+kE0TZWHhCTGxeVMuuqU0GzsWuxmOBVS+KiB
	 n1XQgiFxfIDrHzjGQSyvh6YZnnSfH0Wj+AvsEDA8ZvxHYDaHFz5auGchWoFAeICxWb
	 7gvftA0oF8pUA917IxfYLd124tJW7+L2yBlWm5BuyGpy51G3Hh1XHS2A7pTeTVtBcE
	 e8wOn5GPwQBOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90729C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175066679358.30092.17597836228915513085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b2537386b0a5a852e43f9f4445d8f9d97f8b911baa569b1504ae6365e6bc367
Date: Mon, 23 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750666793
