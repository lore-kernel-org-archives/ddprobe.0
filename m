Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4223313BC02
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 15:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718637503; cv=none; b=eb6mPHjw7tgjbt3DUU5FcPmfuvZUAemZotzywU/MF/GxZFOdbLYBS8BvlAjCKeDlkEPnMFYumPBctU2i2uF4tc8jp62LRZnbYY3ZKfT6jV509Bv9XWc2s72Q2T63QfKtUuhEngUDxcb8xcNCJWapj+SNP6rjl18/GLODWnC2D9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718637503; c=relaxed/simple;
	bh=L2Ilp7hKXUMC8I3lrsQMrk+e42InSPkpWa3xV9qfihU=;
	h=To:Subject:From:Message-Id:Date; b=rehE21ci0KAIegOBgYpToWxb9iH+Pn+3/gjl+EPU6L1eLqyl0m4e+30YtVi2K6FrD61aqesJkSKLXUcBm32QR7wmeo4rEfkOhmZQ6QM8rJzmEQGENRKWMbKxNDwnRde0DJLUqi+hHj2uhw5lYqMC1fE2TL4EjuuOLkjtXjlgFoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNHHS1Uu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNHHS1Uu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E71C4AF1C
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 15:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718637502;
	bh=L2Ilp7hKXUMC8I3lrsQMrk+e42InSPkpWa3xV9qfihU=;
	h=To:Subject:From:Date:From;
	b=eNHHS1UuTayj62kYdBHMKxJyWT+YgM6YZQT+uaxfJuFcKAwUlrq0leQL6/ErdUkve
	 RPyFwW121QFNtFeLvahjQhWPfW4kpZSYTx2DWx9L8Ct0kVz1tRI3wwN3wqT7PEYOlF
	 +KOVtIKWQqpyhWg4DotuJtgnWt/PL6Ajch/Y/m3YccoOkSpwW5RNX3jr8sNm5/j64B
	 eSQej0xtKJx2/6rzuqhPzNN2RbGKUC8PC2hjX6OD1HNo8hlYfFcAA4wXdrjiw5IjRE
	 ftG0lwlNhgn6LxUphMK+Z2CKKcBnV+MvXpeR7cnhkRAK2Ehp22Gx6lUpkPdI2Yffz+
	 1muWjY5XGdiNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC203C2BA15
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 15:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171863750282.13785.10254934530812784711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c26fe62c8c9d198e3a1ef09a852223ef25e9be3f9b29ff549c55f25c58a8f6ab
Date: Mon, 17 Jun 2024 15:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718637502
