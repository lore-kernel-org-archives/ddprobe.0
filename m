Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369E42FB6
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727542554; cv=none; b=fzojaIm6pCx8c1lC4lHqbb3efrun2lILinZ8ZY/Q47Ttrwi+3HwisseRTe9yCpJQBxwSp3TSeymc2hPJ6duQryIb12jHjf/xOw4AzxcTDM5UQbZPlmqajo1JwCJZQWS60quRFeU54B7hEHU7TPbFKsf1xrxMj04wVxo2B9/ZLlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727542554; c=relaxed/simple;
	bh=fo4nxRQ8OgN1zQiTzyLXn2gf40sUnLV28JF3vqTTCHE=;
	h=To:Subject:From:Message-Id:Date; b=TJd98Cy7JDklqz8Qz2okkPUnLvgoI69vT/nBqD+8TetqztR71wQ8gLKtLwNVKXRnjRihrTWrFr/3dayl5VVaMtIHpePEIMggGcBB+W/6ApsJSe+AsdS1TEacKWV4yMkYcaRdx8Aphn8p4UBYJAWWvmrTJQ6E2oYM7HzSYGott4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjES5Po+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjES5Po+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA711C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727542553;
	bh=fo4nxRQ8OgN1zQiTzyLXn2gf40sUnLV28JF3vqTTCHE=;
	h=To:Subject:From:Date:From;
	b=CjES5Po+gb01nYfsC61uUoC5aehRhpTiV4JjBAwtOBKrvGiaQidfZgigqQdaoQQHN
	 5f/1huXuN9eY0GwP1eZ3woOlBRJisYpfLbUkhMZo4iTwxUOcBQ4/4f2GENfSGpVcO1
	 T/kTwgX6/3SUYB5xZqZgK/oJ9iIaQl8aR/MMldp4nUuNe/ZSQU7vlR9VlgT81fp47c
	 0LumgDUijb2xa1q1vbNlfDhCyq5PC0SEm728vKsAWWs729mMyMl1Ct9lX+AczFla0o
	 Tab3ke9tCKCabJEWijQox5h+H2eus8S+xjlt0jNdVmXpbcXu7H15XC063j+UXOTk9Q
	 Pk4U1LT2Gb/SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3AF7CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172754255362.14597.17238071366675273191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfc5a7a153276bd7e9ea4b6e98d92220faf36c3da1aa4ac30cc241c68222222f
Date: Sat, 28 Sep 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727542553
