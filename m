Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4318E13D891
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742278794; cv=none; b=PklX50OCvJtE02ER8X0GANrADTwV39C4ff7XcFG/N4GPGxm91HGGIElF+kMABKTbM2ZsHaWVD8qOfEUbPET+D3bs0dfq00ZYJBqHyX4NyrRrkKaCfsAoFPrs4dBHVw4SioE8ykQv8N6w1CQp9ZpUYkidQaMjaMxQJ7ugCmFS5q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742278794; c=relaxed/simple;
	bh=BXih2Uu7OVkQ7OHws1Hacc1JNs1lebdh2PSFd7tv5bQ=;
	h=To:Subject:From:Message-Id:Date; b=tU22P/KZf06hdOgh94rmjK2DtebW2XWhoNLkEgAzCCBZCDVUzD5VYPBlq2Q6bvvj73oXsPhO40OX1Q5J10Zasj8nTYX5q8uDb8fM7S6pKRP0livHeHut5XKUl7exJ7/2RjuBvcTTY2u0FtjKpVGRl71j139dh3ZTfE6vo9vLoq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xi+IGrpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xi+IGrpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA2AC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742278793;
	bh=BXih2Uu7OVkQ7OHws1Hacc1JNs1lebdh2PSFd7tv5bQ=;
	h=To:Subject:From:Date:From;
	b=Xi+IGrpY/4c6ceUZ9TklCCTLJsu/JlK01xpmGjbvhp7uQhsY9ddiiHHZuCpMqXnQJ
	 jCqcTVtavTd8LBgJ+N2XO0nwSakXLeU6rTibf95P8lfC3snxsLLnqzxIV17FRUaT0n
	 EIKiAyeRwrsOczsV65azFPoyFgw+hRa8MxU58FrjX1UleAL1Fxtz3ixJSFaZKaeHDs
	 uvG2kVMQvWxeJXV9INuYj+abEvjMJDM0lKBmDn1Jn8aEtd/riOzdCeJsLyevHzu1uk
	 GRzrLm7hmzdzgP6FO8i/IY263hu+bfctEWcLKOLPIBgEnIk788x+yMihi90CSmX4wh
	 0V2xM3QM9r7OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0508C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174227879363.16330.6418245899001884006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4af9005aad920d71e0378cb467c93d395487df9d6d7d4a542b28167f80dc63e
Date: Tue, 18 Mar 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742278793
