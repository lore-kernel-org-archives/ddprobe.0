Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D068279907
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787805634; cv=none; b=oZGOqtTi9mG8sc5u2HZGjtdhu5X6dy1f0CSUIAya/rOD9iF3M+DRv5uO3PcQhm54fTbFb62gv3A4gN/AqQjQ3YJwwn4eNC0SriayLBM7g9RQTRTUFc9+QUGVw5cH2aHSjOFcpSd4MgXi2LM9A68oeAKoJ+D3E/hyLHxcKsxwpT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787805634; c=relaxed/simple;
	bh=bFGql+8FQ1jC44/dysUlfIkTQ1q6dtUKUqSlN0x28vg=;
	h=To:Subject:From:Message-Id:Date; b=S6p5U1owTLoQN+NZByvgYBwmr/LN7Hm2gJ0ALyBpzFtau31f6Ky3AIavVcXWj6/gH595d/sFW7wtPY2ZNvcnpZ2rsuM8xyxyS/LdBMHQhgXYGyu5DUrI9Q6uz6goDz83j0owzt56crDw0jEe9HkL5/wmfCcaOdJMDXarUuiicfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3x1xTOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3x1xTOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61A5C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787805633;
	bh=bFGql+8FQ1jC44/dysUlfIkTQ1q6dtUKUqSlN0x28vg=;
	h=To:Subject:From:Date:From;
	b=j3x1xTOVzs0QHpm0qObINXv5OK14NHB6G0SwHDyVPfTtxGVYfJlGdVVyfDO5XCHph
	 aPO/HvcKYp2+b401jpHtmIy+TXfMHFWrMEj4Yt5vv2sD4KwrxMqoeF+wvF+qCrP7jn
	 JFBTUr84BZ4TbwcOWZneVeHdjJlBPMfZP5DaHkClbZ4nlG1aBcCvBjl6lBVuN0lW+T
	 PAfd9rBCU0pOfAG+SuAsCkwiec23avIYGlcmw2/H2uuEqopUh7keInRSlLm6gBk79Q
	 fdAvwu45hrykXwUxR3N19nWtdhIr99SFFRcBqrx+0qO6RZX/s6h5zemn1p5LzVt4Cl
	 oNoBTIlFKzxtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5A1C5DF9D
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178780563369.15377.3465779045894658899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca385b691efaa70fef2a145830abaa7b41ff30494a25e8731db706820623da7
Date: Thu, 27 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787805633
