Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED1A2746C
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755412194; cv=none; b=epbiA4eD3R6wh2sSCNUzqtuxDsE88oTZ+KvsdJEPWsUEzTm5SaW80WcoX6e02je8VbsulUa+py2zbLyVnOvdMvLn3NHcGDzKISJJwdIxvjxj49Oh+sOKxMCerjAh5Vu1S4XpAyqqc3Ud7itLM0jlx3ejAgR5jGQJL63eIasVdAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755412194; c=relaxed/simple;
	bh=vinndfvbXk6ZtXJiEHJemUcACEl2gWvBmg9L72PNC6E=;
	h=To:Subject:From:Message-Id:Date; b=PP2lH0Ov7ylVoI37qcuLDwC0Y75BtIptzXN73U264bBoYU73wVEaWSXV4kIHkYh2Q+pFMvfc3QBFSx4qomSW/XSSPezIMrRehqpbmOX1Czy5RpAUbko/hc1WBepapuch5oXQQ08AZQRtjG9VA1cXHp7hc9NsGvBqmD/qx3Iek/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4sZFyE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4sZFyE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6713C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755412193;
	bh=vinndfvbXk6ZtXJiEHJemUcACEl2gWvBmg9L72PNC6E=;
	h=To:Subject:From:Date:From;
	b=R4sZFyE/clAZZXSfOL4mTVgK/Z4ULmPS6FeZfZHGSFghTaaQXbYzixubI7V9uTgOj
	 6HKxLw5sQpZpfWWPAS7Q0wbzDU0K22tQJL0IZRe26YKhXSEa0yLvPIvpZYWJ43e6ZU
	 lxnWdJIeAmg6Fo3i45pBE3bI0mjK8wN27hjPNBM8vSKMllMZJBrGFsxJQCxX0hMC3n
	 r2iatcx4nBWNyCOrKkUmLN+6pJWr0SZkhfvqc2Ubyrs1F2LSmaaipfBVzjcTaYClCT
	 C2zviBMVFbMLG3M/9WnwC2WQGQGjgJ36/HNG2FslwgAzw6NmEeYboD4U8IgGQrxcum
	 pZ6upLOFbKXNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950E6CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175541219357.26375.12307504575756315111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ca575ad0408933717f74f7a4f82a26e6f2fd00ef3c2eaf9f230d128c25acc6
Date: Sun, 17 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755412193
