Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2169F1DF72C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 20:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763756514; cv=none; b=GRB5m1kSB5Ea1RmzHmNxc7qXrXXw7O1Ikjnz0Klt5EV1WgF2XbxvZx6fejR4T8drwq6MmIIXfc41rANvcSc4/2/Uiy3mdfv+KgIXGXrEODcDQEFh2tjZozDBkrver7uy4utdHCqXHMTZa9RFPBK934/fufC3EPYnE995uN5b86g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763756514; c=relaxed/simple;
	bh=VMhjZoXojitnoT2bw/UuBkb9pWHiGl7r9Anz+s8/VVQ=;
	h=To:Subject:From:Message-Id:Date; b=GEhCAcD3d5AQ9wuhTCbIxyT143/MJE5rX2ND4TRFMGNuPapHLo901fqthF/45YU+IvG8TWJX/xklhXH3G76z1Je4yMILVKSU4Y+5G3yuA06yiwoSRTjqNnD+8Wf+sqD8VClRp76aZxl+kqRrbxcuplQp/oCjU5Ed23NwhpqaMkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vy9mV6Aw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vy9mV6Aw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F82C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 20:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763756513;
	bh=VMhjZoXojitnoT2bw/UuBkb9pWHiGl7r9Anz+s8/VVQ=;
	h=To:Subject:From:Date:From;
	b=Vy9mV6AwxP1eMqXiLlr0PHopnb6URQK10B6gqzUR9G31yAA+cWuv2sOT2mPX2pPPO
	 J1LziYCkHQlal7+GMGH30hEKhFNcKHJk8V2/Zt7BKDXzkCZUxMx6+z6oR6Qiji9VVK
	 p1dTgGq/sm/VF7h0UHCpVLYx9KHo7SzaeF5GffPfja1i6LT+3kE/22OYgwTE29YoLh
	 2yCdn2klpRNdTtZq5J83nTRO4kmcZHjJt9JpYYBqn8zmUlGYdfx5IlIDMgrA294gDN
	 xUpcZt9J0UPLlOjrSqeYJDJ9Zcbf0yi6djoZgodMcw9dBY2/WL7AWjfkSOTtVPryWb
	 UI5c001NwwAcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91250CFC29F
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 20:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176375651358.26619.2542922728757655411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d41462446859bd54b355bcdde03ef9dc666ee836fa7638759b18f2f27b0bef36
Date: Fri, 21 Nov 2025 20:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763756513
