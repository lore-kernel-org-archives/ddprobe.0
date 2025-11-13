Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1D92F6585
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763072994; cv=none; b=XnI4Tgy4iCYw4t6nuMpUb0h52uwqHXk9obSsuEmIr4eSWIAXImKzPMZLIhcI6D0azAc6JllHtNlaUxCBDpv8WH74TWOZlz8cSTZtcWnsPHUDZiwp7XJ5zuIYsFKIDw9lVMzjZMwTRFV0B4KPNws1WB2nBaQ+DB6b4k2cmvUX9d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763072994; c=relaxed/simple;
	bh=858jSzAhpcoV5zQR7yhxCuT3j1wMVddw5kDiewv+Oi0=;
	h=To:Subject:From:Message-Id:Date; b=bReNjYqOKMi0KzdxoGkPB6RcBCgPQ+qwlg4G6Nj3P6O5xH8VhJkezTpA+RXvmgfCPWo6Aeer49sT+uxcHv3zyQyBhXGB78jGn9UytDwt8T5EcL0tacIw2J5F02qvNeX9XYCH1dHoJH0ejNx0n+5KtZ5ton2ivpyznE41Nt4q7Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMQtDBJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMQtDBJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3C6C19422
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763072993;
	bh=858jSzAhpcoV5zQR7yhxCuT3j1wMVddw5kDiewv+Oi0=;
	h=To:Subject:From:Date:From;
	b=fMQtDBJr7mFKe5cyQQyjW0SlNJoASHiJ7KxBK/qirnBF4zPuCntKNY41lUZ7ogAjp
	 fhpC592cPYR+QMEn7fLWow14jC+huExeVrknmT+PL2V+Y52NqDdGHab6tJIVSMOtbr
	 Wn0G5FeI53f6KeNYNvlT26au3hVv85va8OlQu6oKG+kKNWTsFKOFQhw2xdQdf735Zx
	 xWZjbc9Z4Vs5mSnWYhUh2IZLG/owcj4NvIOB8hJ3RvVyCDMfjnBHS2aye1ZOEJdyGj
	 dUb8h/kwbinfI2u0Pl+yu1xGtAMALjHcIGWqgvvIM5JkJx5EhokAgq0MjWGixoz6cO
	 NdlC7BIz3rQSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B509CD98F0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176307299359.30395.473173504213112421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376bb20c6547e197065406c346dbbf2c14ee70da21923e4a2498b3023eeebf6d
Date: Thu, 13 Nov 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763072993
