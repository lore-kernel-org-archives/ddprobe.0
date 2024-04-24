Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378D613DBB2
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 10:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713954623; cv=none; b=eG9NKROhWZYbvvzA1YEGW0Od99SkFKHn1BFztjT/lEnu2FhdqQ436GrZ4qcRvitSzHgpox+dK/kxoYbcJj14fSsTMO6p8T9ui9CyyYW9fpkf2d70470FO4rnligaUpu7WWcgvNuE/tD2zcKQYRWv4VBvai2PFbJgCrTrXFmTmqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713954623; c=relaxed/simple;
	bh=HNS9Yoc4DNwmr7EFSENioUyUTNj3aOWj7rrdloFztFo=;
	h=To:Subject:From:Message-Id:Date; b=ZzI3AD+e0uCj/45auSJKz7DPyg2eYufsXTmqdwm4JwE7SNtdFqwmPLLI41CRx/CIc0TnlKyUJ4ZNJztFfw6tm930xV1bA3hxzNhgCssVdD+i15BlFVKMXRoETvMpXq1elQCk1cK0xArQU0eWpSqxX0cff4IdU2sWNvpgZv/Mz54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcFnh7gb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcFnh7gb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E2BC113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 10:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713954622;
	bh=HNS9Yoc4DNwmr7EFSENioUyUTNj3aOWj7rrdloFztFo=;
	h=To:Subject:From:Date:From;
	b=qcFnh7gbZMryzIrFUI7F+LI6dOjepjmXKgJFZoV2fXMa3SP1CzDJhPxJ8O6UNwJzw
	 6+M+MrM1JKXKxaQh3GJZYVL0FA7BJWPs876p1fAa3P6T1VEeTXECm2O+xKTA2kHwKC
	 +KUThcAQchIxPzQh+ofsp3sld8EzHxFpNJAzN0gDZ6wNJ6c/wA+TeTm54v2KN6XKHw
	 tftK2IZJ8lj1/+fs9oIyTcYASflxks/HSoV5iYi65oTi6llo4IfYaLLyENL/ZRNEz3
	 r0Mo+WTwYQ3fSk/wBejgFd7LVUxWlD0A9UArSfWXNViRg+ig5A3LhhgHJOUu2Oodfu
	 mtbiyBl82YN8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C97D3C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 10:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171395462281.13007.17307904354763902404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c844d6b0b85a366dec9ee0c0c78618ae40c8f41476e0a6e91fd02f8154f6ba
Date: Wed, 24 Apr 2024 10:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713954622
