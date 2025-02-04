Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5660F16D4E6
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738696554; cv=none; b=p07YjbrkUt+psY1R3FUIrsYqbvsanYGgOCF7g3Fz9HC9sSMkzrizAjy1TpsBriFC7n5axpomtIDDRIwhwMm1ZiP8uZsatI7ZCCK+S4EwLghy14SgnuTP6CoaNwiBsXzeuqnYgkbFQ8bV/22CbBvgmekIlhr7XmCLgmkUT94Og0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738696554; c=relaxed/simple;
	bh=al2Bsw0gdacgm2QGPzP7sk/QiyPeJThxzDgsw2hR0Jc=;
	h=To:Subject:From:Message-Id:Date; b=AWIsq0OsQzg9SKutInLC5pjyUPViUF9l1GJ6lJ7KmoIimVm1hd7KgaUGyHB8qodHNQddN7ksKKMk+SlkabWvshTyAXkG/BXhMHFpMQLWFAS8oiNdWWh+WOQdfNu5vAu2h/K6ba7RkoyT/OxzWtjCHb9UXbBicvOj9NHb8hsQyX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2NY2noT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2NY2noT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B600DC4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738696553;
	bh=al2Bsw0gdacgm2QGPzP7sk/QiyPeJThxzDgsw2hR0Jc=;
	h=To:Subject:From:Date:From;
	b=f2NY2noTpX1HEKp9R6UvkjRalvfTL+Yq5ejgO/AZlQELYGvIze72ZR35r1cIlUaqr
	 ZgSRsGjwd6ZGhzFLOUlpiEWyp3QJ+IvVUXXDv3rQPyffDurj8f3hDnGeKE/k6scJC6
	 yxLOcJW1ace1wUq4X+SZj13yx8YrKcn+CEtus84QOgzpvA4eehzr5l845fabeHNYhb
	 PAAwEog2Wa4aVeYpswmIk4NNzm/ILd7cB9u5iVSdmablo1dSV4H4uNp6VAtGC0pSiC
	 U058buvkLn300mxKm92BLApiJDqeibwYDAyM6Z3mVqDxNba3kpT63SKLr3lXGCAuo/
	 PlnWvG/57hFlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD57C02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173869655363.12006.13357648435283230839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c68fde869f93813fb6a0c615e59f619ec6b68add1b55708715aa9bb0289eeb74
Date: Tue, 04 Feb 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738696553
