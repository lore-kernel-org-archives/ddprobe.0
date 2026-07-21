Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C78643553D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 09:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784626114; cv=none; b=FbrKexfzrQCNEQX2DA05XYwu/3g3MDJGz/qmQ0uq+qWXraGQxPRGrbOGBCjDU6Dct0u8Eg1h7d0Vu1q8vP5lL//c7bvMYCzvdQhdRb141uNgi4Hh+E5tzSvRFdQ32XEVIcRJbP0W6q3hqUim63ZE6/np4MLCvdYjCTAAU/dJezw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784626114; c=relaxed/simple;
	bh=n52I4RVW9Bq8gYEBvPIHLjygVvUPFK8oJiS9TcVEp0s=;
	h=To:Subject:From:Message-Id:Date; b=HVgMsKlJ+jzMEqAGcQszHGS8YaGN2G9g5iF0EH/M/sXOTqhL+m2/AWYmr2VEB8hFF4anDAmckgyB4utRyaKTawtRFdpUvKXs4HLtLPdGYnA9ur1sXkw/Cip15O3vXQfBooHgibXJgbW7475RASXOcF1SFS2RwDQZ8bLWOl82deA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4P8ujen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4P8ujen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD126C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784626113;
	bh=n52I4RVW9Bq8gYEBvPIHLjygVvUPFK8oJiS9TcVEp0s=;
	h=To:Subject:From:Date:From;
	b=i4P8ujenBfMn302GJCO5QEttIPMxl1ikY+ajQWvG2Lu388FVmsc4OHKZg1OIBkwKG
	 7BUa1vHhbUZEd7JmPZZiNXfoIe6OTG6u0ehlT3hC0l5+yvIAQB44S3VJZJVcaeOsp1
	 ID/qd5uYPV7EOkp8k0adOlBTeXFt21ceFstOnwY0W7ZRMx6ONVvcmWBuEe09TDarif
	 5/C9KAjfSci7PmcNDN94OjUswFKweKT0nG7b+pfhor/4goMa3ZyUxRo52VusJ6oX46
	 yi/OLsmP2eDwd0vkeTQ/ghvBm2rprRQbxZZHJw0sjr8SZO3+RmWXRQJW37Vpt7XBMq
	 xWolujsVjhfoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A982CC4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178462611368.7668.15989171471597311387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a28da8481218adf06253f033e86dfd334884e3534e42c2f812f6965a7f8422
Date: Tue, 21 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784626113
