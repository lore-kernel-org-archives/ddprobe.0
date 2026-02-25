Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C072D0620
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772007894; cv=none; b=ZvWznsJ8MCSG4nSvDTCnb3IjhNs7lMi63TDe1+NCYMBrw0qtDf6JYJH1uzgSE3On+HthfRYdIM9rehZiDFHsHUhz1iduSbQesDqNl///URnxIXhcj8wpyNETdDd7q64jyoVvgPNeCHKjaim6mk0CmP2vkS6sYoxruMOD+Ue0WSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772007894; c=relaxed/simple;
	bh=/ebtZ2vli89tUIObSrNh6/0T6M6gcxhUNYHVkSgUcmU=;
	h=To:Subject:From:Message-Id:Date; b=e8a5qOp2+qkaJtQrr5OnguRBXp+Upy115uBU/z5H3i9upxhcoQJHyel47ObZE9Wc77KEtpEpY1otxpktzfmSYlp3FEYAYosyyB8iY9ilTLYdWIEmMD/bbfUnqOC5WqVjjgXtti2RaCQwSj9yDZXfO5B6kaO9sd7e1zeySXiSyPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESiFj4YI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESiFj4YI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07F5C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772007893;
	bh=/ebtZ2vli89tUIObSrNh6/0T6M6gcxhUNYHVkSgUcmU=;
	h=To:Subject:From:Date:From;
	b=ESiFj4YIjb7WXuV0xQ16HI4FEDO/YyIgOPEEgVIEV9xWVSBdcgE8cskeHqdeJczmE
	 SJkD+g/X5WEAtddR4fSYIP8otHv+73JPBpAyUHyUjMNjZp9i/SuPGPZ14e+H7DnZod
	 LogZbt/KQm4T8tElX2tNCnj+ZH7T05zYRwYLSfVHgzDSzMVhQQaxeFYaDGvQTQeX/H
	 y3oGwD0W1YKx7g/sMznRi8McJaAhhmAttUTimsvlWYkPJb12ZY/6pGZPD/NLyIWkaw
	 3pml6ervA8Q5b3kQA8xvYiG4uh6vkY0rdEyDs8dn9Xym0yLoXVIBPFGh75RFLUZqc7
	 HQwHlNjfHlNqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90827EFD209
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177200789358.9912.4144552412294571127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c088abd3cb4bb6c817daf1911a5d36e56fca700f55cbbfb325ec4e87cefce9
Date: Wed, 25 Feb 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772007893
