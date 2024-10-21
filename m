Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4BB1EABA9
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729520754; cv=none; b=R4BatEfO5HKry2ysZrcZeQALMZaQKxNYXbjYMWL6DRX4y8xVKXAEIqXbpt2KYMS7k4ci+P+IjdexEgqvnlSRg3zG7XE1ACmGyPH7sPtDBTkNC0sCvRKFdbouDVXbsYkqGilkbrxv5ShJADvMtBdtEOmJNPBFI1oDH09O8Sl0BFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729520754; c=relaxed/simple;
	bh=rjaYqkiYrQbh4UAxKu+7oAAmg4LKAabB5hRsquObOy0=;
	h=To:Subject:From:Message-Id:Date; b=LmtEBXXtoSM9LKsIflsyd+XgtrKOQMajwmogSIRG82+xcG/ma1GqsXMFo/8BnwxI6nenzUyRYJyOPZRrJ4jh3W4ZLa1M36cN46o5YyKKVEUNcYfrJqGnkZqArOZfEzWh3H7BRnK8M71o+URDBiXANMncC8wm9shdwmS6Mc0FOeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtJXVm2b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtJXVm2b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33CDC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729520753;
	bh=rjaYqkiYrQbh4UAxKu+7oAAmg4LKAabB5hRsquObOy0=;
	h=To:Subject:From:Date:From;
	b=LtJXVm2blBncdYp1btXliYrJ+i0dNKBGcyuSuu2LZegjoxRUxSCgAI4rhQ401Ujt+
	 OY+SdAAZYk+Cc3y4AcjV+YD8zs0Nn3R0XMpC1XRtFe/Yn7na1qX/gaDaenmJrz9Vzd
	 WT7a7Y9Uwk/kcNBtIwsvUd9t0LJUaMdOnjY9Cut9/f6fBQ/0eq8ukFUfzG+e968TrU
	 Tin41ykJJJrHc67RjBS+UnX30wyGTfqwYe4HbptXo3GZGPLI3U6Z0GW4C5gTInKMzu
	 SALo9c/XannD6Fq/gpvfkEsifMxJDAVPWJueuvcpOfl2ONzcuDMI6v9kBoG7wuYyFV
	 DN8ZvgVjW8E1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D37D15D98
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172952075361.22618.10907547110545124261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7171c41a2c4e58412c2bb58e75d8e243289cb1615d4c28000cd61a3679b87228
Date: Mon, 21 Oct 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729520753
