Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4667630AAD8
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791227434; cv=none; b=F4FalpuMz2q4DT9rzRWls/ZQ6NK+38luRLicAor2qoJBgpTD5CFUG1CJREwtrB7qJWeZH96BePYapvmbbQl14FX0jHF3FgXVwg1kq64eidnYgavfDeuBsLCOcY0PKNcWE5dNroMIp1ibW8ePubR9ZBg3MV9nn0y3rK+lryXEiok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791227434; c=relaxed/simple;
	bh=fJvU9EQDfo5lGiR2rA/mvrXuTtijfiYuslQjQZt0t/Y=;
	h=To:Subject:From:Message-Id:Date; b=GeIMu1N3XtkGK78S0IgsdL1svbve2ZRrrfPeCYBTxH2FYNycBFukTY5rSlZQ8nDIchJ4TDQ5C/4iccbpICDO3kc9MW458kjvG96bIAeP3g5/Qgcd7s3cargwIzEmD73ZPKjXJWINK0KJNkBYlhBaCTqBmz0NVbVyJPvTMWAYBcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnT6DH8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnT6DH8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D826CC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791227433;
	bh=fJvU9EQDfo5lGiR2rA/mvrXuTtijfiYuslQjQZt0t/Y=;
	h=To:Subject:From:Date:From;
	b=nnT6DH8yy8dRceDY66jyaLR1xRC1wqJ/MrPErxVTKp6/C9D+/DhIm4fmp1XOHeP1l
	 gZR31ztugUe8VhDiYYoEXVXY1Bvj/vaTmfggCq9WWBvJFBwug89cA2+Lg0pv8dBpKo
	 3Iud1NBsr0MKERO5o+ctmjjeYC7ifuITVxShsVnwgbIT70Hii2dYnB52WnzdRUCe9k
	 uOYKWDOBjJwNR8LC/KpzTTd9NtuW9cjkeBoNaIHB9N9kJFAhNyulPQrb9NJgP00B53
	 NThJYjGlMWLY9neLGRguYF8ORKtji9nHH0zF9kjRozxkhQvw5B5N43Wu9/+X8NTEh9
	 JvCU6XPevX7XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B450DCA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179122743370.28386.15481657341714757494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1849e87832a1b1115124360db67eb15dab957b48ae473ebf4750159904453e8
Date: Mon, 05 Oct 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791227433
