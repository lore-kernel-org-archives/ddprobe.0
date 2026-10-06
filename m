Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3259A2F616A
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791316234; cv=none; b=O+FeV2bBJNlrKJiuhdNUAS92OuOqlt3UWEJ5qRkG+o0VUt2Ccc6DFOUdXVFf8k+6ZwenG7ZnibI9zxDUlj7wOp7SfJJt51qpm4fBBH+JFqr9USHD0/NzXRF7fjavTQXGafejm4KD0uW+XpjSEodXrrsa4tlssyCq/H6u4z8GMJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791316234; c=relaxed/simple;
	bh=dC2L4CjYFQvJOTOhzN5gN4a0KOOQ+ca4myGA4mRvm0A=;
	h=To:Subject:From:Message-Id:Date; b=XySCSY5H8/lCiiCd7V+8fTKi4plk+kS+tgQzIY6B8HafAIwbDzYyFRmzFs+KPaZlaZWznONWo8Iew/qmTQ3hZzIlzUf4nBFpPg34ENyHBhCUxeGVgKPkuntAwh/IAlg2VUduRdwsPeQ0KYOOOMQUmPjIfWaF6BbbKW2HjqhglTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UplZXfey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UplZXfey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38B4C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791316233;
	bh=dC2L4CjYFQvJOTOhzN5gN4a0KOOQ+ca4myGA4mRvm0A=;
	h=To:Subject:From:Date:From;
	b=UplZXfeymW+VVBfWMWAyE+tdBLwDiUpZx9LEwKuNlxZHnLjqgr6J/J78VJS3DVM63
	 wXDAHm2/e9eGyhI3UUaj5jOLvjonWjk10qzr1HlYfIf3P1WzJycg7vjeSrehg9RTo7
	 M/ds9TtDB0CdH5P14Y+GaKWKb7k49AUdXRWY6K5JLaSwMiBjkQxHmQgEeVTSvHR+cx
	 nGCt6rGIFNlwRuQs+fZwVMBGaoyBvuLtN9pTJkk33OeKQEOzSN8LIMXLk2l+cJDqqe
	 pYIOCS45+f49pz8VW/pFm+gs8lqmEOau2e9jlYZvZ471zGEYlX3sacdvnbTuzDN1DZ
	 Vo6ZN4dzEpYaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE86BCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179131623370.4451.6979338480014648046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51de0c098af96defae2f29b11761552eb67c1b20833d01fd1a2d0ad0a8855f06
Date: Tue, 06 Oct 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791316233
