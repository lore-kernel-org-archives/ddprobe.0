Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FE42F22
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735148154; cv=none; b=NhgP9t9PwVTIVYWQr2xzEaoPN59ioJvRX22mmfWyYF80fEGtff3Mwhc9tl9EdeIF7K9hD9wQ7vh6VsqshpOmID5sQ4TvgdK+gwH1sAs+HnyTWS2NrgGw4NtnAic5sN33x43XThwM5MSFJqWOfTZQyQYGHsZIzTr49u28sHdD47g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735148154; c=relaxed/simple;
	bh=DSAE0H2ViCOjbmTyiDFkbqeR2afCZom4a+DQ7E/uock=;
	h=To:Subject:From:Message-Id:Date; b=nzhd3023zlIVtqWh5GmNZrAvfWqG41WVQErVtX5mZRBNklissFCW6MPl6LiSPaWVgaFgxPHLL6TbGWPi2Q005bq9vYTc4LI/uyphiAT0+PLfp81IZAlWXBKaMpALeoc+j50jUjTuHbFT9/ePGFCGVPdOGfTEm3tvb2Pj7WIpDW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3YPHvVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3YPHvVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3166C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735148153;
	bh=DSAE0H2ViCOjbmTyiDFkbqeR2afCZom4a+DQ7E/uock=;
	h=To:Subject:From:Date:From;
	b=P3YPHvVVJVF93TIGJMsz1z/D2PRnmxq06Cl+oWNfH2DI/mNSpCF+wSiohRFthB7+y
	 nOPTJPY83M5v6ibwpTbeYfSqs5LkieWK/sQ+HpNpC/75guRuceVEZFZhkGkAiqbrR8
	 QIoYVWDjHpK/uF5aOI/rLHzHgY3p7GYLqSBv/5GIfc6wsDn5SrQMC155SsVs+VyQk5
	 DCQsmVs3YxPWha25x4qFPqPjv6lprdkMwUj1Gn9OjndWd97WHG4WhFknzLjquQnz9B
	 nei6xNpMs3papCfHYM8C5/2MOWqB6UtmMKidIEGpqr478C0VYBmEU87/VLURUxYrGh
	 H/ObkEJ/BDcAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E712E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173514815361.16943.10720778093870420910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b5bfbf54bdf52f47ba9d6c3da9c11f77496e355a55ee922ce013e17690781c
Date: Wed, 25 Dec 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735148153
