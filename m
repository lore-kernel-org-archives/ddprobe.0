Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EC01CAA4
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 02:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728353754; cv=none; b=HvxiJiupEEfSqhVRsBD2FpB6l0cVpzBUQXXzCt9J6nVVqO8wk7TK1T17O/4DXQ4A3dcwbWqyEuRF6azh2HzO+3zpUZZGxlKujrQN4y7UH8dbRbWsB6FfxhtGodv55ElLKUdi+iikMZaeus5Z4D3vBgMIVI54jkM214LPMJI8Dzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728353754; c=relaxed/simple;
	bh=GMa3bItNS8ZmXy0ok4ACItqH/kRsUg5NQj6tN4aC3wM=;
	h=To:Subject:From:Message-Id:Date; b=ghxDc5eqIhv6Drd7DKXnIdPuw+wNmTzGa5OtC1E98RAAB44UHAonZRk/CeRfQgYbcIUVDjB9Rf3RWIMIFawC8AYEakoW7otlX/bBRgFCWm1F1Ek/wlP8fLOAlgdFBeT/QScBAzMBJ1ITlzm/7dyT5GDFSuRprquK1NbvtTNp+G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khJjosdi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khJjosdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED34C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728353753;
	bh=GMa3bItNS8ZmXy0ok4ACItqH/kRsUg5NQj6tN4aC3wM=;
	h=To:Subject:From:Date:From;
	b=khJjosdi0mmw23S6Ijjea3lxSKBuDk49L/ulDpYLZJgMCha2QJWa+eo2gRy0LANsI
	 3CffC7T5Ttnk1ok4qGw+Tz1RLH3Z6OjUKCUfcmClrhc0VdWp2p/CE4N5//qXnX3VSx
	 Bq3MRRCjDYEd18GSErxqT/EiphAQj/tUwcYs6I5zHeJTvYGBZ7B653aTP2r0UKQd+m
	 /CnQwExQcnOG2BWrtr8Xw9ospRlE6vw4PRrmh6ZhEV6UFgvn8qMhTEp31L2k7xBUEH
	 CNy6O4rSZahZ+RAKYo2h8WiRUDwwkfEk675ju4i1LLxrdu7/9ucHsNeXSWh32CSvYp
	 wV5y173CcFFPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9910ACED256
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172835375361.5952.15221797077073609414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d53138caa3f833a6857ec2271def15f8a02c401fd4628b5d2df90f0eee973d6f
Date: Tue, 08 Oct 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728353753
