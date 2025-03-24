Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488FF802
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742822394; cv=none; b=TMXvll9Jk//JtxcZJk7GiEe/TYdBYvuoeQ85pZSlhKGcTx+cVxvIL7ESFoX+CcqGaSmMZorwMMtMenpsD/4531L7W6e/WDcdAFAyWeaale8Ws89M2dnXDftgJQwe3Gzv66AR10JPNbqXl2n3FwNTseythMerqMmL5ffKF25aA2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742822394; c=relaxed/simple;
	bh=k1w81hu9TBQByHT0Bg3p9DyDovAkOdw7GGfEltAUKp4=;
	h=To:Subject:From:Message-Id:Date; b=rUjZVyvo3QG929WmEbpW+flL8pFg46Q70lAoAHThHlC7RkchBo1KbUuoftn99LrNRbq/YOoJmxCGQ5/W1Kt/YHRJXsj2LVAYizag6bn6GkPw1Eyx2oqWCrDfjXXMgE0l3r28GgArGMvcYvt9qposGA13OmL1GBbcDlZ/v2ammtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCUV7qXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCUV7qXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC830C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742822393;
	bh=k1w81hu9TBQByHT0Bg3p9DyDovAkOdw7GGfEltAUKp4=;
	h=To:Subject:From:Date:From;
	b=DCUV7qXhAg515kVyJcRkDJuhWzuvnf5US/Z1TNWZ53bCVD2NDzg8Fxdgzbfa3LBq1
	 mWqMZ1lN+e3waIW8DEpyPR6FI9AKp69hJjjnS6O757HjD15/OBgE+MHUd/seBKO7CY
	 068ChEmFVC2jhYRQYdvv3axpyZsNKP+TPmLkhPo+8RSROGF/qr6CvSMg9h1zRcdhK/
	 l7fkxN+Bs2FUTAW6EwcPIU6Od5M2Qwn0kwlMJEgXoYHmunVy2NFtCSA6dfttJSBhsQ
	 +/9rfXES27bf489pmupOLxouPlPi7M3Xc3H0OyeZE0+4HK3WvnA7QVLXnI3BBl+7an
	 nVVvm9XpJ5Mww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A10CAC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174282239364.18186.7499338408572373846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c5472ec0c4b87a12f2f1b12fe975678416267d8640393fdf8e1ef99e4ec4bf
Date: Mon, 24 Mar 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742822393
