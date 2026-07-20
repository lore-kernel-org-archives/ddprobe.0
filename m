Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27243416D06
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784550514; cv=none; b=icjW8YDouGSPmag8zQP5L7nr2+uqSS2BLVM65k6wk7X/hloDeXYhse7dzfWc+qPR17NI38O9QQtSAD3yOedJcuLuW5DPmAb4wO1YvPzOnI2s/AWr/6Bt8jlXD6ruWQGwuYo9l2p/890cHPb6cXDCQAMZHfTzXxcYeboDb8c36eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784550514; c=relaxed/simple;
	bh=G8u2/8nfKn2vtB7qVQnTQUXlc2CtKo6pq0QdQHCkkFs=;
	h=To:Subject:From:Message-Id:Date; b=FqMldUwpamqyN05xU3kNCIKc5SbSeCYnfLf0d7M/uFXk+KpvXoXtew2oZVhE+xAk3/XkGXSqJkA8utCStgqiHF6z74iCtxlRmw4OQAyMMavXAfB12EhbjlrOZFZ7ZKI3s8Dqb93s72Q3/lc1f2OK4dWicM2tD1ndaiKhF9lTi0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/el/ClP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/el/ClP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1126C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784550513;
	bh=G8u2/8nfKn2vtB7qVQnTQUXlc2CtKo6pq0QdQHCkkFs=;
	h=To:Subject:From:Date:From;
	b=h/el/ClPGTilkdKFnfG61r0wA7UevhrKoOUlDtjzgxX59WTm4wMabOx3fXyeFsecw
	 Y8A1zx/PwFUOeavatSC5k8KZtU6EMFGgm1bWwInHQz68jaFf5UzJ8Yw1NzJ/gbMwfy
	 boVwRz7DJBQWZZWPySz6Vic4PZh5bXtw4vRv8TalhcPXX40PUra2nQQTvs3f+Ngl5y
	 XZYrZWcE2in5gFNn8k/WKG180iPk3ZnvCaL4lm1qM1lTc3LzLCrAUYGvfES8uGy9vI
	 bHWSdIgl3kydD2aaC8jsp8pRzFFd8NALac675eUeFAm1PpP/m5QnReC7Ed8eSPzGMf
	 nA7MMKTJ4uyhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC32C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178455051370.8947.17743125633013869288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc9f786cb835ab453ca59ee113a8cffee79ce60a40ce052a6cce1b3914b2f4a
Date: Mon, 20 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784550513
