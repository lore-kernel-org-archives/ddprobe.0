Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195CF258CCB
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752148795; cv=none; b=I96dEMG8ZpaK9aBO93butWVsAmmrL9EEcv5+IrWWH2zUQnNUpItKXzJSq6Hco7nYomyu2AMGcE0WX0YwBR+ExgecNSNBc3xuFKyUYa64uw4MATWIn5GkShreocfunMYlSkR5a50hGXLyca7pIxGeYkkPugrboByfTWHVAr+T4M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752148795; c=relaxed/simple;
	bh=hTkHZZ4hesIkttOq3HDXl0qMwkrxi5ysDavTWjhH0Xw=;
	h=To:Subject:From:Message-Id:Date; b=Yc13vO2XWeqICkGlALTfg3RMHb2ChGhlqkB/eTpOfr7HeXHnbWC23faJS2BwzEs8wPSgZmMLVDxKFlPSpgTwX+SdVjRcQou7OSzUgb8XKUUeXG4nOVDN5UqDlLfgd85x/LLsFq1m1D5qHOBNRpAlIK13BYed+tpl7eAI6gY577I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdc9NVKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdc9NVKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F10CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752148793;
	bh=hTkHZZ4hesIkttOq3HDXl0qMwkrxi5ysDavTWjhH0Xw=;
	h=To:Subject:From:Date:From;
	b=cdc9NVKgpQi3xusNI+iiOFkTA4oablDMW0A9zq+usNrS1UjzcOpbbFLEWFgySbPB8
	 luJ++W5P4de5JEwLew59ar6+yfREDU2o4oaWgAcXb2BGoKBQDJq9X3u9K3EuqceLSg
	 NdGIuq5MSwTSGFY+sJ0E1HiXFnGO36bcmhGmdFVioiIXsjqfYpTrRjuN6HUNyOlkEK
	 hoCG298LI+om/lxfQ7bPfdlmIAYNkvux26gmRaE24EaNOm0CesCAhCUDyF4syur3iS
	 EZHBcswAp8/WrdCW0IYDz5zoMGM6Xp5sQe/DpcUtrmM244gCXQQ+z0gC3KXjFu6+wG
	 k8uEAPswgUH9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE11C83F1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175214879358.9409.12122345814531443335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08e968ed9ea8a031c3a563b86487967b3e6b120baf1b894448d9283c2107664a
Date: Thu, 10 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752148793
