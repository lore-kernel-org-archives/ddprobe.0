Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272921917CD
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759599595; cv=none; b=HxVWg7rdzPde1/Pq4VuRhymw4XKdN4Iyv/TRKpvruGe17DtgUWEKv0osA0ojT1fm1AcGkdo5lDNuBiVA6SpCwBeBCom71RXBVo/OFZe6FrLE6DBn5oPkvJIT4jpbQ6DNpbLr9p/Y0w/DV0iWwL9PeIpgT6eJyKYVlyOVjjIWJog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759599595; c=relaxed/simple;
	bh=/ouPVj9rVFNevmAUJoJkhFhwU5ndMQUQ4GXWSgGoIr4=;
	h=To:Subject:From:Message-Id:Date; b=rIeJDL3UwlhMzNY2FNUTN71JTV5xQZClPu32JtVR9f0FeZ2z24wOCydPXqjKuxeO7lWag08BcIK1pExZJEMmqGH3ajdhGyL07ex0HmJHVE0NrSViAyO1/Qe9QzcuDqmDYxHiKqhZgnR2OZSEvy/xYWUdMg9v1ZVuP0rIXXZWyf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEIkliQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEIkliQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D23C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759599593;
	bh=/ouPVj9rVFNevmAUJoJkhFhwU5ndMQUQ4GXWSgGoIr4=;
	h=To:Subject:From:Date:From;
	b=eEIkliQA5BKbSTUSy0S5XGREEN7K5F3ZDr/m49JRES2nL20UA+0GirDsqAvFb6BA6
	 ij3l5LGbBaaLjLFLrcRMcO+lFkI77uWVnghPXcW2EBh9V+VG6vi7J+PUCnEcqUYRS0
	 M+Wsth48o8H2SuRvC6QJnYTJUjSWklOGfZKVFZPhrLDOOPpjkbuUAXcJIPsq1OauGJ
	 jCx+Y6oH5wZUVxjX+qU8CSC1y+ax2zmIB/di3DWiIugG1tNpTzIQjZPQLSry5XbKO7
	 JiyvArJWZsKbXbvGgqjmkcrV1Dx9EQVySlABl5/t0Xtqcq+Fg1crkbv+jekBsNmZxv
	 LztXrZ5Jt9Nig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A8BCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175959959358.11557.2008635414627048249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b06c4a0645caccdeec40ba0b847d5d46ee40d651e794b9f11f01aea95300cbaa
Date: Sat, 04 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759599593
