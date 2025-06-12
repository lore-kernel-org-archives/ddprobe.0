Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F5B1DF751
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749750594; cv=none; b=Fny11552v/cLhmhzkBwH0gtrc7tQubNLYLOXzh/8+ltpohwyNwCl3cRWBWD+thHO6JKkde7Y9t6ML01vyw6k9YE3AOI2uUaXAtYRs66EDEvKPwhzJnwPBaeYzApnLTSvoBLLIxl39ErAU/Gcm4u3MuMJ6G6vvqKHajs43Je3eLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749750594; c=relaxed/simple;
	bh=yO9m6+I15IUXq8amIw2eTcBCBZ0m94tkDNIPI0HzeKs=;
	h=To:Subject:From:Message-Id:Date; b=VqYfKckFpRAKxL8ekUHvUPwZ2OXYLe3lSMf8HHZ6yK+lJr7CaUpL1K5jUuk2BMnORbfvWNbYshkfcqyr1JMaqd0IlpVyjI9CcWTIaRHR7Y5Wtj1sS0DUL/MFd+ZJE8DCQO5blbEfV7MY+4lX/nyrl0x4gauemWCAy1QQzHJWxB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wmo/lf/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wmo/lf/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B87C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749750593;
	bh=yO9m6+I15IUXq8amIw2eTcBCBZ0m94tkDNIPI0HzeKs=;
	h=To:Subject:From:Date:From;
	b=Wmo/lf/Io9gOjiObymkuthx3ml+5fbf5aOXsEE9GaanktRdwPsKCCnFYs5xZZDH08
	 hF4wnHBIvT+X2GA2E+t7dbjznmwXE7UM3uQCPTcUVa+GEu6esv9wyZv/sX9IgClCVH
	 D9Gu1t+pSLxH7TuuNkeEazUYAiRxTizT9USC1efU/E260VauYsUpjOtkZYZ0UuZ/4/
	 0FG+rWngWv0RG80pTjV/Zo6WeqmEyIKJWHMkKFcZbcqy80QzBaJpRA48+v2Q6+k/Vo
	 3zEilOjqXX9L1XqnKk9P2RbRq5YHF1VOIAEMiVn5RdQynMiqE7tkZcqcs95a2dv3Vw
	 sRqE0/ZZlWivA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE19C71149
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174975059357.30494.829466830385232866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e36de750b7aedbf379e699945f6a8dc11654a2690c68f1e3a438bcb18538de
Date: Thu, 12 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749750593
