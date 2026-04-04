Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404AA2222CC
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 03:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775272534; cv=none; b=RgINTMp4a0DO/NzH8LuI1wd2wQJzl4rU/p76qr2l4v31UeDRBceZgxy561BZNvubyCWtmSsdoGJbhuDAf4LTGCeFqG3tAAAsh0ow9K89VCdRXvGoa8HLnWjZABFeD3byrA1nMlR3kr5aiD1gMMRbHbjcgWkmzXGhaFZfLdDmZGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775272534; c=relaxed/simple;
	bh=KwcUP0Bn3c6YCFU8mC7/MJZ+2GDaduGUE1q5xMkwESs=;
	h=To:Subject:From:Message-Id:Date; b=J9x6uk1FKB8fnPEzpEHP3nRyJxhmB7W/2YjMoJ5+q40kS5AR4PnlCm8IC5gfrArq+zX2vuFelkOj41XD1597xL75AFbcEOLT9QJdZa1YrQu5JDwCHUfsn55lwenCHLgLOcQxV7Xn83GmN2Dzd9gP9EMqxnBYRzmGvAkD6FuXHb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ymi2wszn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ymi2wszn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1BDCC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 03:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775272533;
	bh=KwcUP0Bn3c6YCFU8mC7/MJZ+2GDaduGUE1q5xMkwESs=;
	h=To:Subject:From:Date:From;
	b=Ymi2wsznwiD3ERQUnkgX7rlItsvm0KQm5Yj6oF1t1+auRYNY880p9pjMp02dTAyJh
	 3ly3Sro6Lh6L0YfLTly8KLcvAjQX+C9biezGcJ4IMHXDjulJOlhyFfNkyxdZkZRL4c
	 bg+EhV+zB2JRJapjk1FtXiWbZu5jwOEwd/6gdKDl5P0YrnJ3dirSN1pPtjJXy8fYpF
	 ZCg0m4QxNz/1JvkGMvhAHRoZ60bnVEvlLgGrvG9kG8yuU8M7AVZSvLy3qH4Ftj0y/5
	 pcIISNZyrkNO/dcvt3CfB6FAZ80TzHwMKGflvZJgKdXL0+bNdefp2IMKEONPQr3Ksu
	 sdDUQGBhskzNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB04E88D78
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 03:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177527253368.19568.13814032117681134213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f366b2bbde0f4d0b99e2b0e0b8974fce305fd8c867aa1f1fa7403902a8fad1d3
Date: Sat, 04 Apr 2026 03:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775272533
