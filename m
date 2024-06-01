Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FEB06AAD
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 02:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717208063; cv=none; b=ibT6DCE4YYMe5Y7KJHkMjGnqakLUg50CNNc7ftRVoaypw3uLzNoSIrNuhfwvYWPj/ZgL3db7/GfATGgeZaJPU2624Yl5qRqLcHzUzLSahuLFWowBkbXJvivT+tAMSx/zw6izFRnfF9UEZpovMszQu/60hAWHxU1V7ehZEhrc/us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717208063; c=relaxed/simple;
	bh=1RYNamSlttd4FQX1Qcp3Q8oxumUJAp+luqCgL4q3DJA=;
	h=To:Subject:From:Message-Id:Date; b=jz0WGjTLwYpWAAr8dIxZTbt3mEOK52U7ICRwgtTpCFIaly/oi/SrbaF3pnNmlHcd1j817lp8q1wq1Ng+xC24bDSILTildk1MfmkGC2wKyhMiSgRQsQFjULKsgErCgd2iYIOLuIrQHtUHuIsgh4b2y1wgtwXlI0+tUZ/3nssR+80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIZ2hOTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIZ2hOTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4985C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 02:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717208062;
	bh=1RYNamSlttd4FQX1Qcp3Q8oxumUJAp+luqCgL4q3DJA=;
	h=To:Subject:From:Date:From;
	b=IIZ2hOTlBdhjmuErgPCFnuKYe8bEnhy6h3HwVhhydX9ShzdslIciyKYHYA8S3wOfM
	 sC/o7okL8z82jPArtgK56Vq8iMOuK3hBIPHDzFQeogVKsUGFtB5IwQzGhxj5CWRRfe
	 LFCSht7TPHVQ3ktFGyWKhtgbuVSLTA8tPfSyFB80KEJC8Lp/T8FsqWum4Cm+s8p/gq
	 swpElhxHOFVTQxv8U8h1dx56YMve9pThYcTZ+t2bZJe9I7UjqeTzBHs1i9qrlbAcQx
	 BOkdrlsS6O8CdLFk4CH0jyztG0A+1ZlexRfxgK3GmXMBePDO8awtBoXknUVigUHr/p
	 VA3YbP7YjXgXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE367C25B75
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 02:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171720806280.17976.4707022693712606491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48bac5fcc7b0efdc58b21567874cca106429e2513230b37b21b9e8c458098318
Date: Sat, 01 Jun 2024 02:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717208062
