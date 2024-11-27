Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBFD77F10
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732693554; cv=none; b=Jt1xzteBk8hEZPcBR3xIN4W9Hh25D05A4XEOm6tX57mGZB5U/A7I9Ejr89UcCGc+MW0lQXpGXwEar1Wx+ramWmt6985VUu3u1Jv84Ka5pvyaCjCEL9MMhqjowERKLpHoqABGwAEHYsgHwiL+HO5DyGdGW+ZJvd1iRhgSCh5mC9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732693554; c=relaxed/simple;
	bh=i8aa3S3Iiv8HDTvWGfXiNqM+6r3Yo6Z7IY4arYmBG30=;
	h=To:Subject:From:Message-Id:Date; b=NPQ+WMISTjvpHhIUej56sJBEiHjfuTL3mAtI285o2B0tv6roDIs9TOZA1odVg/0ubqLhnr13hK1RiVJ6jHbkHvkaJseYX6MrtwK+KYrd50BpZdRtnxd/1j45HH9yQfjIgK1HX2ntChZGXmtxNYHU2duPefmC72O09M4//heBs+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CF7WgGro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CF7WgGro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC38AC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732693553;
	bh=i8aa3S3Iiv8HDTvWGfXiNqM+6r3Yo6Z7IY4arYmBG30=;
	h=To:Subject:From:Date:From;
	b=CF7WgGroBFQkhKnfE8DHRBNEgU9+ZVX8TNEYuom7Yb5fjLJI5OXxaltaSKUdnvkIL
	 vck23V2IVhrzNB2DPP1Pxz9YaLlcQe4w892mEpoKk6cxE4Y/NTpepqgxgPCfqeFgKz
	 aIdjz4568Q8+tddCJgaB+mv5KEZtITXaNQO3eXal9aGuhhcN2u2q3uZZOhLw3Rv8MY
	 iXpRgzIQIdPJz8O6NGTm8pZqx928Nv6zDEY2J28meaZ+lZ1GeizIsBz3AckvfDIfcz
	 e76KOTkqlUfb0mLQxrZ9DNYzsAM2V+JDTbJ387ahwP6UmTHziBuoL8RXeLDTVgcSjB
	 w7NipfJHmImYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A39FFD609A7
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173269355365.10468.3435187759713959524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d926e916f6e8328a81b0a875669b5d8cad61b80939d8bdf14cdbfd14fc8d83bb
Date: Wed, 27 Nov 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732693553
