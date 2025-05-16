Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4353C22F748
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747366194; cv=none; b=CbqaQY8HcItT53kdmB6w6bX/F7uAzr5emuXkVig8vibZojDl5ogdZbQaD6FCIi1YEg82Wgpa6AZGGZRyOUYpEvZLuCk49SHRxpXfeMFSRgO0Kx1w+/K5qxZrG7E96BQNF7fJ5/zBNNKXRWhRHmwKlMQ++CKOqwbvltZg2sgGWdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747366194; c=relaxed/simple;
	bh=SKo/1sHeMsCS6kTNSG16LLMetXgpopYWSp5xDI8gFgI=;
	h=To:Subject:From:Message-Id:Date; b=eSzfk0QMxQ5GAr4w5pEmsPBS9DJR2X/gFsn3YypAyv50aOVsHZ0hbqU7L2HIENORZVgTohm8ZlBZ+rRvYVsWaofWXz5V8y4VhKwl4vnC2SaOF3AxMtepdICkGo2iw7fxGoUTfeGTB7pNUwWi1C1NBjA5eogbr7etowOlM6j7zFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gg3wlJps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gg3wlJps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75CDC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747366193;
	bh=SKo/1sHeMsCS6kTNSG16LLMetXgpopYWSp5xDI8gFgI=;
	h=To:Subject:From:Date:From;
	b=gg3wlJpsljF3FiYYvyW1tgTnOkECPbhWjyFfdPfztsFrEVZPmDpqNbprHlAjW4kPz
	 /iTQelg3mPteI3MKwRZBpoIPUB5Lx6UVtTO7MrSEllRQpp0T/E2trlFeZXNv7ImXSH
	 EvrgpJAEd+FF8IemqKEWmoaNLTq5doN9yh08t5xfdfBAuIvUqEzyZTloCyqHlYkBDh
	 twiNjP71Sc6ZUjiNXdseFe9FMLG7dzZXob6JupjfOo5o0neu4DrvHGE5moV3jREkW7
	 LmcaFzdjyK8cYGNSmP/Ic5XfTf2wD7wVnIh/4333kj2yofUEbYEaBu70FlXsK4QEat
	 VleliT/TRxcfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D3FC2D0CD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174736619360.13128.14410738422807939151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b307d493ef45b891f5f09d110dba47c5ae09da462789c38a64c487a9b8cbf226
Date: Fri, 16 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747366193
