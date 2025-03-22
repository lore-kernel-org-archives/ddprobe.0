Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B02942056
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742626194; cv=none; b=ldy3JEyOlQEQjUjp+H4GlcSFJzezbpn9TunWLXKM1vUdqdbnCPVepAldcQk315hSWZHu9DJAq9yuMPfNLvSiUDdgvtEARx/5ohx47ps4xeBvisq/fOkPAmGhZO1HjRwotsX5MbnJee7k5mzgPXC3+BuskfeqfqoPIPUF1maBi0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742626194; c=relaxed/simple;
	bh=aVTY/tR2g98ZzPwW36nXy2ldWv+VZVQ+fegX68dtENw=;
	h=To:Subject:From:Message-Id:Date; b=B8mc5tmNs0ienuouBGQ5Nw7Y7NB+9NMIi2AOcdaptX58WQCKK3dl5d9HrJTAsGg1jJ0pgGzlTqjr5xrY0bsoZSq0f/54gUlXpd4AK4mFPuwj4MJdm3czxTJgP09WeqdeIv5yCZFx+Tgfd3HJN+QWtP6q41iAXY0zW33AmTAsmwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Op4QIZRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Op4QIZRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47E4C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742626193;
	bh=aVTY/tR2g98ZzPwW36nXy2ldWv+VZVQ+fegX68dtENw=;
	h=To:Subject:From:Date:From;
	b=Op4QIZRiOzrs3beel9HxFvQ81sXW5W8N1uRQX7nN6qQAXF1fs6Wm3MhDPIf0xk+1E
	 j4k5gbbeAzIKVTks+S1XdTUctp+XrMutm3q77STe+UaCwbgQOFOfKuLFJ1TDwnD457
	 +g8+aFK4zLYH1CmlTXowdYJ3J3GI7U+YZwbhoCfZEtgd3HvPIA83ctuyLjSaXRWj3i
	 ps+Ddae1z76lALOKvUNG2Ti/TvQDBvSKiKDJ8uig0wB/sR+ksxxZ2GgoGcV/rTEk0j
	 NIjkAerDSGP1Rh7fDyR8zWzUC74n6cfzbOyS+QSYZamxy2AEg14D39eFL7aLa+rPQx
	 Q/4+DPAZwh7YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5921C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174262619362.16287.6587740455425219112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0d2f6301cc787cc39e05287ea9841761935cb0516f3e38008e47a28f218d70
Date: Sat, 22 Mar 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742626193
