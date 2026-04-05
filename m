Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BD640DFDC
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 04:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775364334; cv=none; b=P490kd6VM/U8luLOqFXpdIA/G+qatIBd3o5Y6xyly1fm0mKjnm3BKMU7leHwcz5pfWweyjsVAEE+bfIT3UUQQPjzNRjTAYg2E0RgEu0YqaarAtYcIPS3HS9T0Pyx0BGvpK5heDHQGOIDO91PcfRxY+qyLmjcb/RT5WoM7hAUT7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775364334; c=relaxed/simple;
	bh=agPfUMYegQB3W60SCIzO/R9Q8gAMcKqWCOUco7ueZpk=;
	h=To:Subject:From:Message-Id:Date; b=qcL4b22D8Yj0/WuftdVhwQb/BWlP5loIdOjvFpmRD2Dyd/YAvE0b0NqV1RoMpHIfKsrk0gIRM99gDnC8tUpjyBtYniChqReieWuJOpC7bEodhU0msl6yEhDvwpn80FtYg9QoMEwv2OmBixod8kt3vS0O7B1YuCj3caZ69iaPcpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezWFqBJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezWFqBJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC95C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 04:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775364333;
	bh=agPfUMYegQB3W60SCIzO/R9Q8gAMcKqWCOUco7ueZpk=;
	h=To:Subject:From:Date:From;
	b=ezWFqBJg18YgDIMMULNvT4gXuqafjpETXt+b9S9qRYJCC82G92Rgua5NFzm5oiL+E
	 p/GgeXcmjoXPx2g5m+1KJ3tBAwNsSPcEiZW6AdNKI1FpIr39zwVP9jENqYdy2q8RsR
	 rxkCr2A09xVZJMjgcmJ7Ya1R20bfsMwi6SNuApyt0mvl77vGF5ZZaOncA5oYBp7+cG
	 VpeTgblqEJG5UR7SnLt9uKBV9PbqAPLo7i016ETrjeT4qpErJY43oxThKq2ymstwRc
	 nWMcXsP5JRDRcHEQ8jik1nZLWv5HsrKaQlJ335lD0Gs8TYhrH6uwn1qHVjH8Pi5gR/
	 IAgp5d946VyiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B228AE6400F
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 04:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177536433371.9736.9180638795456781151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29782afbb97790a3210f8e17cbd6c4b9cfb642747a87f8ae37e1c3f0be8eddc
Date: Sun, 05 Apr 2026 04:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775364333
