Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 704B11CA81
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 11:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720957223; cv=none; b=ae9JcgWmjyoyrcyEN/BVX1DTY3/6ikFU5SGoXguAvEUD08imQuR19q5GAuL78Yu2il7iY72Z5jox8qqhFGKHrtOB3DlpSQYW0baLmyv4seUhW32ESzL5J0RghLW+ZS4fCOb0nELBx23uqftYIOj4dMpGG/NBOOJBheMRbiw6UI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720957223; c=relaxed/simple;
	bh=A0CnzCgu+4rfWg2Z49cCsExpHxultbKXep/HcHccf6A=;
	h=To:Subject:From:Message-Id:Date; b=uXjOu/KrqMRQkAp/CPIWER7b7l0ynFPkByTXP61Dzzcr7VV8oobXCbmCnsRBXLkSqU2BduJCzoAiKkNP0W6V2HA7yuHM2ec4W1F0q1C1KGhMUisfN1j3TZ7/3WO9rng1E34WAnCEcOmI+I9CYilM5GXpgAoiAPLEMAwsAh6IclA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atifZ9+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atifZ9+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5219C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 11:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720957222;
	bh=A0CnzCgu+4rfWg2Z49cCsExpHxultbKXep/HcHccf6A=;
	h=To:Subject:From:Date:From;
	b=atifZ9+f9hS3ysGyuycfVPpMYk+R1UzKKH6+4HqSWEduwOtNM5ia8tyWaP4y6+c8n
	 KRo0Nnsiq48kpdFL91m8hkoF2zctxQIaBMUci/nGI+wcXpKVulH/+ix//qXonFVkOj
	 hxVrYcu31aBme90BimxcoiK84G7eZIBMQN8T4dFc035nQtMYqhHABueq8qu+CYUjZp
	 QfWuVTd2fN6hJo//5QSt8dpFLGjMs3WL+D7K98RsaxjHDZ/f/uW1C+JlCacN3I/d5+
	 jq8A6/aw9IyXu6TSFgdqgXRaDuVpyw3xWLJKlsPn/dkJyD4T0R13t0B15EjkZPYblS
	 HYP6vbq9dUqqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C86C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 11:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172095722278.4247.10245581517240476967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eee2cc11e58efca58aac5b4ccd2748dd6004cb76a2f9180972f8adec911a9bc
Date: Sun, 14 Jul 2024 11:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720957222
