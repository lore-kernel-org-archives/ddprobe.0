Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C8A2628C
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727553954; cv=none; b=Mm4jXc/pLZuenwSTKz86185wPAB5vvP/T0t6im854x3h8rP+QmxGwGnED8WFjBOtaQsAndmUZbt6y/gJ+j14xNPU0LxNNd7uIDEl8ZsI33k293/zhQVjMdsQDNaKqUrhAki3edri9ecCw2QKGost3ezFh9QGZ8IeJ6UqpDJVY1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727553954; c=relaxed/simple;
	bh=CH2kgBVQgvI9h36DWnPqu6utmNcJjLTRl/4i9ygSG/E=;
	h=To:Subject:From:Message-Id:Date; b=F+0hL0iaDUOfYPw2d6OkRw+t25PaIvC/5YV2KCwx4aTNM7jTsPiHznsFpnXL5VDXXLmg5uUogQbZ/oHloAAYyIQylKMGbcndLQTPaQByMfK+cOlR/mVkCn6TZAzR4cA8UH71ZDrfPi7yzLwLmkTp9dNLWA/bLttDG7aGbDd74dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WP4RezN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WP4RezN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D29C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727553953;
	bh=CH2kgBVQgvI9h36DWnPqu6utmNcJjLTRl/4i9ygSG/E=;
	h=To:Subject:From:Date:From;
	b=WP4RezN2nEDPgsptK/fqJiFjfcaOUHTnp4EFKx/hEQaMngujfjlvHmHwd1KjbYnD4
	 vEBc72JxX868SBtTPIbVaSf7cDWsH2BrOlwbSr15CbrNqwlwhC3wmJa+VQkX2lZZVk
	 mYOo6hjm0cDPXgtr2DHyBO4v35m93z0YnhhvFnl3O4izflIpwMpnswMubbtxgDeezI
	 bSPoAdHCWVlQ/6HjfLKUsrKXj3drH1gDUfD6Xl7viqIvcIcM1dZMq18DuViTEwdbsh
	 pUUQvIAc/gU1bU5X2FEzZqj34yz8TXCOPzIvUBIQBGGGtFWWXzgeqVX9MMtpcyRrmk
	 tvetTmn96Y0Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DE3CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172755395357.19783.9894550974878057719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657df0480670876dc033f2a48ee22f07b22a9b0e60eb0c406163175a1dd277a0
Date: Sat, 28 Sep 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727553953
