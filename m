Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F2315E97
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749448794; cv=none; b=r2OpXGssTemsNCZjovatycrjFWgDYaXGFP4lFzUM0A72WHXFfWA2lBrjthRf+1RAzUDJKvzkwlxB0h8HBq/J27g/jHgy6NIZ3i1z6niSkL2tlRr2sgm+v+S+QTq+XmsVr+6srrt+W2k7UMi1SbDbNGcFfuU9gjrKogMmjGvSugA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749448794; c=relaxed/simple;
	bh=DnuCfIjzH/I86bQRVFDXhpz8CDn5MTietu55OcsyC+w=;
	h=To:Subject:From:Message-Id:Date; b=Rvs5Y1GztwPVhIdtkhUGRi6lLpTdQdh0IBX+a5Bf/aC8fqU34SSerJMh1dT4xBpcc3RB52jC1irQHhH8fcCZKOadLXgWQ6OvIKxgi7+jiYCCmzIwbmlsfoOsEuEZpTlDB/8CT23fC9jaUelEj7jCSCk88cgPNJavcEh7X05fOMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ey2WEQuI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ey2WEQuI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BC4C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749448793;
	bh=DnuCfIjzH/I86bQRVFDXhpz8CDn5MTietu55OcsyC+w=;
	h=To:Subject:From:Date:From;
	b=Ey2WEQuId36o3gP2gVUyMRu3u7Btrzntbav7ds7cNheLazQ2M6rVvCso2FH/cPrlN
	 Wd7DKrO3cYDIEPhfGylIx9/8IR94gXKJXIR35r/sSLumA/A6lT6WqplRWKm9/RSsGW
	 AZKp/GiAaIipX0AP2EEue/V3YB4eKiKH6PdA71ECH9B6WyCk5ORiWJOEXu/skz//Wn
	 /aEolgqQSz3m+pMVtakIhqIrUlvfjevIN5b8Hvnbwm8LYEfRhGUdR5efcVoNPGmN6T
	 +z28hqFb1ZAnRrqABplQpuiUvpMCmhBu2mFcG362gY8rj6lcLNUiccFm3UqUsAW+AS
	 dvnldbjl9Blzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E60C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174944879359.5256.11539029227097077907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2812482f19ab22377bd08b9d5b6f5fccfcaa3bdee620ee257b41075268dc94c
Date: Mon, 09 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749448793
