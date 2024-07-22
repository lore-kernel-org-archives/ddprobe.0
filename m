Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A691CF83
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721673354; cv=none; b=UzbjFRptY2WeXRWmFIx+PS6Gw8JxFinNppOJu0bgEJUZPPbnHtdp1XmSXs63Jx6cTw6KYlmon7D+Dg53BlZj2F7Sh6wJwunmwwPxBeUVI57SpPo6IFi9Rr7h364+SZ7sgGfy/+FSJk05/gNEgKCuLEOXnQ0RqR5TFBUoRxejDnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721673354; c=relaxed/simple;
	bh=qst4iEYPbagxZHunck/YC1IcEERqpu+snm3mMkNsZrI=;
	h=To:Subject:From:Message-Id:Date; b=dlWIbxpRIYxXCfOkEbN6DNPTSP3FK6/GWPT5PEwWCmvMGkE50C78X9M3WO58Tsw2JoOsOeJRYnIAM8Be4GC22W+7GoNuiwr1HbR2trxAnrv3hVS5yyrQCHjOen7/WlSSI5xbfsPAs2dhUaNLuvbUm0mFkrQqKNw0spIdw38BQX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbTUtlHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbTUtlHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E7FC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721673353;
	bh=qst4iEYPbagxZHunck/YC1IcEERqpu+snm3mMkNsZrI=;
	h=To:Subject:From:Date:From;
	b=IbTUtlHkaxRVLqZhURJWW6i5gbem2I9fQ2kqLo17LfPwJyXB0NZO4o5hAEXOwI9La
	 KPB+zHATAT2oIPZnRSO9uwyEe36jCKAbvTJCAVODX+4mnVZkx5N6+UDe/2cZieNaBp
	 Ek0V7i8xVq+AgqqZ4eusGIZuQkT1V+64yeYBMSFRv0fbjjYTkF9niLYagxvarVnWP3
	 K72rQ+2e3Vk20Mtr7QBzmO0rqV/8nV9QDyZt80ViRt/Uv+jjiGn0Cd85cNpmkq5oAQ
	 WWAdC5eX6EiqUuFJQEy7Bgc/07Jql2/8cUDQybHbpja0sSOUm/VIJi5i0wn/STgywf
	 brr9+viY9rJbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98259C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172167335361.12223.9590837334956766991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ef95fc2b25e56adfbb2e4a8f1a25b76b176c0429ed151e7ec9f0b6161a5ba16
Date: Mon, 22 Jul 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721673353
