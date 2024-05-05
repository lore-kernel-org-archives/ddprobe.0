Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627037D3FA
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 22:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714947143; cv=none; b=CQM3XGuzNUYJ0khxfewNRUxb88zjREghD2pocuBO2mto2IUCxwHVCW+XVMQT4lQRWRptH7+HWL6h+fe9Igl6hnF8yqvOkLND8r+F2KqtuIv9hlIC98a+0sJMbpJDunagPbA3U3WSGKezh/nZrY0eZOEwoGMOJygG3iskDunJ9Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714947143; c=relaxed/simple;
	bh=+TMpY1M6R0oeK27R2G2XiN60DR+x8Ar/Y9UeyVf92yg=;
	h=To:Subject:From:Message-Id:Date; b=L64YumWmDSdUqBqk/i8YErgkGoAqVe3WmDERPnXW0Rtuxy2jbDulMjpuz13DlF36LoUPxY2lChCCgKDvpVV5DG0q5Ji1wzgV6K6qpRY0BQN4IuhZ0FmkN6K6vQZT6XyidgdNFgPMZ7PWaTMcKCp4egCxdK8WuJegruN/P8QP7DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=am8rGfSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="am8rGfSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA737C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 22:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714947142;
	bh=+TMpY1M6R0oeK27R2G2XiN60DR+x8Ar/Y9UeyVf92yg=;
	h=To:Subject:From:Date:From;
	b=am8rGfSSbcSlO9A8xSXBs5KAOQQ9KzPXBElUuHRHTvBn+2Z5ul89VOXx50s6cme39
	 +VrhrdDumIyLYcpcKpuree/jz3X2ovA+BqER7Vd3EYEY6GnJWuyKF6sncQ+tWZMg/I
	 UR8yQsjraWWp6BjK9bJS6nKyP5dsTJnRxUKfHZ3cJeAiHErQpycu4f9vc+fWD+5t1W
	 s2buXnbMumN/VF4BOjH+OQaKBSGx8MrnUpOC6RwB19DQNB6e7ulKuXBtK4HWLtvww3
	 TVC65TRW0yeaCiiNukw7RaWbgKCU7pxOyTaVxI43NxlcXMC2SNsrRWFgGZwEjKGcqy
	 iwZVoQz0KXTTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C540BC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 22:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171494714278.4454.2361643874221020842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 843675f1b9f19bbe7a490f0428b1bcf2f65e626c157c50df18cabf1b58ada858
Date: Sun, 05 May 2024 22:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714947142
