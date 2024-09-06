Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CBA1B85D9
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725660954; cv=none; b=mvOWTby/Qp5Oltpz2xApcsLb7d2NuR1xYgSkUSNiOcku0ZKL3FRejvIV+RiLeEtP1k0++1CyjPpADlTT1Vit0NsmtfG5Q65E62EUNdKnIlybPa3BWZV7/Utqm1cxOczP69vvXQwOQ78aLZRozsh4y9xCVbDSco6XPcQ16vkWxpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725660954; c=relaxed/simple;
	bh=q6BgkwoVw+dBuKyRDymwdmeylQ77xO7jM/VZZnwspyI=;
	h=To:Subject:From:Message-Id:Date; b=SPvdMP/wcF+nPo/Gf0dTrYB8+JQpnXiAHomTWDmEj5b4LZp9+0Yp1VPD8LZxUA0XeQuv4w9Ir/j7jfn39H0eu/CaiWsZkW/fpIoHoJZmPMkn0E/8q8CubUhDkhgEuYfLEEhLC6IA5oRarpjDXfBC1HjMwDO+14pOJUJbXJ1ctSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=excty34j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="excty34j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B069FC4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725660953;
	bh=q6BgkwoVw+dBuKyRDymwdmeylQ77xO7jM/VZZnwspyI=;
	h=To:Subject:From:Date:From;
	b=excty34jp/R+ZxZ5B7OQuT894OA/yhb+UL6dl4S1AG9y3KFcvcJNJfB1ejtym9z9s
	 wLYm9lPxe3sAZw13E9hsLD7QFST/PD2G4/sJ4Rkn2ypp4cprjDNXe9/gh2MOCK7AfP
	 GM9lWqXqtFRIyjs1gJPy2AC0Kd5AwRGFWFtmY6Cl74U8JnGZdA7elmyW/be+AIk4Pq
	 IGoJ/Xvt8ohAuewlI6JQWCmM8lxISI0MIA4lsNn4MxkqK4Ovagma+5AQv14eURdCTn
	 lnAluHeOa2XiqzJ3XMWwAvUzj+vJs5nSpfOe4O3ZcP94wmCNJOWW5KYYkohKnRigkw
	 1CsF5yUGV40dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97531E6FE4B
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172566095361.9407.13911606139551277848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f2799fde61dfae34d906d1693690e860e877c75be1719c22ca03dac17d4137f
Date: Fri, 06 Sep 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725660953
