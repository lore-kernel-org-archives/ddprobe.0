Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB032AD22
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757552994; cv=none; b=UP5TOfi13s21gBNfHyEZnakaNnF56ObQDi7HF6b1QQYmtuP05et0qHfv9o5/SApseaRUKBk7ItN+s1aX28jVk3RX3osn9MWh/V35ixiNQqJnDWr/TRjXhQzu9Xta5q1x17+aTmJG1UWnpk4KpYquvyJomoJ3PDqc664kfrjxvPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757552994; c=relaxed/simple;
	bh=wMulUyXHtnbKD6inHJWy3BeEV/1lhjYL02XMOWi9sqo=;
	h=To:Subject:From:Message-Id:Date; b=rr1VQv1MFPn7MOiw5F6SgwDB0MNjRCa20IyaRXOEoB5qfBP1InUlcPMrlUtrJJ+6V1XKRoiDp9af22P1+61rvLpZYLjRNUh1QbsXvJ4XT7GCsDHfxgRb929bh+N/RK0x1NdUOHgk1PJPc+5HkeOdPJM2yjACt0/GUh4+wL9G6Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gn2Z/bXP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gn2Z/bXP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AF5C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757552993;
	bh=wMulUyXHtnbKD6inHJWy3BeEV/1lhjYL02XMOWi9sqo=;
	h=To:Subject:From:Date:From;
	b=gn2Z/bXP27wWYRrlLMUNwoOBopusg8kiA1VEbYeXdLptbV7A5pkKHTpenVuyiaU/M
	 b1/rgCfPu311tzBY9Ic+znfxC6+Ukc5wf8ftCkTeYRKUtb8wHUaWWsVkN/IGcenFc1
	 vFF3RSonFakvb/BTTU8RIVXDe+hrFehhHmAWYbbRDukKRvDl0B/lhudVLbPg8y57VY
	 2HvPKZ9KTUsQAlSe/+aKxiadTKqZY4Xgebo0Ix+EpTE8vL/Xa7oqMKPJdGDCu4p+n/
	 tSzSJwqpZv2VBbcM2jQOtZ+ndAojD63jY/9f4dPO+tGp0EgCtNjrTGxQrCugWI4v+Q
	 2sq2lAbEfjScA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F303CA101F
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175755299357.20244.15128784095033555079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42fe64a9f3ea4ed32c983499db3e42d43d5a6564a1d12600c0604f37f68d8e03
Date: Thu, 11 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757552993
