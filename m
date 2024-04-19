Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C9937C
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 04:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713499763; cv=none; b=gKE9GNJcpFJD+L4wYG4FBdHB/Aux13h089m05pg0CvM8UYIS7zYyEJvTw6NDEoOazBh36MoGFQqSwClqwB2xgCKcPCc3xqSLa9+uJ3KNVZo9TQNnzw/y8UKp1KeBo6Ucjlp99tahmZwow4AHseuy3hr9/p6be70o/v1CVe+YjRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713499763; c=relaxed/simple;
	bh=iOJ4eP3aUWHuymISIvvVhJx5GYf4orDXRcblkGokLpg=;
	h=To:Subject:From:Message-Id:Date; b=V3NcA3LSBV6X45t3u2GCewBcD3cIwPzZlgKjU0sztnLLx+J0NABTNFTAE4aM4V0m8mlO84kFN75j/P9M2wYdo9S/1Q0SC60uEC491PZWLGNTCs6PqXKygnWmAgHc/oPcB+yqvP/Wypkhx6ki+snO5tgOzB33UGQCegKQyIGfWZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8eoTsBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8eoTsBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3936C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 04:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713499762;
	bh=iOJ4eP3aUWHuymISIvvVhJx5GYf4orDXRcblkGokLpg=;
	h=To:Subject:From:Date:From;
	b=r8eoTsBTxRQWhRVGbYRXYSdcs5/Eewp0/j1ITtzGBVg+cEUpj9zpDR7IERucMv7jQ
	 5N1NxUFIdK6PPDq6cwqbnh5R3DwsF1+IFGekAl8qIl/cRoGh1Tu8vkguV8Vx42F8p+
	 mPyv9pfAlRPwI34m0RVIz+sUi72LBQ1+CeQyZlMynFKdCVi3BXFYmPf3NzfXyBSAaW
	 /RkkmbAYR4U2MbWrepsPIgaSw7tjpIh58rC3T5mSGnL0b6yNZ3RD5mv6PgcHEvBwdw
	 caWI7BVVlcR57kFSPqTDQ7IEGPfoK3EtNMMh7+f/TmzxEWEzTlyTkyFl4RKmP8U12D
	 q5ge1ksGuYyvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8603C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 04:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171349976279.21406.12088931621963685877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26cfb3074fb2c133d9f47e269f241bd16b0e0a78d5c5065832e8a52634672ef4
Date: Fri, 19 Apr 2024 04:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713499762
