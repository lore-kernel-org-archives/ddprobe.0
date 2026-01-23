Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BB78274671
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 01:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769131434; cv=none; b=sHsfmGrzVC4HxMFeBpaFmBTw9a9SUCN8tC44u/QoVLCx4UcwfZG4zFzQ9kXv8yO9RPRr+LYtmR42Uxfpvfob0713M5rxHpzm63IcVrv1yAkdaYD0LsshJQfIDK3egWU0HEyJL+LVaAx03M/SuOi59yFy5wfiofG0hCWlknvbxng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769131434; c=relaxed/simple;
	bh=CEXuifK1b0OBpiyd0EUIbX2IDN+zGOr3ZthMxDNt0U4=;
	h=To:Subject:From:Message-Id:Date; b=V9cRCKGYg8++ASizRCCtjVSd2ef2P84BE7C62UWQJU0Z3/F3LZqRK763KrGjfZcsrc2PH7k6qbzjxUfmlaSpFufEc0HtOZhypGuvHpNvKtxVWGeJXaAk2trDVkwdYioahd4k1mh/wNnTXg0MZul6n6bjUIbyxCTnFJYnddPXjgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDPS964v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDPS964v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFCCC116C6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769131433;
	bh=CEXuifK1b0OBpiyd0EUIbX2IDN+zGOr3ZthMxDNt0U4=;
	h=To:Subject:From:Date:From;
	b=tDPS964vMpOWhmXTDhpvdQflKIiEOIrbSd1C1Gw9Pll++IG9+dcSqR+H2n/hj7d9e
	 mLSu6BN8TYBTu5PrBG5TcKN49Hl6Wsnajk7iz2AgCzD7dSHFkErjjyKI+Vk9Q6lfxr
	 e4MXMbE0GQ8hLa0zWz+7SZyqvbXxxmZpvbUmo3GKLLp5+i/27aJMLeAM2iAzhHpQt1
	 GvPL/aWXVUe0r29py+1WRbvVLPqdK8LudvN3leJTRT3u7ri7EouP8uAE1oMPSkBOHR
	 90HCni1gy4cEDZ8GqGi/s78O2ZLKafyc6B5MLufBTLY/bu8dQ5lAv7+fRohbOkz54P
	 +wcvrFWpSwE6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99912D6CFAC
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176913143359.31615.12386520698662630772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceadb9e3b468bddfbf50a839bc332ad9bb02f2dd24a7dfcb7bd9c0c8e824a236
Date: Fri, 23 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769131433
