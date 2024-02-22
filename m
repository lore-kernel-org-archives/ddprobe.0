Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B85414B832
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708637297; cv=none; b=KUcRB7yLm9kWjw0s8GjBYYuUXP+AVDOZzngCOjfrK8wXVCGLxuBUoDAkHRZvYu9FQXPsoHh+Q2Ur5yZbcVuALPnHHYe0X10hzwlYzWVirsAy6kmnqG/K/LmavvlQVAmniiURO6UZsZcKooP2+y435tzhkvLboeYRibr2nbHxNn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708637297; c=relaxed/simple;
	bh=vmcOYfOsPM4qNTELzvaxzhbnaopk0SsV1a6n0Sq1cdw=;
	h=To:Subject:From:Message-Id:Date; b=ockc/Hyc4/JAzOD6UTykhwvJcco9+dxepoTcG5hnP8u8G5cNg84P+ghNuoDzHR6Wknds4tQcSm5vPgtvM8zOJQ28ZQDQTgAB9+s5jS9VPIFJWaYxMUSuwkLQ9lwv6lDinBWqUl93vQ5ys3krD6C+R/ZJu0DiDerXCIHKRXLZyj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B19aGNNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B19aGNNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CC11C433C7
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708637296;
	bh=vmcOYfOsPM4qNTELzvaxzhbnaopk0SsV1a6n0Sq1cdw=;
	h=To:Subject:From:Date:From;
	b=B19aGNNd25KqfPszAi7vYrsbv4oemQrDoRH3uWb2mirz1c3pRr/34bOH/14TrhBeM
	 l9c0zKKav51+K+1qfkXCUAeCFlSi9nuXNCDg/k11r5zr6JX5UU/TUwHhXK+MYYncRI
	 pxVYzzJ9e+XTT294BaKmLpIhUWI79LgNnvEZWBh167lHemL8/22H4Y4mgvUz80Jsbq
	 H54JlfJWkqHgchZW+i6K2l82ZtAYtv04C7zb6fjISkJVfRcUfpRhZfROjof0IBy77I
	 Kp5Dw3kM8mkFexFlojko55FMfeUmfhbpnIRAv4su7i43jrU58sNQm2iIcz8FsrUrAU
	 eh2GNfkUVG/oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60944C5478C
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170863729638.22456.14269181904047898192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2032d006b9bb31cf1d1076c4641390f562be88dc60cb5603d0783fe3d38fb290
Date: Thu, 22 Feb 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708637296
