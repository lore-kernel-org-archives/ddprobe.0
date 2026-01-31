Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD22258EFF
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769818434; cv=none; b=sbShxO8KqqYZYA+/PMikzCtmED8eBi4W8VOJjq23XX/yZr3Ej4rfjUw+YBzTTMY9q3lZC0WelbW1crQUH6jvAGyY1yKaGS8aUyFW739HTMOKAgfhkI6NC+xu5n+vfQJFEQt0hNumyBrp2ilyxp1xgwWUlRZeGf/1zymp0pakGMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769818434; c=relaxed/simple;
	bh=noqqEC0g2MEnNRCQfYYciRXHNd5x2k2Bx5NJmfz58SI=;
	h=To:Subject:From:Message-Id:Date; b=CsZvpAqAL1dJ840vd7y5gpYhukPGKbzFDf3FJiJxv8pG/oJMq2xbK59SouF21tPwv3kmOCG/nXh5yEsnjWi3b4gr3vztT8JzeyyFQIK7nv4twsodagJ/WFOAMaIS39Gi1upMNozdrbLmXLyVLWCHHrmZTEsXVLYCyPHg/a6Wxsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R38KzEzO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R38KzEzO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0900C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769818433;
	bh=noqqEC0g2MEnNRCQfYYciRXHNd5x2k2Bx5NJmfz58SI=;
	h=To:Subject:From:Date:From;
	b=R38KzEzOkmRF8+rSzMOF4r3yNp0m7Jh6yAoWhrbjMj/5nLLeY6VhS79EU5D2apNcp
	 Xw2ek3Ed/PUHvbv3y9HjLvifShg6zJnEmiYxr3Fa36aqb0uLcWUSS56Zdmg6DBYin5
	 rna4vrQ6uqbxK7WE2EURQxJjmznu5xMotOvzq4OMl/6grN4AGVS27n4yaztAiYLEx8
	 BrBiO5tkyL0e1V4v5+DDkGSb/1faVxNiCY5Cgo+AVSBB34J1xvX1/J50FT0UTxVdyu
	 QRc6Mcqik29Go4N+po+qjn7Ia3fSMi7Xmybp8xZy4AOvA9vFD2A0xBUM5z3kprv5HI
	 J0NQj+fgpnqtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928A9D46C1D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176981843358.8133.17730633277144806364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89fcb55e12787512e5923c42e323c6a2b977ca97eeb8bce45caa163edf1231ea
Date: Sat, 31 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769818433
