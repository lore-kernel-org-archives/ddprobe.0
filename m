Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED13A2D7DD5
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773077694; cv=none; b=HD7j3lU2+4tZ1AlKUm6fd442jCHdeYkQ/EI1kk1R4uW25HoSwbFjBFytY3hE9MUHElsqhHN3hl5FAEgDXgC03WWO9FWw/IMY0Cne0ODVVVd+eQR3dOxgnbILDe40Eca5jDtDitVL9CO6UY0T7cpTPe/uT7yp50WbrTXg3g3PKsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773077694; c=relaxed/simple;
	bh=rEmKlKw+qwZhQHGqknX+v5k+yG8up9Xx8GSbJKJStM0=;
	h=To:Subject:From:Message-Id:Date; b=N95V7DbcdJfu8eG75qsIQFqPH9zvo+miDopaxYkwdMl6+A9GVvvIOGCFxphruTyt8wM31eRZqFI4sD3oEgVKqIXFR3+sb8Gzo9iOJWMUxqrBYTn771pG//r9N7iUgIQsi7iDCa4Lvi/OuKqMNh9cD1i9WeJcneUOu3kvZIfrtnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdxMorte; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdxMorte"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAFFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773077693;
	bh=rEmKlKw+qwZhQHGqknX+v5k+yG8up9Xx8GSbJKJStM0=;
	h=To:Subject:From:Date:From;
	b=gdxMortewffx+6Njo1FCiqy9uWGk1dhISFKkYebjLXXt/Dkl+jIly5URBd4BmsBxb
	 gWFxXfFBziyRQu3okUnlODzTWGZMDnYzSVricXVk3vcA0dSxwcr6UCUM/33k0M+xRL
	 /WT7m/MH2knD0YqtjglRKJ+v8WxTj3eG9iyxsC5bC7+PMgzjm7ds1558HHD9mTQebF
	 zn0MJ5W3b9pT5Jsy8bUr4er7PAJz0INVbQq4SUuySbXBGv+OiThR3NymFzSIWOlkje
	 VzgqOki1Ue672lAL1dgBYbNiftHjzUMNlsNWJGeqiAATAgCN2ViUf1YChrxiCGfjsq
	 +mw1sSVbGNpBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9064AEF3718
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177307769358.31061.409330113901515608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6bb4058101a69565df4bf6e577e942cc0b16d5fdfa71ad5acb086dd5697e65c
Date: Mon, 09 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773077693
