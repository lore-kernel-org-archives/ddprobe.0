Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174A2286425
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757153995; cv=none; b=cmEghTDCwiMYSAxAxskKQ0PuBx9nnmEfwHs5solrtMQYNJn+qzZLlulrbwvmQEkjZlrvIAuM9JWbirQl5V4J/KNHy92Yzxu+KFQA3yQ/QLfe+d6WEZJSE+BYAK4FTsAzRCuGbBq65sKqdqi+P2sZar8AHEAcOGr/k1e48wP9PfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757153995; c=relaxed/simple;
	bh=dZ/bE0Tc5p+28JSYJTQRCCmi38MGowzNc0H1vmNi5nY=;
	h=To:Subject:From:Message-Id:Date; b=ID+sj2E+E9G4ZbtHj/96y2ZifYgDeVorYkOKVYW5ejP3wVbU/Am9hItyScQ/uL9raCvocRQR0NWXHgMK2+fH77y3ib5Li0X6oTbkgahEZ/sZghhLhD2DYI1h5QBWU3drjMBnonRBc713WTp2TCyuI0KnqpuP6smlTIz5tfIKfF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zq905Dfq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zq905Dfq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40CBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757153993;
	bh=dZ/bE0Tc5p+28JSYJTQRCCmi38MGowzNc0H1vmNi5nY=;
	h=To:Subject:From:Date:From;
	b=Zq905DfqWXUvkRejx88cgec6xjKOQKbxQny/bXltL+RrwESLJpj8ubEqw1ArhvrBP
	 F1naL63A7z88nCoWS3GUFhly7C1G2TVCYpwgVsriqt98lkM4UF8nTwBHPaZau7Qe0o
	 eQkcSp7Nr37woPwAfH5vOc1wu1o5mVv3+xjWP7I08XUk7faEBMnKx4vAfVvCx2RAIA
	 nJbi8+rJ8Swh4VfS1pzasntoQfMU085ty6tK2l+Y3Rn2FX9NE0ZT7wwyebWj0UhMFh
	 MefkZDA/kh5hYKLLnVIfRLNQwxyra1kVrdmLNfHU6ify+PqDQkaImuGzr1yMkoFO+h
	 N2z0LUr6rs3IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925ABCA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175715399357.16132.13376728080010935810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 820ca244363fbca454b15955efb886e168aef513a2581d98ebc5207d72396159
Date: Sat, 06 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757153993
