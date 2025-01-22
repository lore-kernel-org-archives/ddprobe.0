Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B94D13E02A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737509754; cv=none; b=I3ag+LiV7+aAgSWhYfSsiY+m8HM9wuoQZYxbjKLEklVW5eH7wkKMY0KnFDnT5tZ9a/Az+OU+FFKkbVKtWGlifa2hS9g/Mvz2vnyuFYbmQtUgJSX3BKCZFQJKOjk7jPQKXfTOU/Hw0xjKof3va2Vq231hbAPXYjAqMBRamsaeJNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737509754; c=relaxed/simple;
	bh=qqDSu1F+2CCLv2DiyTWHVvyQdVOlvZzmxIXc6IFE1uk=;
	h=To:Subject:From:Message-Id:Date; b=PSxXoGxEXy3u6T9201EIu75p9gBkNTgmcD9A5+g+Gx3WLd3GD8yRCaJwg1XMn3ebIBhtQWL3YEdU7wIS/5YmYFLsLzromJ4iyk7YMxEmzJ7/z/TBQBOUavFStWUYryRkW3HZjHeJIK9f+X+PQsM49gf+7WjNx/yCTQ6K+m49DuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERDH72xa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERDH72xa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ACFC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737509753;
	bh=qqDSu1F+2CCLv2DiyTWHVvyQdVOlvZzmxIXc6IFE1uk=;
	h=To:Subject:From:Date:From;
	b=ERDH72xavLdIvaJrLhJbpNx144OnxEMdE295VxjZMl3smkFiOeH4U8Gh1Hmibjyt6
	 ZFETo8Tqs4VmFFZVeXl3c0EZqiO+Dv/R9+voPMSi0LE7EiBprwsq/uUeuiu7o2okZW
	 Y2y5dkvJULB77UwtD/8lKKLA2sRsQ62A81xHdtI5jHF3aql7XyfxN5EOOPSqUInFXT
	 PxZ6UKcdKI4xCg0VPOdQsc4R4rbyN239SMF+iMyyAoec1v+jYBJAXEHVCO2py8vZMZ
	 gjokrU+6x0oqMoRDuRsO0LlZ2GrFFssjw/yVDrNA7kJJgqw7+Gs4Vg8eXcBDf/du/o
	 kSD22OpKUS/dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E53C02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173750975359.4521.18395191782633556825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e60d195353a5459d597b5163a8be1a5bc7967d4ea2a0df05af5638d725604f2b
Date: Wed, 22 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737509753
