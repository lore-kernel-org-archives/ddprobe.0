Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008AB69D2B
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747495194; cv=none; b=hKwjeX1+oazxXWFsOCX8UnR0TIvruUakDx0P5FHt1s5sKPgwdxug5uXlDyRhojsSSVENJp9fgHsd9OqHagLb24F7RVou9u4O7bB68jP1foMJtLdL9uqzacRRbjPHsLvl1SI/wUdhZAYOtC118yErn+DVwlOqP89KpgwRVSWYKEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747495194; c=relaxed/simple;
	bh=mNE7K4zWdivq5mVjDmrvbqEU4LfFYC5jipjoQnHwdpQ=;
	h=To:Subject:From:Message-Id:Date; b=q3P9vvKIsG5WAo3eqkQzMnjDCi/VpRyOH3BBjL6rB4C7CYRhEtyr516volj06bPt7EbSVxfTRxuc4MGXP9icMTlf53X2iK+NpsY1/Wc28qpNtLrvDn+NN+VNe2sT+52jtvJrHgXl1TGcU/fF0ASaVrFcd/ZRt71luKGbth+yz88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/XnU1kb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/XnU1kb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2975C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747495193;
	bh=mNE7K4zWdivq5mVjDmrvbqEU4LfFYC5jipjoQnHwdpQ=;
	h=To:Subject:From:Date:From;
	b=I/XnU1kby48iS4Eh45cZApRyMOGbITgCrruvCdC10sbZ28ZlZvpXlheJ8j5+LzCoD
	 yNQl5C62ttaNlMtX4PYZ0QggNrxAZeX9RR2qj8MdWY0VXpdYfUYqBgBoz9caa9lmlv
	 sX5pQUm1/lcqoL9jsWg4ODGWeJ8BwlmnJARtsHdEhoTrq8W/2xvJjsRFOSlKB5KAr4
	 tNoB6eJnMQKcxvPt2VLITtfppX0U/Kuoj4BxhBUnolaKw7AhtLJLPRw8nWGB/Dp5Am
	 sOP/PGkJB45YTP9sXW90+DYcz2aZpcZfX0yuPi9pn+8yfVi7MO1+D1qmS1XlSyNUwl
	 K/jrSFv7l8RHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F280C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174749519357.32267.2713152406373680237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dd99509816c6712b9addfb5944ec04136b1f98882c3cf158f550dcc694b2fd7
Date: Sat, 17 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747495193
