Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FC830FC07
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 14:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763562714; cv=none; b=La4nHCAuhg4VozynPXkxbATyl+ti/QTYfNtVH/kNhNgEsXFVt2mzAEbe05mySVJiNwfhk0HzB5Lb40fnWcYxpQN2aLeyT2R92Rc7YwrcfrFxjwteQ0l8TyYFaxPYBjgUm5RhUZMNJAaJ7/5xWMvKQ5nRcWWAMwlqPmp1CYEurWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763562714; c=relaxed/simple;
	bh=1It3mSpMSy1dNIi3QK7G8kzlAo46GafYKGaM+HS65xA=;
	h=To:Subject:From:Message-Id:Date; b=dgsjpjXtFwUoOJ734iJHTo4QzOg8xw6eGxybieTigfDeljbcZt5OOMkocgb3Xp3mHbN2A7x1ipQukY2Bbi/d9F4pkHMVtUq9mL11VjUFtKiHy+Ed4PVRPwUJGYMhM+2nPNEXxby8kmnML/JZmpgrEdGCGTPtKbleCbJz8K+Hw1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQ7tf/xS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQ7tf/xS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C727CC19421
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 14:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763562713;
	bh=1It3mSpMSy1dNIi3QK7G8kzlAo46GafYKGaM+HS65xA=;
	h=To:Subject:From:Date:From;
	b=tQ7tf/xSk0cgCich3A8iK06+kzdGt7SNrSXVGhsDnxRfVRveX0t2FSWob5APfvFRL
	 ST/7UlTdfLluXMWA/ilr/eGIebnuljQQqW+8X/CJKJgNQOGi3cnUwM1uDU1zqO1Pvy
	 k4sxrbN7WHSpZSqFvIhtByEVQnRsXNAG02Hd7qwYS2cGED6twuY1ZzUUfmLBcPVsv+
	 1+VD68isMaYzDmbEKFQjKec7B2D25MEu+5m/Cuw39cjx4ZLrfSxCycxTh+RijCYj3v
	 FOo+j6IRagATQLF2PFg5D00vNIo4dGG6OjJrlSkfD1JVAoUwSY6fCMwNHHlrNyz2Vl
	 YkAdNj0vS7g/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F7BCF34AD
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 14:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176356271359.31962.15222696660859325741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bc84f7fceb9ee75d471eb45ad8ee5e7fe5c3147969cfed3ad3e030d0cd73452
Date: Wed, 19 Nov 2025 14:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763562713
