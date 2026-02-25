Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EB41ADC97
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771999494; cv=none; b=YaaQskw6LIz5jSGb+gFc0yxQWhQNIFeqTkRi7McxHdoReZ2mNRya3KUtEnyGr5Z6wIeC9MsF2Om4LqqPoNjtts0vS9WLopdg5jaMjExD90WhlcGPhicn6DUXchXsUFh6IXpbPiyqxbLLHjZw9rxb5N8MJ8LTK/l84NCgkbNLLDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771999494; c=relaxed/simple;
	bh=bQmrBwaWUBHrPcuCbWb2jV7yQ39Zgvg550BUiq3KPME=;
	h=To:Subject:From:Message-Id:Date; b=msk6x9LFqKlix8vpLH/koLwem9KLQ7MX+nw2BPsFx3eETWI3J2CgkPmpQgBABXkvUl66EepNj0Ldp4SzRkZbAL/umD1W9hOTThLwW5FN/5LPOMYtfvXv3+T19EEQrmnFIO5pwIC3MENRGfWX/rtq4K3Nl6RDOUkSrkwAJPKnTXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKCrJdal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKCrJdal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF08FC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771999493;
	bh=bQmrBwaWUBHrPcuCbWb2jV7yQ39Zgvg550BUiq3KPME=;
	h=To:Subject:From:Date:From;
	b=rKCrJdals2lafuSpmywPDB8M6krnWqyWlTjs8idYX7ihaLHDhmE5hf1DBIJx9sHoW
	 yZ+vlBD7F3VMoQzgSBmu8sH3aV18Psb0UybqWBMddBQo9l+b2jhYwCT0wQjcm0TcV0
	 Qo0CPcz3HO2GtWKrS2wApLNW60m4JjSmdQVa+E0SC5v7pe49yRxVO/Rqy6T1dbSQhX
	 q0AVOzr7p/UWRj+wptblKNFqIrZPqXvVTEOC2FnD75ZkIrEKWLNZ95DN0qCOU/DQfP
	 CC2ZDh/2LL2/HCYeyzzHygQX1Jc7W1+P0d3V/rkrDVND1yPqKN2/aac+A1hW/Jofn9
	 58zwXbEWdeafQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B52DE9B25A
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177199949362.19655.7719898122587004853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b0cea8dd32bfade36d3542b14814403352a318776d93214b1b6f05d2fddbea1
Date: Wed, 25 Feb 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771999493
