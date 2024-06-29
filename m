Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644141DA53
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 04:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719636263; cv=none; b=TE6RMpfw3z/NnDRY/kMamC9DBcnqmlroRFEzqnfnmXySfgNQQR98m7/w5fAa3WpqtDIHAI5a0YYTqYhS8ZpD/BsaKxrS+tm1+LiNfynGhBR8U3EUI+U9coEfFOgFDBr3Zy5x0r3BFgL5R/UaSNEM9SmaT6M3t84d7yYItw58/Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719636263; c=relaxed/simple;
	bh=GwtZkG0xjIBmXpzhgKNzpP6GnA3HkEZyi8CntSyRv7w=;
	h=To:Subject:From:Message-Id:Date; b=g9VX512aSD9JqYAYgMGO5zwiKyGMaAp8GB8T6f6GvcaK7K7Z6NOK+mYRLA4ky+JzZ+VB/l98KNL4N5HjmCvH9/Mpd1m1fAsdRVEHhn3XcrT9E5OFctQHRC5DynkkO0LdAmUknd4FHrV4p8Y9SgtUhfVEooV5ms3Qx4Y+4rQGWF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PX4qBH8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PX4qBH8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB97C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 04:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719636262;
	bh=GwtZkG0xjIBmXpzhgKNzpP6GnA3HkEZyi8CntSyRv7w=;
	h=To:Subject:From:Date:From;
	b=PX4qBH8WHMOqiUheXDlUK5nilLJCdM96yxy3NU8IBV9uJOZA5oKdpEXyUUZbAO/ca
	 qysiyCb0OTLgvBfCAfaur7ldEyq4SYr/Yn5nyDyxFJGT16RMQEWu8bHB8htHjQSbBR
	 YJmWpZ09stLHTs7yppfMABdF/TIXd/Bvm1/YtKxNdNRKxX+GmZknTOWTSJ48YRpsXm
	 wT/aAEtVARPuXnS0JVQT0VPsmmUTZIEUWF/ogME2rgRjsZRQVhFSwk+AttTH6RNoM+
	 Nr5RNPqszlzQ4Zx4psRUB2Ym7zL72QCnWmuk6Ugg+O/ch3m13uD/O7U1c7bMwYiewT
	 uN1dnmUzu0YdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8B8FC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 04:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171963626281.9146.16901519955861196004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970c1d4b2d3703bfed79c9636b5fe84d1237c48b62eb1ee2642fe9c374b7afa7
Date: Sat, 29 Jun 2024 04:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719636262
