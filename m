Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D78F36195A
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788732034; cv=none; b=chKj7CLQpAb+v7QinhAxpxTisNF+bxhhX2h0Zm9KFmgvqleiICNob/rAZRVCNEW5ZL24d1rc+WSmODwOixL/dKyN7mQ2KUSCeEZPeUUi4tkhbYnN1kZU90v2Kd7nGE5f98PRA7UdXdlGm702jwvx4QUCBAlATR4Xi4QBrjuDedI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788732034; c=relaxed/simple;
	bh=MyT7/OCVdRGiIZoPDidQK1GhPcqNcpPJDcNUiv5bxa8=;
	h=To:Subject:From:Message-Id:Date; b=ZXz3wSLRsW3OBOki5twVscijxBK5JrEKlTyA44ug7a+CMhe7RnXznvoiKpMAETnVkDzQYlqWXWtr619hd4yWFWXeIR+UY5YZ0LyshtMjRX2Np23t1ssb97QNIYemfYaH2zYRCsEuNYAy1Djpvinlo2pGLJ6qTls+LG6bLZSuYlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pg/Br8QK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pg/Br8QK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4156C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788732033;
	bh=MyT7/OCVdRGiIZoPDidQK1GhPcqNcpPJDcNUiv5bxa8=;
	h=To:Subject:From:Date:From;
	b=Pg/Br8QKmGv4QW7ojLyWec7KjvCYz9TA6eAd7qakdCqvvRTrjuwQuH4fJ0K42tE5o
	 UTKrVW+Gz4bZ83DqNgeqEOscEQQp+3ESAc2oDAfQKqJO8Tm9jcqTK2pui+Oo4BdCEQ
	 b8drY9oA0L/7Qe3Y1a62YolehlR2ljhYfTuwV2tUyBeZU0abcyrXwg3OMnIKy6ZgY2
	 KGXtAnwoJhn0ncp7MUfPTZcHMYHxkn5e2YNPonPUEJvThRsfZezF4a07YEDkOuSpG9
	 3Zub6tinrjAPgu9ut6bNQ6lJkzHHoHazsoSKCIgpu+eaL3uLl2pg7CK3oA6fTiNXyR
	 86ayNCLIQ09mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE26AC79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178873203369.6209.16625872669090310019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa75c2e617fe67fdd3d5f6012fd7925d1a33bcd35f3557c3d55b170c068d6b26
Date: Sun, 06 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788732033
