Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626E612FB04
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 16:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715964743; cv=none; b=Fwkv7qtcn68b7sXJAtiPukh1JnVoElWr4uLADpLDozu1drYDftZTEQNkooyopd4yKkkKmUGcV8VLNEYsVwysVfXk7q4f41yLNIqh3i/NP0JCsQGZtQ219d7cgVXLqsPNoqT70uaP2+rpTaYv+ywskDwK/zaU/S14OezKguV5z3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715964743; c=relaxed/simple;
	bh=AhmoNxh/Cj4pvaSxnQE2bMNVEVRSTk4Tq4LmsOW+km8=;
	h=To:Subject:From:Message-Id:Date; b=Njwdq2rCAlmuI2p5B45SdR8As0dZMmdkqFTAg1Wi1wvV3WK4ENFwn9KUi/Cpz8qUgv8LhmEZJHpimdcF9u2yujZKv67NaXUGupt79oszr4+JuTjduBsW7gjnxtWjeScr9GQFh68riWR8zfNrj2cxoaXhTjBGID/IHo/R+ABb77Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqQ9GO+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqQ9GO+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F47C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715964742;
	bh=AhmoNxh/Cj4pvaSxnQE2bMNVEVRSTk4Tq4LmsOW+km8=;
	h=To:Subject:From:Date:From;
	b=IqQ9GO+54EEvEDXQihMtaKCcs21KI5PVGa0yDCpEsmcRf9Axu7Wco6EiK2saQqGpc
	 09IEUAO7QdoBgvl6qc0RokdWZA6HVEh8br10cnb/VxhluNaSiBCYr44W0pWpjIY8S1
	 BR4oKLFvRnGlPgvXZPQFkitnPheFZjWOLRV8pC8EjI9+KV90cgtSjJht/QmlBRTyNp
	 LGxD8i4seyElZtZJHvqYQtCWlKGI0+ge+hqJZmaySx4kzX+nJ4v2enBTny+y2QKPYD
	 GL+7f8T7p5cuqh5qBu+B7uW+Zt6K+m5Bcar3UAU97uXDMqqCg/EZ2a5vH9PER8p8g/
	 N29abrlxe0bNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE4EC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 16:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171596474276.31777.12635177566275983138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6774ba2f0f6d689382bd9699e39ace841cf5f814ae5c91e038c2d02da158fc97
Date: Fri, 17 May 2024 16:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715964742
