Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29ADF1FDE22
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749380995; cv=none; b=m2cKe9LK9pHeLHl+AfvLvho8XDgmBDiSSpMQ3QaHV2vbzt4flK59CwrwFd2SKl8Fvom/hSKSkuuu+EDOHTgxf+/d0nskuOHi8WP0IFpRTaaV5vvIndLSrkvnFBKUHrK6cJDXzhKSlfWfjwZsRS3P0osCz+zFpnh9Au4PXiM80L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749380995; c=relaxed/simple;
	bh=tzKTWVPuId8MMjqQoFUxTul5dPBVaADv6LtEPTYT1XM=;
	h=To:Subject:From:Message-Id:Date; b=Fcv2xPPU/UJj78bf9F1094MaJLMw71YVtlEba5efuX2TLgv96c8FNgddN1B1CPt0Swr4tDh3Jr58wFyL1ukzGdXZmB8UxAbeMSV375asR7jhrYOHZBfZujxzDTc5AnPgxjwOq/huNOWFUoYK4jaXRh+rJCEIDM/4HLYmGLMabVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqaVQIwW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqaVQIwW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F732C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749380993;
	bh=tzKTWVPuId8MMjqQoFUxTul5dPBVaADv6LtEPTYT1XM=;
	h=To:Subject:From:Date:From;
	b=gqaVQIwWd8XRLujMJae9W7/naOuvH7g5tCGqHo0YqpGQKSzoIl/K7GEY+r1X9i2RD
	 +/kFYUKZcWj3Yzrc83+6xiD8wzqlVWL1F43n/HxjT5DSRYCYBJ18K8cV+e1VPHGj8O
	 AvGhh9XqjJQl0gef2457nxDS6v9EcnSpRfLGfzw4BEzqQH8SyfonKg7vBLquiLC+ou
	 i6vgakYWvQpOtL1slCA/rQRvIi9TTPyayzGIA40r9GESNvfD03S2j/dyNGmrVM9nHx
	 ivAkxPfuZ5SZzra6r0iVSHYmdyWja81uZtxa8YOhiGJ6rO4CkIidNKA0pzCLr24gup
	 RqbOjp6AMxggw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F261C5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174938099357.23115.6408125519401794300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e16c6cdd011959825cfe940a98e361742b32a19b984fce08252cc5b02c1a6bcf
Date: Sun, 08 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749380993
