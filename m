Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54745253B41
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744155594; cv=none; b=cj79nlyDWdDvzWa7sz2s2J7ih6e11AqQ/3NmNK3QStoYTTwqSDzeS+1ag/x7R4PKGpT3ELeu0KMVj6FBNzulS6X9oBm8C/B6KPif3Tpg9Z/z4TMnObmBUbnUVAszx9N07dvLZFM98aQ5SAWzkCP8QTwWOBK60l4AvbcCRe1nY8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744155594; c=relaxed/simple;
	bh=3TDPSwymYlC7AT3o3iDyByHBTvxzEMkMFU/qcNLoq1M=;
	h=To:Subject:From:Message-Id:Date; b=W8/BsAFk94xS3RpXVA0Nw9bQUoLM6o0wcIq74oW72QMlauAUs/8qIHkoPYGTU82A72ZqhkHP/bhkmGt0uhTe3Q3HCDtORfki/pdJQn9ekJYd4El0e6lgohGfueVCFM2gn2wVs/L382lsobE+lclXGYGEdixElkKAvPDxrqYZyxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9giq73N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9giq73N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6478C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744155593;
	bh=3TDPSwymYlC7AT3o3iDyByHBTvxzEMkMFU/qcNLoq1M=;
	h=To:Subject:From:Date:From;
	b=g9giq73NmXJn3EU3WE4F4ZKJLi4FQqK643fAcYnKCKGLdpfW3G8mMiGL73d7eMGbo
	 5Cgv6rcaWHIl3Nae3rRKt56iIMBcgf+I8I1PGx+C8zkALy+41DBOAP8umA3l3D4UAZ
	 //3ctg6Zvs7z9j8DYkBk6lskph211zMatuMXaE3UW0iaj/CWPH48FMBaowa4Wi9bRf
	 rBxakOMjmGzB7buLPu18YqapbLhSnHGOKgvhBelFiW/0Rt6s5Tn405jXgm9TEph0/V
	 mlE7fp6jmZjAgSiw4Z5vd6hWutaTr5wD+hbmBbrQUk6pDn73qQDVTF9Qn8HZP3tMXb
	 v0x9MLi/noBfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A24E3C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174415559365.16885.14010566163665647270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc538abccdab689ac56009354dd7bdd2f35bc5808f0067fa1aed4592fccde32f
Date: Tue, 08 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744155593
