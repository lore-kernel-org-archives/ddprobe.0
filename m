Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48896244186
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744140594; cv=none; b=VA5kjmImvZvwBE0vZ8MuZkkgXEf/35svSolG1ea26l1pvvmNxjkfsW3ctZVsgOoSEHZzetSvaF6CCDhLmlbanO/nhmddJBgNe0Vj4KpocdO6sUbJthhKkctTDcFLol0ol6lE70jR2fEHUTxwTW87j3mkuTfxY9qmg2i6nC+JzS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744140594; c=relaxed/simple;
	bh=zbR/yaAeI5PNAd19RQjRZQzGkSY77COM8BFwnC20uJw=;
	h=To:Subject:From:Message-Id:Date; b=KaNmz9huJwKvq6mCM3IOx5cU1f1vydVtSLhiD0LBHWd805OLMJcr1aq9pihuPgJ1K7gRhjK7660zTO58WmK2yHzfZzZbN8kwv1Um+8VrtV4J8oErDrUQVjNBK/MnYZBd2V/eo1VWdHGEc4rSLRARTs7D28tC3P4N4SF12QlC3Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tx+DvTVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tx+DvTVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0383C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744140593;
	bh=zbR/yaAeI5PNAd19RQjRZQzGkSY77COM8BFwnC20uJw=;
	h=To:Subject:From:Date:From;
	b=tx+DvTVi6FEnNzUKrVvu5YnyTgKMbGxSuMqiVDblElWPVqdtUPpbUuTom2BtDblOJ
	 SV7PiBAWXotP+hRMFOQL2p+pebXAZfWtXeiLrMRaVTDrYwOunTUTigA6ox7WYj14kW
	 mVT79OU0pp2fVhlDcwz4x2+shLrPMKsOOdvW1JFHjzjhrqWg+ZhO5aToOCYtRuF9xo
	 JA35/LGypiPwfSp/zz9HsrCbRbFeILRuoEiL4/QXFZMaU+Qp+oeJuXn3ID3aV6JSzg
	 vGIgiUgZklONdYrYSyZNcgJjvwR7a7BDtZ15/WGS6GOvX7JBrxcxzSsnbIQz920oVX
	 QeZVudOCWTCYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E038C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174414059361.23311.1808286812687032278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f6a2f17d57dabe7c3186e42d98b269cd24c3548a095989c7d316e0f5783796
Date: Tue, 08 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744140593
