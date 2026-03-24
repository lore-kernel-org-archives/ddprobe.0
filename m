Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF57830F938
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774379094; cv=none; b=GqmocO89G7nSvZpjS57B7xY21L25u9+y+ZWDXzHg4p/fR9b18nB15Gp59tI8F6l526AGDTC8jaiq7VQEIcJoCSakLzVwTh8zRT6kL8yqAmsMMofXz9ECnnRIk63UVx9DERcym5xJP7sd4IhsdvGlElVtyTsfOjg/uu0/g1tbFtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774379094; c=relaxed/simple;
	bh=mvdIbU7cG1JeHB43tztTdY/GdsI4fo0l93OrMFhOvDk=;
	h=To:Subject:From:Message-Id:Date; b=PnXqvIycWHATiIhFwTJX85x3OpW6AZafjW+a2uP1hUy+HaBEcFx/0FczNB1GE4j9405rMAi6oPt5kKNnUsS5232/jYmLUHynd2EgAzEGIUojCjDd4QX93oFH482timQ387AXe9DxWeX1pRnijeM2Y8e2C3vMmsDSJuRX+uAQo6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQF1Vr9A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQF1Vr9A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35BBC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774379093;
	bh=mvdIbU7cG1JeHB43tztTdY/GdsI4fo0l93OrMFhOvDk=;
	h=To:Subject:From:Date:From;
	b=KQF1Vr9Ayw4AzJZbeKIXHEFdjy9C9BjvFaExZ9PqJ3PjvcNXZX0fuKugCbOPk46n/
	 vJxLqhGhJqk5hmML1mz7y1A6EiS2gQZlwkTs23HsdWfsVoVcz2UAaJKaDex+xFxRWI
	 daeQzjF011UNN12rlFbyPrPteTkmgQ+891EoRz4HaxSoeIkdiOQu0dEXWBj9kOGmT2
	 C7ofAEELoj6tc6k3ZLNBNsMJQ2oHBmduW4L6ww3UR21IDrg29a8oSbGTQverJYDrMY
	 baVM1MLZAtlLFXXKyUMGyQeGTT14wJn1XV2TJg8D+1Bm3VGi2Ki4xPvG0UMuQGbxXu
	 Nyuo9VVJEGhcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914B4FEC0F9
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177437909358.12923.263675978051365339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd05bb2fc8594d85079660f702f67777536e76408381207f720ec4edcba100ff
Date: Tue, 24 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774379093
