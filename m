Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCFB2FE05F
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 09:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760348994; cv=none; b=ISwussPyU8zgoiWmGASwhUdxoWX8KsbRANpcMtCMKRyJ3fzUhz136B1loc37TtcW60K+NYgm76JjKJre/Y7r6fJNgVK5ZVCMvv3jMTs77Iu02DeyGbuRN/yDZpfWM7ehHjMsLxQztanSKIDM2rw8iYwI/yrgxPzufqx2Elmt//U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760348994; c=relaxed/simple;
	bh=P836Ym0PG68uQssfdMBDP3Hgru7qgTqrmWw6SyighXI=;
	h=To:Subject:From:Message-Id:Date; b=f3It01MaAU8srKPvPddz3mhGyiT4FbYqwgK9N/06APOvrODr0ZM614mzbOrzWh7V7NI3pUAB25zcqdwEI7H5Mfig5gJhPntk/eHu4sB1k2HNwzHTcdP28IJX485+FWycfGM6aSF29rgFZbJRCiWufD3pi05dWa8xoerbTVG5PhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTL9Eu0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTL9Eu0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A084EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760348993;
	bh=P836Ym0PG68uQssfdMBDP3Hgru7qgTqrmWw6SyighXI=;
	h=To:Subject:From:Date:From;
	b=bTL9Eu0DFzeOIEkb9q4sXFZtq03uDRdBuqpqLUMd94PpCiTl1d7wVgfz5mgNcpEKS
	 RenNFyDPWrwJdAPKEQ4pHeEgZ46ZKbeola8K9Mwm4r3adHEFgrEXVuHp7xdg6KZFPW
	 yNc/wnt6zXYXei2vHb7QUWpBtJKM0qL1Mrz23zFMaISvvn4tutnC14cuvzveSxynlm
	 965Om/SJpXo6IY8H8d34hhYHM10BtSaV8BKjst4eoAtDHEueaPtXQxsx6JciOrOrzh
	 Ye/MZ9pDhl7OvX+RcZ7WnhGGJ5v/+NQeAhBFJiSFlnxRAsAlV6X3IhrsAcN/Lz14NK
	 YqpJ7h0EAKv7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90042CCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176034899358.8601.6852390843639254350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9879978cebb8edcd649a9d51c284b902a6a17a667de1d2a0c84418b0d7aae4a4
Date: Mon, 13 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760348993
