Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3833F8892
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788496834; cv=none; b=ugq6qgDH3usEybFT6ogCO7otwuAS1LwGE5BD8eGQi+h7tcrL8q2c0iUrj5kkX2em8uZNbjCm/ALNgfiCzFsmhSlIMWpPf/cJmjyOO5Wp/z17bWSgmjraXUPd4fLmBVGt6Ksv+NJEYTON9Ptl+pt2TRe13HxrsPaeEcLkdH1Z5Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788496834; c=relaxed/simple;
	bh=DcwJt5XFOdQa3yjrBRZHBuYe+RNG8QYGXM2Ss2fGLms=;
	h=To:Subject:From:Message-Id:Date; b=DezRM6sqYD00BO9AN/pT6Yt1fUuLkJCDqoDI6c9up9Ql9zwju9CO3VOI4bO5HBFfpFx3y4CUAQYrzaWi9Cyy3N3W2lXmuXy1FEHHv/yXHaB/yXonWIdNEewOyDHmTxvmokh0hlHAa8PA4bNz+vh+Vhr6DWsSYZ4We78nYr9rQ/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L94CVkM9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L94CVkM9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D62C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788496833;
	bh=DcwJt5XFOdQa3yjrBRZHBuYe+RNG8QYGXM2Ss2fGLms=;
	h=To:Subject:From:Date:From;
	b=L94CVkM9D+fdYCj2QgumYQt8f3RhKpnfEUV32A5tnAy8J1Y8VLxG1IY2ImuKgQGmx
	 LzIN6ZZnPyV0fdZx2kFufKHScC6o1ghjlZLn/6c9oAAfOozf+Xa6rBw13fY/gJ6fhn
	 AOYG2AnnI/i7Ofs+/OPIUbV0J9B1oxtwdsLA1OFkDESrKRoWNL/dLltjoKiKrlJF0R
	 SI3KaXVGbFPu5s1iBAGv9R+90Vt85/ic/GKkh+qsHl8Mv1sFQKXWBDoQXTLiaRgFAK
	 C2UKP3eVBXSu/utOdMO2ClLaAYAB9RZ4lozsQyiEcZuS+9tvvU1GfnXrgCKl+Bhnhv
	 DxDA9Qzm0eYzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1167C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178849683371.8529.308406421751273876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35561f891a5f7e304ff1446254e924f98c04356019a2f3952c9a45ffa7ed7d0a
Date: Fri, 04 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788496833
