Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEA915EFA2
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 13:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719840923; cv=none; b=fNOPAfp9X263BPATpoCgzqVybbaEWEA+3pc5NXOLsiLPeqh9YauFND6qcD3/GkKh1V09pbm6THLfOYjLncqDU4O/6T0iF58yKhPHQ6JWiMsC3m+40Ybe1+J0m8gd8mooNzXLaQwlfzt2Vs4H07RByQnGGNngDx2QqQOf3XJ//co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719840923; c=relaxed/simple;
	bh=cwxB5wiLp8xPAy13ZW4nK8LVXBBuu41noNVA7TGMq2o=;
	h=To:Subject:From:Message-Id:Date; b=oxktDTcoOMg/dm0KaLOl7pybCH3mxT+JEwVaiUMsroH4eLjVTFlcT2szMwVeoHvysu5DRUT9I+N/duqeGulQIgVfCNrUAlVKbwzJeyQdh7vDXriieX6+OP6By3CETsXsKXOohwDX9tG9UpUnwC1GRu8kJCFnlJn7h6rFOfXiers=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrifYdqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrifYdqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E273CC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 13:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719840922;
	bh=cwxB5wiLp8xPAy13ZW4nK8LVXBBuu41noNVA7TGMq2o=;
	h=To:Subject:From:Date:From;
	b=UrifYdqQc4J8Y9F7B+dc8Nx1wyqgRrCyHvbg1t/5Mk2Tzj+F6dMKUQlzY27/Ok+j0
	 Sy0n0TarKs1TfVbsyNeIpvl2ZbOpw1dUOkMfG3qyHreQMsSgSFX5ng94KqGR+REUEi
	 UX78vT+Ephk5fWR8wQsBlrfu1AvuXT+/vkgV8op6sJjc97fC2J/fzR3UD4iyEFtHoK
	 Rpzw0GM62LSQanMBia5EIrKrPYqaBKkcg+JubPJSdJKz7D5pSHxKy90vNlQ6Efc91F
	 yGdKciN32F1emO97A5IeWraATvTVaQijC/DABXD5N6FvKiGsSDZ91AhLMxD5jDPeKJ
	 /eexvZBnA3LoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD33FC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 13:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171984092282.12196.14453229047999734473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87fe839949749fa8fb8ab6960eed5e45352ed7e44a768b6c3c1da9ab10e576c1
Date: Mon, 01 Jul 2024 13:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719840922
