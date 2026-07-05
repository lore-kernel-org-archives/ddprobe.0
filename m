Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C7717BCA
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 05:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783231114; cv=none; b=VJrElIpjwyu2c7dESVkneIkKpuL9MZc5XQq3Ay1+aM74t3k2rhBEtAw0WAx+nVUIbmkvwtFrRuEfXRVtp/o/ryRwlxs0pYKwbD5qdmhONguvp651vVsxEa9C8JQ9m1/Qe5v+4UGhBS2HkT+PnxR967nuzbzIexe/b4zO/fV6u+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783231114; c=relaxed/simple;
	bh=+pvFjwGCUfENu9cmN9LpkfCSmfBQwyCrh3kSmlzb/Fc=;
	h=To:Subject:From:Message-Id:Date; b=ee/nG+clF2uu7IM3Kj2xL9zPfwL0Qhkmunyn1RlZnINAbP4EUNn6YK2/rhMTT6Eqlqhd91wYk2FXsZ10SguVvluSJpp7xY8j1kSELRY9wU2H9eUxpSVJ4NeJnGAWPn4TsjuVfm66j2qzC7wrd8qfAy6wv46Dc7tdIDh+IRYGC/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vbqj1awc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vbqj1awc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CC3C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783231113;
	bh=+pvFjwGCUfENu9cmN9LpkfCSmfBQwyCrh3kSmlzb/Fc=;
	h=To:Subject:From:Date:From;
	b=Vbqj1awc/C+hQaxhKsgN14ujhjVl1qvrahR0aJUjo1p5PY86m9A9F34Ga/JI4PMHY
	 OWjP6fJBn/HfiAGSH9TasF3L4XicU0gPbnS9Us7+04ESNCrFTNma0feOv1yg8hs6xg
	 ng8Cd2+zqUQHt0h4BYhUUDzR20gJ/KIEPca+LEdSdisEJlw9250nxyhesRpsuw6WAE
	 c4fmyLWoEnFb2QuhVyGy7VJHeUObGWHXghIjEiyL6dL2KGhxlRevMl2/l89WHk9N+p
	 E/JnCNJQoMFv0MIF9P6BolA1zxn0xDVJxeHRhUcGf3PTeG0M8uoTGcBZmZm7O4W5N5
	 ahTP6iYqIr13A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE79C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178323111368.26082.9052367136366679628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ed40f8256f62605a5a847921b2120a07fa495f4a99532c1dca6f55a541ab78
Date: Sun, 05 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783231113
