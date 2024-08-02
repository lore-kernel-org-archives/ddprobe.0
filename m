Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC66A28371
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722583554; cv=none; b=P8VhKX4nrrLSEcLyV7fywRdnWhlrAa0IwwayCC7zaKcYYt29AznlnqDYYSrafb6CY4omqadED81mjqsawuD6oi7SsyWo2HGVuUCq1tPv8Gm8MdLP9WWz6Ks7guXdhJN0+kpmbQSp9RPjX5Riwda95XbvAdPoAY4BkXhV1p1Ik6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722583554; c=relaxed/simple;
	bh=2RZvOa4Cv3wVo980oYBkwfMvj9iGrSY9wfMbwLeYgoY=;
	h=To:Subject:From:Message-Id:Date; b=jAeTEDM0dDshOihtUoBwtlmKg8ZfGMi0obH3RumDdWlepgmpgAH77c9XawoVgiZeTfpmU6qJrBJvwnq4wMfGVYAUkSyot+kASrCggWC+x7lPk64SsvyFKHCzeM1fCFhRffchbSEaP0fINqalp2wp05R3+7tosNSQo5qG4dOnK80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGGZ74Dd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGGZ74Dd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CE1C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722583553;
	bh=2RZvOa4Cv3wVo980oYBkwfMvj9iGrSY9wfMbwLeYgoY=;
	h=To:Subject:From:Date:From;
	b=qGGZ74DdxsGKMCv3wJ44U2+yW+RcYLo3WVyuEKB+GH3bIjo45LTD1pGf2zNY2Q+cv
	 521noLx8jW5OJCWHZmKPCDjwdzvupkHC/2sQS54HcEf2udBstODqMtNU1HT4pYHVWm
	 KXi9RT2We7ic9C9gqKftsoB7Iwb4Nej1TsTpoBR3LKv0RZhzzFsj5U+6LSGoOedpl7
	 w3A7ipsxDUuisBf6a91spavqGCdpYL7VHyb6YfZLr7nFUPICrfKCsGwr5thx4TTLya
	 PR1JloUxs4a2uHQ52bIgRgnoSGVPwQwSzov592y/VsGpSiWi3k6JmeHp0XMAr4w1HN
	 rjL273lXvJBcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F91C3DA7F
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172258355367.7357.2020939517862255806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e11c4785441c25d9cde6ff09d2f9fefc8c9a7eb53893d9d21a7434a47a34293
Date: Fri, 02 Aug 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722583553
