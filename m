Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2304F5E16
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790625634; cv=none; b=hPRzWeb8POblJAydV2jl3QeBWczAMccasiGSfTtkxDVEMadQEfRNff1u7dFXdGdgiVNQGCO7IyGCQaXgzUqfLkIH2p7Q4DTUBMPN9MvHXJ1Xlxq5+DKEsSpX5JtRcWgJsg8gYlUzpWz7QcRpQgFXUwjBObiQDOUAA2ZVca1sDYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790625634; c=relaxed/simple;
	bh=zY88jYNkZi/Hdi6jg3iTOX/8cRoq7hySwV5LcDtsW/8=;
	h=To:Subject:From:Message-Id:Date; b=gm6hrnZVgijpvlxPHOjVob3W0ytfHz+er7R00QtxcEtj696jYpJdNIxL5sxz547U1EWPbFBjXwr1UA+fz/yjPmVJS52AWti/nXV++r3fGvjTLHgyX8bGDqZ/SBrCW1i7CoyAdVf1CTjF+2HQcU1TnZDmQ5cOuQ0esG+wyLZHv70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBNBHL+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBNBHL+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98FDC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790625633;
	bh=zY88jYNkZi/Hdi6jg3iTOX/8cRoq7hySwV5LcDtsW/8=;
	h=To:Subject:From:Date:From;
	b=VBNBHL+idBjbWR5q6aSnlNaUx4DXGaKJTyOUMcZtIW4Q+SgYXeGLgppRtpMcbyN3Z
	 axbZVldlwyOlkdscixBhNtXkT8zz9fbkqYkthNJlzTZhbOlnTW4wM5zw+hU00nNw3V
	 oh81qyEJISI2IWZoc6sBCsBeZoesyzu1VAQlwnq4J1+/Bu+StQDJLGDXazxCB92p1h
	 oeaFIuD5YmEMRhtkeEO1VtfX82KLp1MRcOAicp+uK16/r2vZjnKjL+5O2Og1FS/lp4
	 8X6oPFhFusVf5ZS9bWvRtysWv8795mkprPsymhDpBw5oMhX4k0oNaK99D9yHbSPsn9
	 20WRq1dDJV8VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55D7CA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179062563371.5095.3111613146696067189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e2c7fd0376e5fe5325a55ca2205c367e825681d1dc115ba3e1ac120b2978ac9
Date: Mon, 28 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790625633
