Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C393AFB1C
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785523834; cv=none; b=UJ4wi0gWNdZlEz0goJGH0XjpT4mNZqjq/5mz4et6YSossNuWbbcLMZYawuQBnAURP+VwUdGTWjtqB5kMUj/Bf0GyFH3nbZhgAhgZwlxsecdSyu4oyL8AqanOS6SAUbw6BtsVqU8EeLtAmtqCdGqKqBtH8/LDGhu3Ur099ORlDbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785523834; c=relaxed/simple;
	bh=055fsO/UMqGv7vzHill+EA1Ll5T5ohQnI/gz7SvO/64=;
	h=To:Subject:From:Message-Id:Date; b=idcTigP3FTBbJNp1BMv2N+/DCek+ga0H8GHpzc+0NlwU2267Bw83A7hCdCAyQDimpnL0X7aWAfowHjE7b8Z9Yvew/d9llcoUGdPB5s1x2h9SeJrC1OkTGCgO57Z1fZVXKyzTuUIj+VPXmbdEgGIpL59toI07JmErZutpF6wvGJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2Ycw46s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2Ycw46s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDFFC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785523833;
	bh=055fsO/UMqGv7vzHill+EA1Ll5T5ohQnI/gz7SvO/64=;
	h=To:Subject:From:Date:From;
	b=C2Ycw46sWqKRZVtA+VAghiqCh99go21f21G0rek6kYjdZ4ubH4K/gnNnKtqnG9dqC
	 aUHHaYPJCh3koxMfJpilwDprZU0YgeSJ87MqQsT+VsTELCPH9Eq3qPEF6a7nq/Jkmj
	 M5GXcx33DiWALdeREYhuFU1bADv7euhDBpjGM2Bcvp1NGwF4g92/cgGZ7XhToReyJT
	 G0VFogAx4fhXYe5v09ab5pAApIwQ9j3A0VmTD1jE8ljO7P1rvHk9sPlEWJG+QscFYp
	 Vi9nF6ZphDGgJ27/eCMiZbfl4oVYit2DuXPiE+ziDskEtdIqSUVtlQgvT/0NqJF1Hc
	 VXdbDTrfeG6vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8312C55173
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178552383368.16429.1337805842019276118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d88bc510f3593778ff1c5616cb3a526e74da1e9ce5246076d3de7cfa83e148
Date: Fri, 31 Jul 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785523833
