Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DEB3385D6A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 01:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782179794; cv=none; b=Jby3/UK6ZsIIG/erJmedTo84FaAiUCNwj3JBRJ19JVqQurMC3U0+AFL3/PpjHoe5Mnd3qxgdVk8MP9hcuOqhIvJn1F53mNqnQ4xzmBb+Cpj2M+Iwot3KSctToLx8QLPewtFfx5Royu21LG/zeyGEQovPtYsX4NXO+u3BLsvAa6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782179794; c=relaxed/simple;
	bh=X8RHFUwnY0P90qQz2BZuvGe+KRK+B9+/3AbwUgSTdUA=;
	h=To:Subject:From:Message-Id:Date; b=IefTgNkjJluKBOHKwPNEORC8VOdIMsY6yuJhwxeUsQojDizL6PNmER85eZxrfPibxewV8hP6BXTaQyhF3hsI5O4JbmJy6vuhaBOkFYY+l1G2sM2al3T1EjRdfZJXR3fOemcku1xQOZS1K3vwy7n6IpOuTuYDfQELQtlp3+Mtpu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBPkedRK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBPkedRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B72C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 01:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782179793;
	bh=X8RHFUwnY0P90qQz2BZuvGe+KRK+B9+/3AbwUgSTdUA=;
	h=To:Subject:From:Date:From;
	b=tBPkedRKz7JOflt/+RoENrePLzUpYpBymfNsQ3x6WPQzeO/RBd5udA38vGhMgGnJU
	 CmdrPIr+wbuDK/IWu4rb+A1Nd7JH2uE2Xt+f3oQvga089meWtMSxhDiyP5ubSRk91k
	 gOeM6BpGuDN/6IBUkQyJjlL1MBz4Cuzz7WDIqcz/rsmhFRZnGZXEXSnRFpTyuoCmdU
	 4Y/Jg7eYt9NxCCMe8lzMoh606cJ+3Al+nDaibYZZU+eM4Jltixa2v68WelaOwUcRfw
	 4ArTMZZGSqd3MvuVdTae60IgpHyS04cjVcdRbhe3L9Ekv4Z/Ma4rQvThMJ9WHuEMxO
	 G9x8RU0mXzuww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA70FCDB466
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 01:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178217979368.30968.10744626985631763751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5d6c422c1e520e00af3a13d14d610bc2f14e498a419980c02bca88322cdc74b
Date: Tue, 23 Jun 2026 01:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782179793
