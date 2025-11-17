Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF1E748F
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 02:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763344914; cv=none; b=gjcaPasyszzDR13MDAlu/7nCDzJiOtu+uFko7OULHg93OzzCMViQt0OqIoyDeJ4c9nnNQ5mRisGV9XkFQymkK8LdbAvsLnm8QU0RdlN7H1+rlQkKFglk+/Jvez7NRXtGc2HvQ6UO+neil4bZNxU+ayDctraMF+ZDCZTwdiMWto4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763344914; c=relaxed/simple;
	bh=/Jmkhqbp1rfK2020GztGYT3UhDV1bW1+if6Vi5byLDY=;
	h=To:Subject:From:Message-Id:Date; b=Gt6wXQ/e9oGfOY0NtzOpoBdm53D01ZGuUcGTmHLEhL85Ns4gi4zJCs6bhhhd7wMn6CGHUW7WFlGj3TyVYIObWBAjBo/TR1QEykqOElQBXt2QkmQigFYTeqhEEZ4NB3vR1EoEP4syux5iPwherzTIpLi3yyqFQDxROCVBpmmZN7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8xBMcjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8xBMcjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B067AC116D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 02:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763344913;
	bh=/Jmkhqbp1rfK2020GztGYT3UhDV1bW1+if6Vi5byLDY=;
	h=To:Subject:From:Date:From;
	b=k8xBMcjwt7xOz6pqHG50Akp54Sqm5p9Txs2c0ao4ZoQCjGg7HCO/GsrLP+wNBp+qq
	 EI1sR66wZcLYso2wfB9kqwjTAATGg8SiTX6prF4wwQDUCAhI+SydfwZmBd7Pcg6PNY
	 EvIH0k9KxLWelpLWK34VRd2g+Bo/d/YVD4k3Bqkq3QyOO/o6cZr11O5FvYLZiSmQvv
	 SbDkpYtMq1EAg9StBCRWWo8bIem/t0icAEj6O9yMBiEsQ1DU0QNLE3TCYZeVoA11K5
	 7QRK/HI234P9QcnaynaajJnfwNDJEH54/S1HK4dlGbgM8Gt6c4qi4xu3zGPDNyaJ/k
	 kFlwxOG3m5E8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A51CD4F3E
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 02:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176334491358.22422.15342625976555941941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d24f4eaaf3ab4649f0c5edb11e614630ded8cd2003d0326f3244f655296ba7
Date: Mon, 17 Nov 2025 02:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763344913
