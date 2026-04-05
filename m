Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6981EEA3C
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 10:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775385334; cv=none; b=Jtj/rJUKQFkwzN+PMZa7EFHTiEM40DtMKS1aqrjJLNoJ/6fdFyXG4nxdLX9kymvy89yI/VLjMzApEy00Y9WLT7AYyaV+VBv7pBZ+2dviCNvXB2+E27u82P8RT0tgv8gohR2ofOXde8p+SVhfKGR1plXoaOntKU5KroGdPl01/yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775385334; c=relaxed/simple;
	bh=lxAKLyN5/YY/KPdPMEPTeiNXk58qla7+VxJ9T0b407o=;
	h=To:Subject:From:Message-Id:Date; b=oyDVoNxrFKyXSnNGratCWNbE0p2Dld2n4lVtlVo0zY0+kUM8RR8sK02NqWTemfkBQ311oTBTRmCGk22vNqJCFUz1QmlKs5nRmsuEcX+IxK5WK0+e1kDeNXqEjr+MUYTEXMxnbsWrALnaKkoW2T6LbPFwalwUYvyK/J4OluXD5jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EU77mjhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EU77mjhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9746C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 10:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775385333;
	bh=lxAKLyN5/YY/KPdPMEPTeiNXk58qla7+VxJ9T0b407o=;
	h=To:Subject:From:Date:From;
	b=EU77mjhQOMIyoI1e5aI2WkkM0oum40lrDnr3eBcC5DRiYXQNcpj+N/BTHA887VKpY
	 OXTO851Fwt3o+3ZdPPfFeYVNb4IMquphmugoi+RaU2O8l/B0tWSc/I/mFmYo4UcpZO
	 sKDyQLA3uJyHOZEi+vCaYckwgUjMkg4Ya+ZMVfhqmBTdBTE5TKgLYMuJfJpT3kMHnI
	 3U+O5eq3EonY+9rkcAMW7NCACehQRQ1O5hQCYiOzBvdukMGyiE5EmoimyIR77hIk/i
	 1Fz6oDePDy+XawC6mb9CEwyeC24IOul783cdatkv27f0XkiPDZSOypLkko5DZrreS+
	 3iOc0kKdTsrfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD24E64018
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 10:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177538533368.28725.713508299259455231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfdb3a76342b519d8276b345bb33b8360f65b1d0e1afe79b51babfa942a21e47
Date: Sun, 05 Apr 2026 10:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775385333
