Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85FAF17BA6
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 06:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717224863; cv=none; b=KF5s3o8yOpAWxXoq4T8kcHX1bO3tgmuRKlSsT9cHEgbCJeq2mby9M0I4owQY6oROtZlLKBth0x56q23+VFmY5AeZiogjdfYtqGSF+kmInCa3COrCGieD6NPLxUlmxLBoxjPOjq8aTuCzXjQIzunIRyoMTaRitwDRqU+eh7/AU90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717224863; c=relaxed/simple;
	bh=IGz/DntkF0M2p6rs+z+HFuY1hBS1/c3yBW8G8p0LFjE=;
	h=To:Subject:From:Message-Id:Date; b=tjZYOUeI1gqjP1qabu6qCQpFyd4diC0fT65isILaIvxJ+k7pOxdEYKFbKrdruHBPlrC7IY+fONLRUjYJyITuXFTVfCjVbrYAiUAdH8LaYojhMIo/tuwjAf5ZKtW36M4BuS7li1pVZDLvmi0GX64lafSSj62Lc0KJ/758n5qNcic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8K0fRl/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8K0fRl/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03B7BC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 06:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717224863;
	bh=IGz/DntkF0M2p6rs+z+HFuY1hBS1/c3yBW8G8p0LFjE=;
	h=To:Subject:From:Date:From;
	b=b8K0fRl//WAreWwEZjGzem4X0sTKSByUK90o0nseLSV0iidFkFQ62x2e2bzQXTl6o
	 il7ncK8DG/GF4hAflMvoKFY5MgZd5kLvpUTOFB9plSt8wo47Rot4ciUkkrNCCZZ5ZQ
	 y1yvOp2a5DmiOaCQ8lulSdvApNL+ZjkgY17/OBzjOggF9/NUNB0gT5SgLeaE2EG1oy
	 UkveRoO4faaQTuIm77Y1nA2tDX2pjA7uqsWsAHVXCw8YU+l7r8zJ5US+2Cp3Ffzslp
	 RaZhlRwEjEJDEwkLas94iHawiVX94DgOdL0Ld9WTM7fCIE7pw7RMMy4xPERzIp2osY
	 cq8txv06m89bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2C6CC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 06:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171722486285.32571.3292009603381011622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 825cea4b12370e759aa17c6ee7d0565b42fcac870e1afb7b9a00106d751407d6
Date: Sat, 01 Jun 2024 06:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717224862
