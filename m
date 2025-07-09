Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B543C1F
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752040194; cv=none; b=qQpiC6n8eshVvv5i9m/K6hwAPZ8AI4Mk9DD2gS4FMXFa5S6WmGEgk3nIKV+HLQOBltDNDEuA5B1tM31CNFB1+Bs4XgjFRV0LQzi33DKOWVQ4ltLCiSABr9CMK8I32btjOef+lg27Uhsh0tRNSVUiew5hdSbf9m5KzNmfJB5M4HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752040194; c=relaxed/simple;
	bh=WR0NE0AsW9x/52RqdJK3ksUCVX024RhS+PEmGuBDZK4=;
	h=To:Subject:From:Message-Id:Date; b=hdfTveqeYi7jwcGUik8zV053u6St3GePhGk8gVKh/3zEIvhWgp4OLuX44DaDgK/EQcR+cBe0JQuxvHi634E6IIR6Ghz0UFIC3PFmGJ9L9BmKzY05WlWUpGtph34+UIt3rEN/p0Wzj1mqj4Gj9V0znQganJCV0jlx9RPQh/rzj8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDiZviGQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDiZviGQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB17C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752040193;
	bh=WR0NE0AsW9x/52RqdJK3ksUCVX024RhS+PEmGuBDZK4=;
	h=To:Subject:From:Date:From;
	b=PDiZviGQ0SPU/aIRKoam1wPoRM5kX2XfDpEYyvqNaEt6UOBTOfhXcdeywlf5a8XPr
	 vhnGaI2okf8zgooZvnJw8QD6Ey9/KXXJQHyyKTHWAi4Oam/6fC7MgOkUsiAdgCdQAO
	 QuxVxe3KZjK31uSbGGRl5K6iZKoRrCLyXjnQmSJAGvVqGtOTBmIxyN/XMb12GcffPW
	 w1iWIYMJ11V8r1eVBjym/h4gqQgm/n/COeu2o5HopOik63dJYj4lr+FdPzT5K4EtWT
	 1k3EuLCkERmMvu7Ur4JgWN4Y068Py20IpOQwqWfU3vxw+mWfGw/u3cigsuWBBEm5Nm
	 sETXWNhzbuKUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFE3C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175204019357.21671.8932408106868554721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41acc8e8908d07133a7e104b8d8d26806e4a35d5d03a5cbe2ebbbfbf25185bd0
Date: Wed, 09 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752040193
