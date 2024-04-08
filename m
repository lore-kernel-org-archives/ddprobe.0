Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E67244A3F
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712549297; cv=none; b=SFONCct0k/CgYHB25RGgO12HO6MzJACpRJA9iIv7wko9VQ80OV7quIZcuMMKwOGmwtOkTCcLedaG01MYV3AE1oFFEgeu4Mp33wUSTYhBCdynh1Jd/qekBBq50PySK1sMckBUATpRM8QcLTlsyXQWdWgFQVu35zRg+IevB9XLUfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712549297; c=relaxed/simple;
	bh=vy1hsuwxmhKrcijChwmwHX0+dlUBOeQbYW9yOc7+ZWY=;
	h=To:Subject:From:Message-Id:Date; b=mzm1g+SbJPkjB7JyKXbK9QVduHBtNk4mkcfhNF3mTOkugk/InPXjwxcu8NItM2wsiAWpVmAAqznITEROsThLX5xGzarN61teJjQXE0gjAGe5djudUWb+iGSdlXiDr6GPD5rbSoTIwP4p505H8yuVaD1rfqfewNSqQy4USgVsDR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGimeiIZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGimeiIZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82D17C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712549296;
	bh=vy1hsuwxmhKrcijChwmwHX0+dlUBOeQbYW9yOc7+ZWY=;
	h=To:Subject:From:Date:From;
	b=UGimeiIZaONFcjQZPxuupY9hnGY49ynr2QoeL8tYHdJ6tU86FslCJ/deLivOkjQHt
	 2y/Du+UfLKaFy6sxUQ5khWGkLwV4oX7z+80+zvsMusGDPPYiDL4nle5ptzqBMDSzJr
	 0lFnRtKcJ9nodVcDMExqoH7hir8U8Onv1zqF1+vYftVse7oQBSIELrFndb2/iIrRSR
	 1UgnKhagj6WwaK+OQmT6jtTDQWq2d/2A7LmOwxEf7NFJP2OTExc5gUwuG9/9m89h62
	 PaSZwiDF1U0KCvuQvVhYDRCmZWbzkusp8wQfrCjmpHjCO09CQ6PN3OjjoNhG0x6Y2t
	 SgnWU5JVEzxSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F2AFC67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171254929641.14677.2060761667109173289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c28c9a0bc724e92daf5773a93b411370001580881a17113314700e66d5b514
Date: Mon, 08 Apr 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712549296
