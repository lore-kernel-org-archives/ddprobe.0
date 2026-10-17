Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FCE3451DA
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792248634; cv=none; b=h9rIL7V5QjSJz6kaPnbJmmX2EAMixHtY1pmDjPL5uFhUJMzSE/bgflpNFoyhZcOVTJZuwOwkaDx3ffFHa+S/nEk7aEjQTupBUt/Iw1AEeVYAyLmlvq9pJQEdQmxYAtrAg+U9ifWUIaoJYpU4Cldu4lcL32ajweDCy7nq3Cgfz+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792248634; c=relaxed/simple;
	bh=LJ1oDgcpjuYINEPHMauzLbdBrlsK5e36Ttr6lbYLXuY=;
	h=To:Subject:From:Message-Id:Date; b=SypB02pestQTlNQSeMZ0PAz2qbEYnhfhMD2RPtaX0xPWZ9xvM7BerNR5gFKt/0EIWfw+0wM5Qk+OZS/xrviXWrL9rNjkQEo9KwR8vx0Gl3pkk/W+zXDQcj/kuFm728Jg5LV5j2pJKl4XmLM58L7MNQ3M1NK6IB6LMVs9P+HbkGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiOjNufV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiOjNufV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E04C4C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792248633;
	bh=LJ1oDgcpjuYINEPHMauzLbdBrlsK5e36Ttr6lbYLXuY=;
	h=To:Subject:From:Date:From;
	b=uiOjNufVJzS17pAtC1r2XlcsZEwwXKiclKaEejXPOJEZ64yOViwORL1Qzdx5K+72a
	 SQ0kqiDM3PSLIJpB2k5YbyzKeYocebXWW0dcrSbooYx57bp3c7TOH0g01l5scXzlBC
	 8RaW84oTk2KzO2z0tYNDAEJnbC5RDFwhYK+/a7WktWo3qAmGqv10GHZ+uJ1geyTf0b
	 1sWYnkXJDzM/awOYL7BeYRFTDGsAGMIiY73NdPYAn+CqgXzGO80/1QltI6sZ3/p9Ed
	 lENBLj3yjgZmrwILECGgFmuTT3T75ClLbXgOAEYcQu0PTntTOvVA3W47steJE2M83H
	 poTluIZGwOmbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E7DCCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179224863370.9648.3136008559858661845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f9837699c9121b6d330deb12b3b481288c2603d5cc6a4f394e658201f61278
Date: Sat, 17 Oct 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792248633
