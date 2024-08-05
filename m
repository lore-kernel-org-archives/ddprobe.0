Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F27F14A633
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 08:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722848154; cv=none; b=vF1BObPTjiUnErfOwC3uM98bBlTEI1M8sba575gvr0Vj/ZCQjmY2+JIS+YMcb0zUdbk1T3SJ5dic2TqsOAazpNcIBpgSGxwWfLaROBaBMuo/NpV267V3w3a1rqOZez2Qi15hhlPv5rEVKVk05lwTJz4uXvGETKbFhz46rY/wFI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722848154; c=relaxed/simple;
	bh=31IMflL0Pm5w1SWvzmgW5wNSx6uv8/Syb7vH9VlYCTw=;
	h=To:Subject:From:Message-Id:Date; b=sci9JGnG8jmckgGyAyRDkB3OUjSDHYBbErSeEETIKGmXPoT0QYdedHXt6xy501gyShswqzb+dQ0bp3s/wMYdZAKLweUcENBrEyB6uQHe9LA7i97YrNYNxLYCl7Zu9UhDn8UIbNQcbF/nYZ+/1QL0wt6EV6jybv7VmVjRiJGVxlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUo5mDJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUo5mDJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEBAC32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722848153;
	bh=31IMflL0Pm5w1SWvzmgW5wNSx6uv8/Syb7vH9VlYCTw=;
	h=To:Subject:From:Date:From;
	b=pUo5mDJBPK7izaIAN27vseGFLOpqxp0snImoKlTqVHCocfQETAuprFIgGDNxRk1Qy
	 tpQ7k00TSmXKxocGOHvAYhiNUMzfviE6ZXWwZPDK/6XwUlJ5OyX1BkQVYFh7klu9dt
	 pCrFERSEFswBojxgI8Dv4khpGOs96fljrzT3CUlTsl1OvDskh68AeUy0Fz5sfr53tr
	 U8WqpA0kqvI8lGXtRvZ/lrkoh4AwvaJJQkreT9V6+9/tpLfkKwSt6Fkiq3tUat7uGm
	 W85HD9pvqQBohgLhMv1KSv4dCPE/x/F/hGHu7N8T2g/4VroX8jec0w7FeCRNzLUa2v
	 QQCHXGSY37Vgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7B8C3DA4A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172284815369.975.944572655087731676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010f24b7facee41010090fbb3f04d277c22cb28491e39ee775e571383368dc63
Date: Mon, 05 Aug 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722848153
