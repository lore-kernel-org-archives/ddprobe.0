Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5632E4C6D
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784506114; cv=none; b=WJTFR2ath8ljt4MYDFvbxzu6vsVJAB/tZWR+L61Q7nAJP2qu7sJovKMrr73CfbCAUPvPiIphgcKqX1IVowaGRTLqtDYvrHeNFV7zhowiTk/gvy7EMYSUrr0vkflhwVmFQPBtae+4g3RQ2ltSQzEiYpd/ZtmBi0/EucgpatQz2Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784506114; c=relaxed/simple;
	bh=L0vQg9XDKxlrLbkUttZDVIukpZjeULVmbjWh3MaVMY4=;
	h=To:Subject:From:Message-Id:Date; b=hySEQvQ8NVI7VnUDiB2Y8zpTZ0dCu7jFhdN5JXRkY6DoZfnLzoSYX6atiagVONLzsscjE4CM+WPgGlhnQ9OWLQV6b4fbHx1PoQf5V4wnGrtq3zarQXDPSyC0HvaSF+kzvq3+Imtm2XJVuuxMlRcXpRO7dMXh4pNGPDAqNJLo8Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXcVubkC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXcVubkC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51F1C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784506113;
	bh=L0vQg9XDKxlrLbkUttZDVIukpZjeULVmbjWh3MaVMY4=;
	h=To:Subject:From:Date:From;
	b=CXcVubkCQ+eUrDDDDcv18NyMYyKdUXrp0Rpa4VVrYdPZltpjZclcmP0bnJHm+3PKo
	 nmCnZjkxDa3OsllW1KPvMGyVYC9b7jYbZEOS+63EwoNblGgCMOVJLPTOOnTpzjYzjR
	 dmyAvVz0kb37UXhJDk6UVMc5fdCJGyAzK86aCiFm6tOPvATac0UINgSxyYmxTqZ6td
	 WhdRUhKzqL9GrNgTNU/nmpBsFM32+lEY7Hf3w0QTxx7X6CBdaF54yG8Yg44KmOH2py
	 tVlTl7ONhRNPBZ4t1RviLW00NrGzICw+1K2/k1fbbztxSC+Vlt7nByFViO0vmgq5qR
	 RLyWLR9dazT0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAC9C44512
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178450611368.17076.6354324146589157818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a756dc704925bb0ecf4ccb65bfa5e7d1511169eed255541a6eddd3c85a4a777a
Date: Mon, 20 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784506113
