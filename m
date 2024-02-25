Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58A0881E
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708850897; cv=none; b=EudU6IKGdr6X8U2vb9gVj/Zw+5gcwTNWRBuzw03KtV6I9OIafUABC/KJqz8xjJEmg8BM1ZCDM0WDSUxDPs5bZgZmAVwvLdBZUH4Stjg7hvyHii3OL7Jqrv/kZrCA/szaTPKze8FsCwDJh5ErEwMX2sO8202UTI5DLyCJOhuiXdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708850897; c=relaxed/simple;
	bh=1Y7HJVz2iZ7amqAtCVIlrWnbVTtWhxoobcrPTmSU0xY=;
	h=To:Subject:From:Message-Id:Date; b=q0NjeqNGNyfOpEYet/vuVxJ9DbqAm8zR6vrq0TNEXnnrPtqTUbcNA03KbcuLcFuhOC6EjixZYjKouMYI5TVaEQ0g+jzpekpGmekDCBguU1BIfuFGzVBTIAQxVcQm1bOG6I1ZoHTAVpVM8keyLUKZmmPwlSNxSkJG/l+Wa76TV/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwYx+l/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwYx+l/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E25FC433F1
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708850896;
	bh=1Y7HJVz2iZ7amqAtCVIlrWnbVTtWhxoobcrPTmSU0xY=;
	h=To:Subject:From:Date:From;
	b=CwYx+l/nuQC81SX5K/4xl+ebEAdXxspIdZy/do8b1P5Se9pacGTjmmhNXr/sah5Tp
	 w5GfMkUVKhBoslPrv+XUJTon29L/Odr/H19bnsS7GcsRYeHa4NJcS7W7PBR9+fWQc5
	 QPsqU5c63jRoNyujcuZOAQuiIpGDmS6nk42NtoFlyRwNWGJXskrr4TFbUzzDsZYSSs
	 5hwpamGDrHvjEUCuTQL2nN52a/eI+HnNqFtGiztbMC+zdfs7RukWFFAcjbt1Br9c8B
	 IU8fdKSGuA+Dbf3opDDLOUw/U9PoAqdxsW0nTU3Cz9iKr9QVzIiNZgFFaDo48zRRZ9
	 VYUTE83DOo6Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D89C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170885089639.1082.8297640153085805939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f3b3b966b48f3736a049e041da822d916878db836cbec65d1f87cab42e6ad17
Date: Sun, 25 Feb 2024 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708850896
