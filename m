Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116AD244668
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758278994; cv=none; b=mSxfvKn66aFgC8yJojtnWegL/pZlA6iYeWjBrrMMBbjzCTd14TtATNPoUZ38BpoztDZeUD+4EnylNkvLi/y6iouroJOO9Y61oD2sCTu7htIqErEoqzxaoybk71q7ERC0XQaL2TC+OMGwFuCniCZgk4eeuJLjDrdEN0jl859HyhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758278994; c=relaxed/simple;
	bh=UPt7M5EmMu2hOOAtsAL+R7Uwpmd9ZreR/JoxBKkGxtM=;
	h=To:Subject:From:Message-Id:Date; b=gW3hm4aiRNz9YSKsGPa/Yku7D1n1Wl4LTUYztQRqiJZBeRJWJ+vixHko2EgJ9bWbth3l4bVCLlxIJpmv20lv70HMaAXrHR3YWh7NiDzlLqHdeSYZ0lrHHCyEUce0mzSJkQQJuaV+MGgW5VCUu80ehhBG0T9XFq1pxYzS5kOX6UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0o2eBYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0o2eBYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C75C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758278993;
	bh=UPt7M5EmMu2hOOAtsAL+R7Uwpmd9ZreR/JoxBKkGxtM=;
	h=To:Subject:From:Date:From;
	b=X0o2eBYDZlb1EPdCxhOEvWobhiJtGvkOHOppNsleHmssWqIxy5b4dFO7gZPqWoqbN
	 +Nx08qdJHmvIFluc5Q+mLznD3KBha8PmZRi97u7zUzxhn2dBqF4f2givxqHXTIZipF
	 SGHJF6xPCZ8FnptPqQs2Y6c2RUTBPCQPplEa7UUr/rjV2kuQ2Fu1y1X+naBVU+bTLy
	 xyGkEte33hxEuwRZNu4eNyCTxXDk1dOnDEMS1ofGmkDZWqBZbLe1uKnju+va5yh58D
	 KmktU6/dkiDYPzLSHWxzKwqm+WECq39qhOtgddquJ+Yvi+VgE5XhG2bsVgxHIv6UGP
	 J8zvgntLsCYug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EFFCAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175827899359.13848.15042032791921675487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c53d4ea16f9ac3cd9e22d2ec7ee6b1d1e2aa5b6fa3226c6f20347a390b9fe852
Date: Fri, 19 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758278993
