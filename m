Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F1620E6E2
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757231993; cv=none; b=VHKwLlQO2fXyayotXFFqNXkTg+TQrUsgisHn0ZAIvXdjQ8rHBxBDCFMnENK2MyTWd8eYD3AegbaTs0jGOOlIOyykG8p0/+w7tmtL9ZiX2hfc8oXMbroarBhGHmEIrr7cFh3/huFQqxJV0J8Slb/zSrq893WY/AYZlmL6h7GcUXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757231993; c=relaxed/simple;
	bh=UlJ0NViC3YyfoS8rIo/pQlc0/E7LwCFs5F5lq08maJ0=;
	h=To:Subject:From:Message-Id:Date; b=lvDgMufsAuc5Ch3H47u2dt6t8RwKaURlw3TYel+onZ04h7Hdyj/LaQVrKTh8HVHpBcFoeOWEmDMgMR/aKQaIzpcPCeSSB9Vg3as60KD71dscMWfmMzK3HYaxCMAY6tIhcYqm+i6t1Zc1AdxjkHkaxCINJFNAZzoFkJSzqW9ydHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXzYbnMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXzYbnMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6D3C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757231993;
	bh=UlJ0NViC3YyfoS8rIo/pQlc0/E7LwCFs5F5lq08maJ0=;
	h=To:Subject:From:Date:From;
	b=ZXzYbnMPMoG4VDUi5tL3wukGnmzr6bBmtE6PwwB+RoYqFDPz5PJUBpm00CJpv9SRW
	 Xf4X2E81Eovzp0dBRp2FKpcGYp97hKlAF9yfpN648sVJMoqfR6BXw1OaBCDu22YDlp
	 gA/9Sf98WZQumIB90x76wX6S+Xud3yKR9IDOwDxraxgnRdzkH0XGmMku9eMl3PR8TE
	 i1X7dqqsgon1V0oqP2z5e3ZL24W0etU+ZlafDIESJ3QhnKOnJahpEdlPGqo8VyE1rd
	 Mj7zO4Xtc+krQifLK9KLUDtE9qvhUFU8wFO5VNLuaRePLdQ0m1zK4vhv0r3RrisCu/
	 c5KYWLLxAmhug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F000CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175723199357.6901.2267538917236218039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96cfbfa3adbd69c8f2449d234834eaa7f4c962ee1d341282ded69d9de3b3cba8
Date: Sun, 07 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757231993
