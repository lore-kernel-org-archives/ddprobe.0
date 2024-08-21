Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4D347405A
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724275554; cv=none; b=gl5FZaZsWf0OxzoqIwWWTNr63loX9F+OnGRN1OGPQOveAeG1+Koo9HrBvBmviKZANGCLmsP5upWRYggqsu6jpTzNJOCTYdzdTrLCWpEFrIr8c+D3SVi9UiyPkMj8ZaNRkt+/uIzc80bHYPNynyDUMWTq2c3L4bUBSxj/ndkyYuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724275554; c=relaxed/simple;
	bh=wuVXwlZML3Fs/Q5nLQaB3fkLZZhkNWK3bDzs8HrOjZ0=;
	h=To:Subject:From:Message-Id:Date; b=VCEFMtbUfSnPqXzJ0udEGF1WHzAtCPc3bHHVFB57G0NpLb6NWEjIT4+91VC6S1SUKB+KW/ZYouwdHyV7xN1P9nPRKSs9tzh4A37l439h9TsPj1OsEEO0X4+trk8Xv8YsuPSFerr9AchEe3oq77SwoRVf+czqduMpacJ9tkitU2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I73E618N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I73E618N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE13C4AF0E
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724275553;
	bh=wuVXwlZML3Fs/Q5nLQaB3fkLZZhkNWK3bDzs8HrOjZ0=;
	h=To:Subject:From:Date:From;
	b=I73E618N3PXyr4OKbBfgwkjKhnLU9RJ5IPy5IcO77Lpgli1vH6NzALL0hMqvAXowD
	 Yti+sS5MyrMyPgYBLMFLlq5lnBxoJxbs2ogzR3xsUrCGWY2t51rkYi9GfT6GdrhFX7
	 BX6xhxB7h3nBfr6Tek03eB8eyZ7tucb+TSC1ApAyLKmitLsEygBsxHQmn9UIxXARDh
	 qbOMVnB53wuTfD9fYg2U08TnfMp+bWJAtF5ATn+g7jSp4A+8GW03fMNLpS+mJe/k+F
	 EOojKKSsjOeLHx8p8I1gPH0TLuxa/OLUkuXlZuWddhbsHlxEEu6+KidcFckH4+/uJm
	 Ixmvkp3Vm0erA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9963EC52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172427555361.5473.13320075035901489351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c7225045682a5802f4530bee0a47c704e96da47b56da8cac3a4092483dd0f0
Date: Wed, 21 Aug 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724275553
