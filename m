Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476131DEFCB
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728294954; cv=none; b=FvLn8UnjqzK2RtLuyU2sR4ZPQQ0U5Eu0XLYDWyZ1wAEA4Qdefw27J87qlNFhqMnQmnHrrTEo2wIvAo3RW2zHSf4XJwrKIuUrXLXpmcHUE2OdHoYNom7QofrFxzfCAAotAGbl4OP2AAL9fZFc3Xb40ncXYZ8WY7DcH9c8TpCTiVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728294954; c=relaxed/simple;
	bh=iTu8XJrkfIzKVa/vWQRFx0uMQ1CsDdCr46MMz9rzRXY=;
	h=To:Subject:From:Message-Id:Date; b=gD424nrX6LjIk0gujEdvIWJUrrRHzj6LAHMn99Q8HiRCdpLe80oj0VnsFFAhy99ZEmA+EdkgfcP6BY4aj0y8WIV+JC6039CktPLdzkXvVtvRMTTV21DFjn6EAEE3aHsd7BA9//gexR6eaQbKwf1DbPpHQrfokSKsKDnh7RnSAos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZABb+T5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZABb+T5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2749C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728294953;
	bh=iTu8XJrkfIzKVa/vWQRFx0uMQ1CsDdCr46MMz9rzRXY=;
	h=To:Subject:From:Date:From;
	b=BZABb+T5zhooefGdoMaaCmVucCWKOYpemOW62rkPEiFjPPpD2lM3/915TGJT7lpIj
	 KCSAYY0ssJMIhpAgSZGoCrgWaVhw5SNTl7KiqHKdmKqrAkSRb4ZPmeA84x8G0nZ97W
	 d/Bbarf/gVqdpSN0G+phR8SR3fZ+UBsdXvW1qSfmyJWKPsY8RmW15jud78JmOxzDKC
	 KbODaKZIqHtVk0ENJu31TBqHc4weS64ttXGlbTAT8RAE+F7LXhxYSMIA+iCb4E3J8M
	 gkManzu//xpRgiEUZwrSDbl2t4DC+o0JXcSGmzHPSScscZOeAxCcD75agwkpNr8Y9u
	 0JDUYohgWnVLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928F8CFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172829495358.15300.7600533929403442833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f741fbf7299261fe214b0dab1a6ca08df4a378c590b8b3a72c565cd600f55a2c
Date: Mon, 07 Oct 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728294953
