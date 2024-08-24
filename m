Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3844FA947
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724513154; cv=none; b=iCkIA0opUy9VeQO0ZwomwjglToNjdeHocExDzhtgH9HouHGC5IiM28QC5I5Bt7hceA+WBNJXU/tD12+JH4mDmymRu/EARI7FQns1LIc/oBT/r/Tq2cB8OGu59nMD5+mLc15+XgF9puLxjf5IG5MfqpoSryAozzOZ26D4DfkwDPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724513154; c=relaxed/simple;
	bh=B4KpTxwxHH9Tadm+EyxlpGk/ABG244yDLF4rfCgVE+s=;
	h=To:Subject:From:Message-Id:Date; b=NCGbRcDnEHOD6keClXP4dRW9t+wPN2xkdvNHkh7mknALNPpLJA8EEUoYr+fUiXkKKWaIg07b8uFuBr1T3n089z37UZynBAxJ7jjvVKp4ceP4LK7l/4BwLw0BbvVDbg+PrVW0EGg4xBBNjg7zvO7sxW5h6R+K8h8s2IpevVZIP6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYVZmFbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYVZmFbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC8FC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724513153;
	bh=B4KpTxwxHH9Tadm+EyxlpGk/ABG244yDLF4rfCgVE+s=;
	h=To:Subject:From:Date:From;
	b=eYVZmFbc4ToTVmiwquvg02zt3nMmKEHEYeLilsxq74KmMg80yOnO6dWiytXAUJkqY
	 1iJymx2iDY2KwR8GmJSZfWmb4kcVol42qWV8WnK+bCQSoj7JMPXeujo6TjKbHTuPHV
	 bSBbe9FMz7YglMZQdbeaEhTWyyscjI4X3APDTxmT7ADPp8ECw14ndOqdlWdVlB4RuF
	 EjKl+ZVP+Zy+H0GFt4oOWsiaYpDtx8OwFv19MKXUh13oCqpAp0FWfKLix4Sz5xkwDb
	 FBUR1dQWn4baotyXb/rIF8BUPW4psNXN9xLT585YWqfweqXIDZyH055aKsiqDlxK4t
	 bnMQyNDpVFPKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99812C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172451315360.3563.10128099884621344061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 096b643ce0ac78c3913f012867eb0f55b707a128108245bdc546ede3fb152691
Date: Sat, 24 Aug 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724513153
