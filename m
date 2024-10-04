Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E911BDC8
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728027954; cv=none; b=TThKcuml8tT+lqSUFqz2ArSl6unz5bigl04CpXD8ppKCjk5unOuGwxNC87J1ftJ13B1MqCvyFo7tim+w8SAbdeJd3Qy/gNjQJX6uMRH8pPhnWoqFdPwyfCMmszmhavbZGTgU0SJ+tkPAZIOGCCVr1lHgLLjLv86clP2vZhhXpBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728027954; c=relaxed/simple;
	bh=vMZYc9GRpjUwk294Kt08mUhoVIzsMZ4CeIxw3T128lw=;
	h=To:Subject:From:Message-Id:Date; b=gDi/hzSL3XMZIJECSYss51VV4NSCUKRzoCKCfOFzGSyXwIYy5CXcbkCqy8YYVMxEm4I2i/tZABxMgeFLs3+FemDmOv6wBf4BBXRnUm9FIrjKP0j5fNijktNL/Lw/BgtHGaDtbVTTv2O5K6sPUW9THC2asDvgkFJDdGZL7Dl6l60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swllmFb/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swllmFb/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3533C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728027953;
	bh=vMZYc9GRpjUwk294Kt08mUhoVIzsMZ4CeIxw3T128lw=;
	h=To:Subject:From:Date:From;
	b=swllmFb//sjPNprvnps1xX/40sIF0ohlXpsyhTeC+vX3a3kQksMxZ0ulLmgecXFcF
	 QKTqnJfb2Z1Jqggqnc76yyIc1yKEKdnjuWgPG8dIZCl7o+JQxTC35nHVoTgKbmvItC
	 JDYeXYoUzDveKwC68R/8nrpJM7u6f+GRbu2uU6rRQwD+1I+RGIKcMjfpF5zDMJ/98j
	 3r9qCirigH/KdPes7jDOpFj7uM4lprMIgi5Px8/XZQjB9evLXNsIaHSUFPUcLvaIY4
	 07Q/hNW26gXuO2u+R65CKr2IlbmKO1z/RFBf9Jgjn3hCHrumhqkkyBxFjnb0O0S26m
	 XHPcor2HINnKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFBECFA74C
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172802795363.30789.5387807007932166649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a8d1d9fc88e6749dbe071293ee962cc55633b06e3084b749d03d69472fef8f
Date: Fri, 04 Oct 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728027953
