Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28109AD24
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769357034; cv=none; b=ndOd2P875k5Pc/JDYMslvD+sPQyOs5kIx/U3pDNtGXbZP7pohdeX52y9StNk2E+hYOe97cz6bbCXq1AiEffzkvb3nYsI32oxTJoH3lDBeSuQhqxGMzaz5m6emM2FXdC4n+xQ9aJlTclGFj0ymP6auG4X26aK8oe2VbV8uWl9YTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769357034; c=relaxed/simple;
	bh=nv3udB7lfi3SYHIGHurWMa+61CCtjvUE8imHMeXYBW0=;
	h=To:Subject:From:Message-Id:Date; b=VDOCTiBbIikgM+qBdnb1ioBAw/d7CKZbNxWhTgfLLzpketCr7uvLEHKTDvk6CjXdWiRX1KAkwK1nqB8RnoyqUha3Bw+t1fwr/cluTGBjOaizwqrhrJz6ClRxoZJp5EtTIqPiYoOEu9ir2hvpW38b8s02pmcu/r0GdL3is/fj5L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TL0W+Z38; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TL0W+Z38"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A38C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769357033;
	bh=nv3udB7lfi3SYHIGHurWMa+61CCtjvUE8imHMeXYBW0=;
	h=To:Subject:From:Date:From;
	b=TL0W+Z38+sAJxTyIJ52PctnSFYlIzRs/LdC4hSIipiUHSmmEPVWxZepC6KuRzihuI
	 VYkUuFKirqhMb9JLoCrWzz0w0LCgaiuMz9bb/e8PYxkIZGI4dpz9CdUAeU75PiMZcI
	 TYwvhM8ETUDXcyrgfzRclHli9cdcrnpq94yghus0rPuhLwtd4a0QJlvjXP9uu/qsBy
	 getuFZUgcbrWdeVIxAhGs60tGdBLZerLoW2RxNbUi4A191hYAuyWsYwEx6Zo4u7Sf9
	 uzVLbKV6gXSp1FPkrWq1GYnmBKe0TWO+tuywwcUVzaFGelruQCRRK4KiKcmcXRjoX+
	 23scJxWzTf9Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9176BE63C8E
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176935703357.27025.2402368282079287779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 983203e07287b5bcaadae5bdde2e38fa9112f672dd483f5660fb188cd00c928a
Date: Sun, 25 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769357033
