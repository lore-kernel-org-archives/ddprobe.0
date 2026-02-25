Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472503D9035
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 15:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772032494; cv=none; b=LZ7PxLi/VlyVjtJ+9lV0HIUlo+Xdr3fEclaF9ZEHktVyTMCWnkKccl5DCYcJp732l0vxV2oXNIZ2gD1SU1B1F7JKf9mq7/7Z9vVQ1jCkf9ZlE/gxbPHOD/uszHXGyKZy7MtghkFrCxTPWheOPoAH1lUoIIppjjMLSsaq0jsE/Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772032494; c=relaxed/simple;
	bh=CoXGbKPRgrbqlJKddGJyZakvi7InTf3LCHh9wHVhTIY=;
	h=To:Subject:From:Message-Id:Date; b=Ia6f+GkqiLx5Wf30qRwsN0GR3hF5DY020q1NYzy6brCxFYLxHZzUwp1K2VkZQslMI7acNtAnbzttFQJPzdZG2RqS0G5cdddOExzysXD/K4GKd0u/GUOyHz7TMTjsGUEFl+mXHzja3NR5y+B8odP4MHxOaCG621iygghrpJe8wpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiTQOr8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiTQOr8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54FAC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772032493;
	bh=CoXGbKPRgrbqlJKddGJyZakvi7InTf3LCHh9wHVhTIY=;
	h=To:Subject:From:Date:From;
	b=CiTQOr8ovKke31cm6IzS4ImzZ1QfWJn46meUbwsOnqFjgZMzXyt/VaerwgdxdtiV9
	 e84OMBj8utF3UOSPpYQ+8b02BMX9vNlAhmURF1SxOCW+rzwX66ozYNm6OMVR9xEAvE
	 Q3AhHu2Mot8D91utrfItwjLE9Ao+49W0PPuESiM710xWHk4gzee8fGY/TFrGn0Y1Uq
	 WphXzAa7iHmOr5nhW0pGpn/AJIM8rus7HC6Ve62vqDTYqQK7HgaCUtIyNfczkHDROl
	 QO6GcaHVevD8FWB7VtiKuwxvaN7gpdScg7Zz+XS9h2pBZ5Ky8tKzvrS9peNMLFHBfT
	 sF9C9bs0cLv/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4910FD3765
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177203249372.2892.8203414670895580540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18ec6fb9a1bb6d9a342a16d5561cf91beb178aab36ff3c1dcf4b7020c8bba9cf
Date: Wed, 25 Feb 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772032493
