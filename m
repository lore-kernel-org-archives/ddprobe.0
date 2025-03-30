Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A03C184524
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743325794; cv=none; b=XIqN3WwbF3I1izd6KELkF7pNVziKegW7+obM8swMI08wmqcMtTNzhyU2JoyZCPtwa7g+n1plJgfVpdIBss3ZMz3gHWrbE3/eDv0EDeDDE1fBylrD8dBZlzceX3x9zuJPxQE6EZOgWUGL7TbTlaRqm9H2f0QTRpktUrgu4dHaN6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743325794; c=relaxed/simple;
	bh=1PaevZFDYLtWNVUH3jtYsBnqcvkcjfC7lWl8ikoaSz8=;
	h=To:Subject:From:Message-Id:Date; b=oBUJyytRKC2wmvODIDQmLX7D0a2b4VcYfcJZaxnbaqa3mjiIhSCbjFbs5mEyvXqFV4yXq3QDfCvz3eRIQErbU+5qmdH+U7FJVGcNwx+DZzSdz2NwZDVDCpaIJo1HG8d/fylFR7fsudWu//hBd97RYVylnA2AHuWaCrVK1kVoCs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYN26LiJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYN26LiJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66C4C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743325793;
	bh=1PaevZFDYLtWNVUH3jtYsBnqcvkcjfC7lWl8ikoaSz8=;
	h=To:Subject:From:Date:From;
	b=FYN26LiJusS9U5LcBTmQfJ0WOQ2MMNijCwJ6OpKd9BvbWKicD4ZBdpW/b0dUWVa/L
	 OOxAwATjM38t5t7ZjrMblL5TyopbQ1uflInVs3LencYBtHrUAl0cOVt9iVLSKcu9kR
	 +eQrribShVgbWoFx32E24UnfSpiByTV91Xg7tjSirDSQL4jyC+M4GbHww9tWJVIFtI
	 kzkplchlEF1ugqSygUCI56LPh9CDdQhM26vhSNVZcfRMtjSyTjuwFg9W99yS6NBHzt
	 wtIXyj1Tm/Ex35v3Bx1ZM7+4YcOI5zKL8pueEUBajCoH+KDDDjyPG9hXt1/im1Jdr8
	 b+9miRpupfbgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B04C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174332579358.19821.591382592521127170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5efb33333f0b33b2812abf738bacbd21ceb6c10294f207cde0175e806a1b47ae
Date: Sun, 30 Mar 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743325793
