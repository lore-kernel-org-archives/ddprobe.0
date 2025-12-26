Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB39487BE
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766726634; cv=none; b=GwBPb8l3imn4iZXX+d+0IDG9wArLOaiRjFPncW7/TKcJKCJ8BEpmoNE290h98a+cjsWbLjM5dH3pIra7lIs6IeeRqoI7427sJRrtXUBZwIFkTq6Ocb8U6cWHjjpdIE56cLYh+Kexgay1qNs7HPpLYBwh2zrM/0lYBfU36/VZchA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766726634; c=relaxed/simple;
	bh=7aNU54QFe4sxoox7rELrwGepvjyGEvGBNcckvfcaG2I=;
	h=To:Subject:From:Message-Id:Date; b=dOo7P0vnTouIzoMKxm/3ZmLTo2smD2fZbIRa0gMrGbane+BnTUBoto0IK2/zVIIJkPl+DT8NKezsg3V1YJ9Jrt5arZPN+yK8M+D+FEfGa+Ebcd9DBk4VoSHROLJ2xm5AfZZWUwFOJvjo0rGUTEMJec9F7DSQhh6SiJkVDwxPxXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0eIRbad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0eIRbad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABADAC113D0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766726633;
	bh=7aNU54QFe4sxoox7rELrwGepvjyGEvGBNcckvfcaG2I=;
	h=To:Subject:From:Date:From;
	b=j0eIRbad+r1n4ZLVY9tJknav+iGITUIsaDVO1/CEDV72Bdo5oAMqNIjiRaZCN8o5C
	 AvGXVgaWQsxssYhiAf4qQWpP0cZfc8PpNuOwnQJRFktwrRqJtPNLvGE91bFrPeCT+K
	 hqG+rSdETgJpTiqOTBgnjMUpLrfvSod9fACssNd+S8niFF+wFK8rB/32bwtEbkzCBJ
	 iAiBOT6uuc6VlW00PAO/NcG5ItgSPdoANxw/TLp/2HjfeYm8lSLodhOC4A3jPoQ68j
	 A31Jbhd353NNyXnKfT8qb9h0BuO7g9/15pWWHKJsQCVquJtR1SxJx2s4itA5dUWE7Y
	 hQTWRXOetOe2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970FCE6B26F
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176672663359.328.12291894680221556686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f7eae9b2a5eaada2841504a10d5f3bc9107a18d94655a578125a8bf3488420b
Date: Fri, 26 Dec 2025 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766726633
