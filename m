Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E73F215191
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750060794; cv=none; b=IFz2ZOJ3xIdrUQ3Fjz5xu2p3KbNk9fSyl3mQWYu+82wnRUnzDL5ClLnyHwSYZZmDofyTXfjO/7S2VJWHBo2YnGI8FTEfAxT9Ww64h3UyD0U+jzj0rTLB6rb25wIiNuRnPQaFovQ5p5cLZJ4KRIv+4GfeS5NkjA5IV8G84yyx/Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750060794; c=relaxed/simple;
	bh=+dl/AJIOzAOATT7I7cGW+VR8rVTvhZnrCoBtYoSF6pI=;
	h=To:Subject:From:Message-Id:Date; b=c0Q/nM00C3kQhQL3kLzleYAcPsdNUPhufmeWhG8wGcPzB5wKP8CFiXZbqAXRM8UYxYosMlwb4pD4vIMk7A4QOrwtf4Z6t61Vh+QX2al+4+tav5khGN7RVunWeRONEWJT00YcNMII/Kg4emmyWMFrA6uWRkfn1C0glKgRZ/Qow5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsKEpnKA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsKEpnKA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1A0C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750060793;
	bh=+dl/AJIOzAOATT7I7cGW+VR8rVTvhZnrCoBtYoSF6pI=;
	h=To:Subject:From:Date:From;
	b=WsKEpnKA/cmoQLYpQfSB7eRFEG5m3X7YD0fDZCWJdVPf6ilvye19PIw6/JLA6xHus
	 sbItT18KZWbBBiNqlryEMWm/hiG4ZGpBqC8Uk3wg0YTcXrnbpb3q4LZkhdtV/NYWgM
	 WL6mIld6X2a2feNPmW9cWQhnHe7HLdENAIWG/JOuED4QDHlGKu3weIcgg8/W9OMtD3
	 tba82D3MqNMJwZ6Hz1ZZ+0Dyto8pzDriJ365OnH4oXvwKKiHYXRBd1Stg5C0mW7o7s
	 7gqQDkYfaDifDrNEaTffr1GvyLXY+l8sWOHL+Llmo0z/4XYjW212f2WUKn824zh20Z
	 ypnyd0nckC/jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6A1C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175006079357.12502.6175237265145120853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc50a57aa9d231fbceca3a5ecf301a3dfdd82e85af6424ceb0ab9463adcaf26
Date: Mon, 16 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750060793
