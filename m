Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA8114D43D
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742345994; cv=none; b=Z1QTtFsVg0Xt8Mednv9ukOgtSk/JSfqN8IlcVSPZ3LBA5UWYj/1V2ehiKO7MGeDs4l5vDRCjr44BSGIRmy1RU6a8zL9amirABJAtLb7QGtAV5MGxtud92snExRtdwPl+w+2R4xffdUgbSIq742ZAn46O8p7VBHi3wMLhgHH9JKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742345994; c=relaxed/simple;
	bh=IpvdR65vgALTFoVMQJxXUxB729ait0F5/EiCaF1EqSo=;
	h=To:Subject:From:Message-Id:Date; b=P2XJb17lII68iaAknG6fwPJoXMxYJxj5HicObJkxHNd2I5Khc21cvpiu8EubqpEhV0ByvLiUO3OZRMjWUUJsbvuCiaszTeJtERxAo5mLipGoqB/dHp4FDd/yp6AS4qmrJsZn1mvTbz7qMgyDf3JPcq6VB7XrkYbO3iUJy0WfBkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRuasnZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRuasnZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0084C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742345993;
	bh=IpvdR65vgALTFoVMQJxXUxB729ait0F5/EiCaF1EqSo=;
	h=To:Subject:From:Date:From;
	b=CRuasnZPa5EAzL5AsOVdFeu2UaEUxrZYNcZJJwwUpjD/0r7+yxaMpbdnPiPlcy65j
	 /XAkXe34CrOA/UYRmj5UipKBgTJf0NeImYZmcNbZjx352AeEeB/DrUxsgZnHcKrpvp
	 HB7HqbE6LQJWwdc6OWmfzb+PV5Mpd+K2aB2b2ajfGc5ZcQq0g5YCc3XR5nS0DYPHCg
	 L5Ct4OUj3lxJuJlOxGlU2GuJvbd4f3eE0n0mQvcb3Lh/xMxFEIU/BK/d2qvt6X4OPg
	 OCAtJDyJEWdpmogmhQ+oyvFUlKjBNGq6lDq4pesS509FOPCEkXVB91pah2H0FUXJJc
	 w9+SPXGnnijSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE99C282EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174234599363.6321.2792906756437637713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae278f9efe9352fb7c4dfcb8198ab0bfd5e5f33255f0774975dff958808ef98
Date: Wed, 19 Mar 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742345993
