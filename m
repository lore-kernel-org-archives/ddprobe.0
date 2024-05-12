Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A053E56C
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 06:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715494943; cv=none; b=bs8lAmqSXQtRbUrBXTeGK72/V+L8QoX+TVK4wEtF8cvqziAEYo2NpM5bcOhmb9gpyXcj61J6eYC49abfEWAWcIxuqLbB0ZnYDFnyaBtoEg7iVZDfhU1DU7O6Hr+qEyb23M31PAKt974TC7oZjiH3bT5VqB6509kNs1vP8GNBlV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715494943; c=relaxed/simple;
	bh=lNeQfvrgF21I3Ys1gS1jXWOW2jFcEWZG3rMDlUHreLw=;
	h=To:Subject:From:Message-Id:Date; b=PzAcBVzCBIfdAgldvCFz3yiWWeb2EMJmqGKW8rFH7EhPLptka4BObrfz8XSbcFef1dguNDEVrXrdi++DkWlYXYKx1KZRVUt3OXd3LAsEJrc810uvbh68hvwcyLkk85KzVB7j8VdUxbYJcvFrKQ7ZtvfUf4LAaQ6WfNcg8vgDMCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRfFAVsq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRfFAVsq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D503BC116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 06:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715494942;
	bh=lNeQfvrgF21I3Ys1gS1jXWOW2jFcEWZG3rMDlUHreLw=;
	h=To:Subject:From:Date:From;
	b=LRfFAVsqsawG9hCuAO4z1PLQJOoAu5zU1OIoTqnoZvHs4qD8QTccUSRQWsoJw+zS2
	 4GO9R8ACv/OHmH72jeO4QiEbJQrTiTLOpNenPV/mqXa4aZR4Fw3n3aQIf7oSiBEgpr
	 yrh0ubx7Q1izihIiFjOi42ZuL9dvwpb4VWlI5HIQapiG1LVUu7MDNG0pHDcPbXPmhp
	 Iq+pMV2mrJM3kx5v+fjhBpOTyg/f/ewgnkraeEU3mPWsGLdCBAQvHQPUJ0FvvPgVCO
	 TXVtXkziUBrXSJysPhvpUS7QJ3nuB4KGYFIMJcoKkCt5lxPREvKOurDqX47+EnSiwd
	 jjMWRcYouwdVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E37C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 06:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171549494276.7380.3359722796334681456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e6ceaa1620f352ca0bb24cac3bf0e4eb4d3bdef8ea4b42f10a334764a2e1844
Date: Sun, 12 May 2024 06:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715494942
