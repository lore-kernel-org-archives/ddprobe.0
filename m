Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9601D6195
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770283434; cv=none; b=T9FLqN6qwxsKbgE0kCKyULXS4aabBn60Oq+hTHP0+qs+MQhaCgSxGji78+syeJEnN5mgNCasZiGb2tTUE0yeT8nhKfP7YW3gVl0HSfAJZRbT3cTE6iCgIQhuXPD0Ll9Ifm0KEY4GQp2KP567UZwtiprgpTzs2Qx72aCYoXDW34Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770283434; c=relaxed/simple;
	bh=45vPAthb6ku8n825Kph39Wq9wEfgqENMQTQUpN7vU3k=;
	h=To:Subject:From:Message-Id:Date; b=anN4TkyNfVmUoW5xIYwgBVgnfqmuJ8StqRIwgxq6yoKvhcMFWeRNaduktaNpL1NLkxBi/Id+clBJeeKXkJZ+6k5uw1f0Rnydds1HBCJep5sk5ImBPlI428DQMsO9tFlmws6ybEaLkRpAhMWT+wQMYc6/ssondoIBaXVVw03UWpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgb8UJ5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgb8UJ5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC149C19425
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770283433;
	bh=45vPAthb6ku8n825Kph39Wq9wEfgqENMQTQUpN7vU3k=;
	h=To:Subject:From:Date:From;
	b=kgb8UJ5IlmApQSuxEQzj2qaKpWDE2mTi8P5S/ALBGeQffpM+X5NqdSyn5FbePVIap
	 rlFekXU9kgD9X6iatZBMdWwSXO79Y+X4zT0Vi3vaZWcE8Nc8TegGy4fZZJxgG/EHl8
	 UfnkcV3/322l0darJNIHrjuCA/ftcV+Pp5MJh3qry5cRZzjen+v/wEcAfE5CT9sO81
	 NqBBJNC1fHAAWqKb5rq025GONcx7bdNsEfqGYcU5jli7J9J8403dbthq2LQ7HNNEgX
	 bMfxcTRA5JeItQO7K66leQTS7R+F/rod72pvrWC4Y/nqnC7L45cU0kFc20P4px0C8w
	 hyNx7BPMaABkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98799E9129A
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177028343361.16232.7783044789200798122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b658b8647d38b5983de04086640d998cc56678f28855e08ad707acd79729958
Date: Thu, 05 Feb 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770283433
