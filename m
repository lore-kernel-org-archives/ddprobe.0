Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C543A759C
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 18:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780596874; cv=none; b=dU9HU94krUMZxOoVx0BTBIk92F3lNaFMWsRMmfWlBSBcM28l5zUmyoLwWqcNdIi0mWxyVSP6CQIeMDk7b4AuQwRfPOAZOlsxHWUf14Lm1o72IzT09Ih81wBIjS8ZlcOGGsW2Y9gc4uEVakNntQsXf0twmE1ijrBAcsuTw7OT7Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780596874; c=relaxed/simple;
	bh=EObs6B/VaxolrdyDi5Uwk4EUobSBLCOMqyAJZdnBfGg=;
	h=To:Subject:From:Message-Id:Date; b=F+kppQ/YUKhEVQwgQdfvbvEnVYv6ptE4kPSnvBvB37gngP/vJwIEkyk7ebskmJ4KTzAtsHI87EQ9zxZZUhmytDvgu6iZJB3cpgWOR8vOrTykBaDtqBuKTWD/YdBsCO68p2sXRexv7VhKHRvFOhYRcPIQ/W3whfdAZcpkeq7dtdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmL4Hdno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmL4Hdno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DDBC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 18:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780596873;
	bh=EObs6B/VaxolrdyDi5Uwk4EUobSBLCOMqyAJZdnBfGg=;
	h=To:Subject:From:Date:From;
	b=DmL4Hdno14rs3mkuK0Sc+JoNJZiNc4CotUScMbI0U8Xo2ElmzXCoRIWhi+YtD1EJd
	 Uje/IDiKPbnf3+ALVyoVsx441EzNQA/r4Uq2KkjRNY8+//qrh3YAPi/W37rP9vUBxN
	 JHfHqnGeqPm9og1VKZkOeH0QKxsgnL6OnGhldFJCHZacrhztoxrdpPFMq4wJ3FmStk
	 JYlwph3zoMtQorTPS1sMUCfxg2HzlujejKn+myqIdHg7yf1Synoi6brTS7SHorNwwa
	 w6a8FS3X6PGSZ8DaShIpJkt5RMPc2Dbc7pTWd9arWcIQsxfIDE+vPx2Mbi3LNofGut
	 FDdQa8w1hCnmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5097CD6E77
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 18:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178059687373.7984.6849264818302370195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeda72a139f6f9bdc68a3e956c72b5427b17459ef3dd9c7ea5e298e69950ffb7
Date: Thu, 04 Jun 2026 18:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780596873
