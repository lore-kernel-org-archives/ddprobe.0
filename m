Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453884A0C
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748942994; cv=none; b=cTjZFmHBOuYU4dSaG38PaCqcDdCLeDhFr61rDiPt1RaQY33DugZ+US5j7ZQQu46BoxYGcx0M5tKK5I9SG483Q1mpJhJmAMWsoq3aaKGP5iagAilK8D7KA/eKHwlo4z+4uoSB2y257uvyGUbOIyeecAwc7atR77gfAF9j010IBCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748942994; c=relaxed/simple;
	bh=qUbWT8s/oosHA3EBSy6MjvCVXFYbTm5z+avzLTZoX4Y=;
	h=To:Subject:From:Message-Id:Date; b=G/LH251UHfDEPaPMgfKEblcpnGpGX5zeceNHxEXfY7wVQDc34AJMG7RzcyzGzwB/JmtAt6DEoGf5O7vOcGSQR6UiliDWO333cfebXN5oGfp/tU6cSx0MhmP0WSXT2iq2usWOsETus+jug/IGXe3y2NbaStjmPgqND0zvI13OcWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7t74EL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7t74EL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1B5C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748942993;
	bh=qUbWT8s/oosHA3EBSy6MjvCVXFYbTm5z+avzLTZoX4Y=;
	h=To:Subject:From:Date:From;
	b=D7t74EL6k7/Wz9NO1xV92eDhH/Y1EN0mU/R6H125rU8Z3qwyLDOEfe1AOIxHzofW2
	 gOYRTEyVPuAzlVll4NrBi6RqLnRX71mkwnYNGqTP7LDdB3u+bbvpf1WArH31UuZH0v
	 kIncI2AI/rzUYrT2SJgeOontILZt7+0c93mHm2dApql0rX+wi2E8Ollj6i/hM+cSmU
	 5RCVdABmYBo7txGU/LR/mK232t+Dde3aBWmJbz5XueG6lcmnPM1EgyxHQoS30xC00X
	 R8bUBzmF3WCX4BuawejYIZ7X7js4CuMWGJsCge4SJqy31drr36gNWSOHReAKBh4+UU
	 nKEiVHd4mVZmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954FCC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174894299360.26818.11596017154646659892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96bd1a3628c06eca677a825a292712701bdbce8f2a80199cc0789d906f1e853a
Date: Tue, 03 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748942993
