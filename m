Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBDA3D75C4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785422434; cv=none; b=aGaTR0j2tg/sgXbX1IzqbRekoCW4aAePsOcpJDgtsRT3lhpuhsFKb2RapVGOzHRFxosUvDCiFWKRMJbsWeNEOlU1NAkXpaQWE8f99m+/RjKUeiiHlnzBtgoMBtIxAY6OQ1pre4Z50E5h8N0xfkdIwn/ecs8/YKMfSvqqVRAPqqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785422434; c=relaxed/simple;
	bh=vOHmgPYscAMourHmYaM3ZunvO/WwIOnDTEjfvVB4Dds=;
	h=To:Subject:From:Message-Id:Date; b=MVnNpNntzg9nniclD0H0uRudNrNOuOXgaAXeqtEXNS68bit6mVZpO7m+Vtn1hr9HybqCWIdmMZUwp4GQ2NWJEK3SbSBxgDl/U7Txx6Bf4ESBvolMJ6vu7bhVEnAjgkCWPnzQqMMevNmEmwhVy6GOYvVFpA5DinqS2ZWIQGqfgzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UaSfunqS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UaSfunqS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55E0C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785422433;
	bh=vOHmgPYscAMourHmYaM3ZunvO/WwIOnDTEjfvVB4Dds=;
	h=To:Subject:From:Date:From;
	b=UaSfunqSfBXNF+O8H5024j1AznqHwoIAqcR1Hmq63Uzk1BJSRv6HnCbvMX72ueQv1
	 ksT3B9tf+tj0aVw8zbway4FEhnAL+YdraMG7urATN9BLBRw5S5Gh4YUp8Rp59hRV6s
	 xoJSulQFiMvmNCx+gKqWFDc3OM/kWbUfkOoPCCJMXr1eTJ/8B2UvFnAS1B8A3jkPjx
	 N7PJMQg/ERFWsL7Sf4dIZrcd2ZGZGYqkQikRn5DnDu2DLmHz86oQBXCF37spgqtQSY
	 hHBwNqNjrW6Z049l5UrwUThwMDquJ77kLEjR0giahVcvOVRKpUX4hg+gGbvQbuG/5e
	 HxyZtALA5bajQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E87C55162
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178542243371.31801.3514034382347106744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c62f336777c269f46dc2005c170ceb92b471f20a7b7059c3d449f67d71e86f40
Date: Thu, 30 Jul 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785422433
