Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A003176EE
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755422394; cv=none; b=YJebSnvsos39WbJTRzehdzMD0qpCoGEJC4Wo6G3WNMObZL8kjbr+8XZWxbJErgZ1FNF+6UGjzkBa2F9vNOtiBkkwO1Nbo0pEsxYegEtsCzbkr+zRDJcGH/LSGHXuLRwajNs7AWYPf9y22jx9bHemNEIKlxpeWYaZUqpW/yJm3o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755422394; c=relaxed/simple;
	bh=Tv6hylE4t1cHa7JReC502bjSl0NIfrocAMjjUgM99Y4=;
	h=To:Subject:From:Message-Id:Date; b=bTbxqHv68KtAaynd7inro3DtdnHaLFb9B1a0alluKmu1wZdzeIbVsEi3pJppk1WKbqjMKuct3uvJi8JgYYzRDLxhlDN6brbbvZGnBc37TtZj3d4IBMbmcOSMEG40B7xdTbdhF0bU0o+d1ubwWFK907SIKb3fI7rZcaemTtRnpo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clA0jidV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clA0jidV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2413C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755422393;
	bh=Tv6hylE4t1cHa7JReC502bjSl0NIfrocAMjjUgM99Y4=;
	h=To:Subject:From:Date:From;
	b=clA0jidVcWvaLuPFI28TTXYRUE+aMSyZFcMWgRglfLBNN1BWjdV8nY23zElrUvaND
	 lYQxSwhvcvu1MMU+HlDA5vK65MK7oJZF6BBKlnWaxAvCSMUnmVzw+QHvScfYWqIzFV
	 PUr7yeCIMWpg0860oj0J8kWSlkzUZB9g32m+RDS3KGBc/VLXkTRicNFIt7/b1k0c8M
	 TGh6iODg05AcJKgJAyuUlboWFKvHcaOscna5H4Ri7v8Avoh5JOcaOYSzQ/ToaYGKUr
	 5G/+8YZJSDKov404LPucsByH64aYJ22rYbSubIoE3zLRrnmpdxqURL+YnmfARr1Hch
	 ICddG/negb2hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FEACA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175542239357.13932.15098174931284817323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2388b6280525aa6019ac4264227c5d694f135f2f89803b5cfb58a3ab2d5150df
Date: Sun, 17 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755422393
