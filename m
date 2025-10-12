Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9202C187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760289594; cv=none; b=r7pP7Qoa6dVyuoFwvAG0trdhFkTngIqWpY/7mSNP45rLwC75RQWttmXzcJavvXnwlEwhwwIpdeYUUMrl5iABojwHlufmi3ai7JXwmPyRtQI7Kr1EI0mw3WdXc3LNNuAOAFgcM4NTKtSulpA5XT3hrmQA9D3n1z7SXnUbljkqV1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760289594; c=relaxed/simple;
	bh=Nvesk2FcAL4n4jW/biNCI4v6juP9orvReiSlR9s1vHE=;
	h=To:Subject:From:Message-Id:Date; b=ow2N4IGBlKkJI3hsnkBnbHwu00ZPPxgOrwmtgqoijf7a5CZDnQAGG4umheHuW8TZjqiaUS+jrmF01W7aRchBZy/eYZPtkjCadeL5QJuAnP7UEc/fqnVsbNwf8Cq2yNhTO/Gj4UzdxD3etuaRJJfw//GokWCaJHlyLD+2CtLquFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjaMxYF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjaMxYF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E67C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760289593;
	bh=Nvesk2FcAL4n4jW/biNCI4v6juP9orvReiSlR9s1vHE=;
	h=To:Subject:From:Date:From;
	b=RjaMxYF4t/y+54/ehqwupsKomwawPRfMXDP1OH5C231tUeJWfNVInKT7YwB1BO3eE
	 QZXfkCaAgwH5IFQ6zgGCUrEw6kAOBdIiImTACzYgV2p1+F7ZjrnE80kA+a1KBq7x3d
	 qpzEk/tBRK3b9N6NVfZHMkuekbwNTL0yjSR8xNY4koBbp7sBTEXC54RZSp/euJyY+E
	 Ts/N0GYrPjfAJC2W9KPiMtoZ6bvaQPMsiqGJB2ac4eIZtJNpuoIg7hgpmy3A72/ca3
	 q7FmoWWZMcyEcXHBtlXgUiavwsUzW1sdTwqviuUx3e0rtvphOj9ILdb0BWUe5Z9+ZG
	 ASrotcM2E6AZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94410CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176028959357.32743.7527499916489867788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5cec4d2700e6d74a28f2c18e53aef3bf4540155784b4e16a84574d19915f7c5
Date: Sun, 12 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760289593
