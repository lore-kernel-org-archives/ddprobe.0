Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6AA35B656
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769657633; cv=none; b=Hh2WOCiLeeakopZ0CQ0G+FUGhCbni/LRgsm/4dnRBvZY3Cw9wzIyTioiTUHAPcbmQTFMIeX/eK+hqS3jRyNFRNdmX46m8qU+jMHokrW1qaT9j8TzKiIbEw+3qqdQoClwT5PL7dFFiH1LvZgMFqiPQDEG1s8EZxIKTWCWLwS3/E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769657633; c=relaxed/simple;
	bh=bXDbakkVg1njr12PM5zkKdEhREOipWU3evja7YpwbQU=;
	h=To:Subject:From:Message-Id:Date; b=GR9YxghVfs45Frt7zvTsbZLJpEVxngWjRmHR2OIVa4kVEuieGZIFxKCSdhtU/rgJtnM+zcGuQ5Hs3jNDfGPv68aOLuqpZSa52pPSiklZzSqy9U9FCtrHZUWQXu5vrlBSnEzZPxEYosriQlxvVhOSIrg9sAl0m8c/ujTJyOPxoP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DnQ9QcXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DnQ9QcXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8029C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769657633;
	bh=bXDbakkVg1njr12PM5zkKdEhREOipWU3evja7YpwbQU=;
	h=To:Subject:From:Date:From;
	b=DnQ9QcXlrb0wYg7pwt9BP+SVXmTpKBLJQdRUgsqSsV5FEEGEsETt9R4duCDSmiLg+
	 kxN0HVdwK0T5xqOI88AzR0VpGP7otgeQihgI7mhVHEl+Ip9XpkYGVyYrgazsUOb88t
	 /jFifvtXAMF2aXwsNKBsPTVhQdEiSOBYd1a+6TH5CMzUHsbx1v3wt8U4sD35KOYiBx
	 vWnQrxYPSWe3B2TB6hD6Or7OZ2yz0XZHIjGJDslKcOTqG0LOE1GviKX3V6WG3mGRm5
	 y19rzKLIzJDUnaUhb8Q/kYZmOPE2ebB/agSxhIEJls04WFZeeFT9vo2cCQ+pobASNw
	 BaqDOy3PaUcTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9249ED46C1B
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176965763357.5208.15503277348082577012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2265af7f7f4eba5ddba5fd3b738b8599cacfe8e3aa753eb034ae241d39c6c9c
Date: Thu, 29 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769657633
