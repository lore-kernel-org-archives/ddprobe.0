Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF25384CD4
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787499034; cv=none; b=uykTNLINccGo8pbrKwJGfPI4N74ph1eh2yJSyiTWb3x4maBBCsZLBJXwlpC1vnzZlQeaBxs8rVZtA9bMqEce6Hxfd+wx1baaCBU8HvZEWVZjqrXzQuUZgUstzQ82Kuja2o+MzQkQjS4c2Nc2KiZxe9p9FVmEWOR89ww0/LH4pe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787499034; c=relaxed/simple;
	bh=9gzmrD5ndsDoMxxVPfPLezbyQSEgbhmoOU13ntomrO8=;
	h=To:Subject:From:Message-Id:Date; b=R0CTiyJseCPUGirKI4bb1tFemqXuPEyTku0z4sOKunZadoIsY4hksefU9gZcLRpukkPaLJ0g1vLhatEEvZmx1Ztsgx59G9/Fnj4z1E/QX9Fi3clt1uidvbzORYBq+Rg4eO92sZHYwqohLFNd5CKI9DfdU3/kQAu6k5MaxuuSUNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCkqt0IM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCkqt0IM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D240FC2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787499033;
	bh=9gzmrD5ndsDoMxxVPfPLezbyQSEgbhmoOU13ntomrO8=;
	h=To:Subject:From:Date:From;
	b=uCkqt0IMsQYZs591K/jpqKT5BEmPFGd0XKoZocrR497SCz4xbNCmOzlXCRX9k/E/0
	 jc92i7AEkVvhPi2apr0LvSRNHR82zbQhPMpX/L3xWVI3cnMJIvkmDa+Hw3LL3WfLkd
	 hHQlsFkZZ/lLMTX8paTq7Lk3E9lAnIiQ4eflNyTYpVz7kQnG1il8JvfiZaYQDPQlzx
	 k58ALsJfBzb1oAhnsKoODB7s0Gfe3xiAuzg5zoQFKa79gygJM10ucpSTdEgjLGnqAu
	 GV6OUMy1ETWl0eplOvtIqxcdr4XDY7i7Ytl8xYs8EbXBPA8X9z5uQMfahZVsXV0OAJ
	 Y5vPJNUCptvBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D9AC5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178749903368.29495.6612660456535841690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4730c6e53a171c8115288a7f3d4d702b9984662e736948075c2f78534faf36a
Date: Sun, 23 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787499033
