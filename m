Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A162EEA8
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787954434; cv=none; b=Iq+XQ2KewdUZ39CNYqPuDQGCwXSB+HfwHN5cdfTvo7sOVI/IMRUR58mmuGkWoyaVvNYiWcH0CX/gFPOrsWpLskvl5I3rq/NwlMtWFX5Y6/YY8t/I23GkatgzvVDQVMADXco4NPZwSttISF/krtal1gaUte5KXZJ/sJnV7W1O8qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787954434; c=relaxed/simple;
	bh=I/z7ctjp2YAYEiiGsQNC0m6hifMYtXtn5Ce/0ggnlj0=;
	h=To:Subject:From:Message-Id:Date; b=QLQZDOqk0WSM83gTMA2TFAaNY/tCCgz12HxYr50kQMvKxWFBDcfAGom75lFknoJ59635VZ9COFkJG0LjM7rObxpEdQ+l+ppRypQzBJlRJnqVQQiYRh6mcWnbODI38G976qa/EXFdWGzE3f5CzLv9f4TIIaUzJZaK7D0ZSzKbqXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfZtyT4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfZtyT4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FAFC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787954433;
	bh=I/z7ctjp2YAYEiiGsQNC0m6hifMYtXtn5Ce/0ggnlj0=;
	h=To:Subject:From:Date:From;
	b=GfZtyT4+YmylzNSxaW7+XpRYEaNK4cUg/gKsrKSmvkDrHOv+SSPf32MPZqD/2KO70
	 nnAQrp0RVuekBPMsNcVTwAkIJ/ctoAm9aXWaImT6jC8wX+lOV7le1thUvKdXXc1pXM
	 FxRAXDOLw1N3S29JbcjhSmOALgtcpgMHO19dcsC1fxAZ79wgW+vULlIi0QKVBHzSHN
	 iinyS6gF5FJw3PLqiTNY8EXET5Sl/v/nq/ihJsufJCq/D3hL17kOQr4Ep2294iCPwK
	 xuNwE/QjP+0Ax8nPSo4LzmFPBoHJesm0O1eBiM164WRGv4Os4zEZ8jMADXGNFWzfC0
	 sTg7W8EBx28VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD671C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178795443368.806.3319609800062870243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33d81b446ff0727a92a41f6b6eb19424eba9a9a08aa9ef41b4a8c686a3a6ee47
Date: Fri, 28 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787954433
