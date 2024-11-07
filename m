Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A60214404
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730994354; cv=none; b=DdVSBWzT3pfzdlEp7H9Np06s9ab7ynQpWsaRZKe1lhirw2I6NkBd3ArK9YV9Qw0l7AVfoXipY4eriWyyWmGHPJyr6tk4/ONGowY17X5R4Ujm58jecjZc006vyZrUlUCQT06JTEslfnutCN/mf+EUeFzfEI7K6uWQ3288KT/qBPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730994354; c=relaxed/simple;
	bh=fU1l02f2lIAfnuPdMhvJ0tnWPQm3RGLtR/ot7qKUSV4=;
	h=To:Subject:From:Message-Id:Date; b=EJBrMsx8LCW8Tf+3GnOfY0RYVzyL7bdQ3NIV8DdEnRY38Slqs4TvfQ6sxx12D4m++DMcLGTTmer122GRRjp90q1zVUPaeA4t+a8q4bbM0ebof3DRVxmpr4UV7bTxSCaP8DiMKrieD+xyzntbu/qZ/M8qIjl9d9oyi+OtRSw5DAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UssmhWFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UssmhWFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DF1C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730994353;
	bh=fU1l02f2lIAfnuPdMhvJ0tnWPQm3RGLtR/ot7qKUSV4=;
	h=To:Subject:From:Date:From;
	b=UssmhWFBVTDI+isU9oBaFRbLcqi0onvvqmqQqSvG1GAf2PF4DcYjvQ1novzTWzhmT
	 y6COJyuNfRs+cMisbgbjxxdajkkbq5vUijZeFTs7yLVROmf4v4mztsk/0Meh/VfA0G
	 W9Hw76izln31dWzs4O1S5kQb8pD75XeIwms0NO0CtgkSE/ZOuQtFrDvGYvkGX554dJ
	 6ZZ4Tcxdj3tIcX0tTCa1eDhddktHg1hUYt9feVe5h9073NPUNsDQ+kfjSzH65/Uz/I
	 vD/utQ7ryXxB2zYaCZbGn0VC47QmKJ3tXMNhJAyFKG7tbaSG9qEvYvD5vH2cYNW0+O
	 zkT4XCKO5B50g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F51D43370
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173099435362.23435.11774911838543245568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9d682a9e96b080241b43cc6758e24a37045869517447bf821538ac819369f4
Date: Thu, 07 Nov 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730994353
