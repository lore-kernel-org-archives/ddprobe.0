Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102F727B352
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755760795; cv=none; b=AXQsDgoG4J0guoMkHw+P40QBNn9CGMGaX8BeEtn/yahR7cFfHPpBXzykK2bECZ0D1KVz980CsB3Bh1pxUjTclpFx2JClI3+pr03llT+R2nclOR13XtBHr3TvEPRd1QDWN28O/SpmdnjuvCTIqGYRpyl4jrQxqI3BRbGu3XKqVmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755760795; c=relaxed/simple;
	bh=NeampCclnTTceFMEtWJxfkepd7mRiXYkrYuFESDW5oA=;
	h=To:Subject:From:Message-Id:Date; b=SnEIXlSAKqYLqLlmgkJ8yWtECLu7vtO6g8gpp5BvhwXzFl697cbwiBFqXnc2zW9BZ1RXUG2Djs09S88jqQ7jmF6DLdU0rMdnbj4tDJg9kM0G54zbaL1ZMdkIuVZeYMKTLz4cJL0y0tfvfBl64mXgkOmN6XGK9xGObdR2ynwhtT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qx7VrzTx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qx7VrzTx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5A1C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755760793;
	bh=NeampCclnTTceFMEtWJxfkepd7mRiXYkrYuFESDW5oA=;
	h=To:Subject:From:Date:From;
	b=Qx7VrzTxBhmZdJhVEaorQYU12/LComSjchZZ+wntvR0aNK0KYjHBSVePi4FAjHodP
	 IvHWnvySzJ7qP33cDOcBaucL/+fh7k+2UPJCAlSxVml0x35JufoLy4EGTqyjYk3xP6
	 MzwF3fM9n/bskv3OsBFb8kTT4yaZOz6ZJo5gSV5NCxwQPJBqADY5N1jvw7k4Cb3xSt
	 ZZe7G4ipp7pOQW7clz0DwYCzU8iZUwoK4zwSNR2F9nA82N/wDA0q3QYvzS9qLG6oUe
	 fXV0M0KB2BCo+e0gZ/P8p3KMqcbMfc5eMTEcULnmlwdfJDcjNDONvdns6s1ewIXyg1
	 P8izITjOCFnNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9A2CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175576079357.20763.11174590354484276958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9393fe51466e4f7897137326a41691f81e1c251c08e7123e2b736ed0e4d6849f
Date: Thu, 21 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755760793
