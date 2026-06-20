Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C4621CC5C
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 19:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781983594; cv=none; b=bse+QpgV6TBvIAy6+wI53+feZn5MDw2Ap8j6SEFUwxAaSzK6MpZRGzIaMVwJuZc+UTtT9HyZx3D8SUQ6DRw/RcBfy8F9R/jLzu/v9+GWM6xY7VDU6MZAAdHGmAgr7LHCS25/l09qFvnoMBKSXjEa9D07oc9Aq8WvXzDoReVHDuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781983594; c=relaxed/simple;
	bh=7aNoJsl5M1xSg1OVPa5AMxuIJrO3+pMDhEjCDbA8xNE=;
	h=To:Subject:From:Message-Id:Date; b=HKwhcxUpJIxhp5C9AmCAnkpeI+F2sPVtDedeDN5nw8F/lij0z4uTQbhOChfBzniUWEz+Ap5AjKJwyz4JCBTqs66Cvx6qdn8qNNxHywczcgvHaM7cP291ka5sPwlYrHnsVngez8QMIjfOD+TISUHElLUvjBrRTbMaVEtrcW7KTsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6ghm6Fc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6ghm6Fc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06EBC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 19:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781983593;
	bh=7aNoJsl5M1xSg1OVPa5AMxuIJrO3+pMDhEjCDbA8xNE=;
	h=To:Subject:From:Date:From;
	b=l6ghm6FcafOjt3YT3+O2vBuj61M4yyfIwVc0xPa61INYj3inejXKA4xARCqr9/0b6
	 azerJlBFMy8cf5GJc/VjKEItetHVq5oleWC67nEaMMrytxxOVJ88xhFUXtqLBqRurj
	 f4e1k7G9gImiO2OtT+/jekx1pgrUb0IUHpBOBauRlmNn1YHPthnmBM5P8AcDWus85d
	 GgjRyh5TfXp8BFRwxaBcWEbBXBm9GmNtBxCxZ0+IOOJb8Wu3Cr8FCRUoERyp2sLE58
	 8jdZFMobfEHdf81U+RnfqluKmKQ/GlsKKbejQSR4EWbv17YNa7aEw8hphhVRZD+7gx
	 QM4VcFHTzFVKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04EECD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 19:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178198359369.11148.4772912347134548854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72b11f928be6b1e57b3313aef2c2d24aaeaf75547015331a7bef3b1894ca255
Date: Sat, 20 Jun 2026 19:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781983593
