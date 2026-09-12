Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAA4212FAD
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789192834; cv=none; b=WldmXaEUywCj+eBNj00nrph1cYe8pQLycgAQcQddEdSB/h0Q7ck1UzizAJsatbPCjiDt6YDGI8e+81aB4CoO8BDtaU48xju9Zsc4osNbWgvPZIyryp3kaBJbChRU8xJtovGMxtE35J70cJGZ2r6gnPjReLhxWOY17UNawXFwPhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789192834; c=relaxed/simple;
	bh=ZxT7SGBMfSUsH6MiPKLpkVByoK/bXYZdOah8B+JXDXg=;
	h=To:Subject:From:Message-Id:Date; b=Z5l5C1rtcVQHpoaReaAf3Wc55IpvLgBFbJNp+omh8iUBK6Iaro25a1kZqoKd9Vj8Wh94qQa3dqoRfETiY2jAh/lg8exYBXXUbuRZnzoVDR5kYqW6WK1+asRIhrr6Nz4WT6lNOIzlM6TBVcnCs9jAj7YapARWdkoHAgqnC1Hlj98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8SJP5M0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8SJP5M0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FD0C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789192833;
	bh=ZxT7SGBMfSUsH6MiPKLpkVByoK/bXYZdOah8B+JXDXg=;
	h=To:Subject:From:Date:From;
	b=G8SJP5M0wgYGiN2/EQiXFBMcHf12VKf9Clsr5nUowLCWRnnymI2cU0c1LhS+KqhLy
	 2bBFNPQyz/Gh5nAOmT6T5fJuZqzT1AcYtcHrmylN1oeHMtQpl5xRlB6GV1JIGDlntk
	 qN7DaHd8bIzA6Q7UgmuEaiSB1MojsaBRPov2j65qrZ/Bo2HiZIOo3ydAhv40rD30Ms
	 Nt2mo5SIVJCss8BQ+86z6AKqjlAr9MrxGErZqwA9vfayVSIhDNghggx7RINnoYph5T
	 wPJkhxEazQ1NCroLDUil/ku91H0T4/TBsm6wqvcad/UTUUq5szGf06ozt/s5TqFnfs
	 sWxMs2fmJxTdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00E2C88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178919283368.13153.17423753015743224656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19b508f4b04fd2f71ffe4d33adacf657e7fef4336172d12eb06deedcbd5df802
Date: Sat, 12 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789192833
