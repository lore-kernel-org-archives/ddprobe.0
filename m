Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102951D61B7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770399234; cv=none; b=jyM1zI/vrPeHZXVePq/lstNO/S0tWJSCdpQep05wAw2vIZ7jHyBW46TQPN1oFyUbqW8C69KsUxVZmXyyDAmpJ/VQ3mQpul4MbymNpcfKMarZZMRP99X7xJLWylwyWN4x2i1YxU+uLPU6KrPytYT40fEzclNe10ozjQwD82wjcsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770399234; c=relaxed/simple;
	bh=nuvXupPfa53tCS4lZMsmnuHknbUvEl1uLt7j6zQwSwA=;
	h=To:Subject:From:Message-Id:Date; b=RbUAqHn8BQ+nDmJ6OWwVi/2HMPND3PhA4Wik40HjyozDRzB6DWw4iiO1XgoQzK6A9mbJi94WF5tSG6ccTDcmXbcK38CS155W2BgWOAJWmVAYDzgGBlbr9+jFWsLjbmr2lOilzovaPXV3WQzV9GLk0u1FvS6zvmQpE9B2Xfas280=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3nkqgUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3nkqgUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F2BC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770399233;
	bh=nuvXupPfa53tCS4lZMsmnuHknbUvEl1uLt7j6zQwSwA=;
	h=To:Subject:From:Date:From;
	b=F3nkqgUqjhykPLqp6SzmD+ssPe4tiP5sBwi8zuJjVPQdGByYr3m8M4Tx0U3TMmLQd
	 d0cW+TlyEqtajNf5zpSgPSMXAGMO1LgFrtz5m9Hkqjw5CkLU+JYEIVLz+UcOrF76n6
	 AMJvXtWjPEUQAIsKopj0h6c77GQToWBVwnABrhA36abG4zMkxHoGzdhDuSO0hWQUQ6
	 FWex7sSUGV+smX4dHTIzArmab1veIW8NOAl48ltErAsDAkLw+mPYskhY0sGoDFdld6
	 U+8KT/rrW7CYL4IzSKMntHnL4nK452BpcFtsDfFiOXhy3tSEkU8awsRcvEmcpwNwQB
	 kwy8teb3jigdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9366EEE6B43
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177039923359.7261.6800054549088365513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 942325ad3801b3e17e8f82f823d4929b67e1f420d826cb9b074920375c80facf
Date: Fri, 06 Feb 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770399233
