Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629651CAA7B
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738507554; cv=none; b=cRNuZEXBXfqCPgEOZ+5xqhOs2R27i3hOBLyfcRDWi0ayWlQY80ks9ul542Fcl7BlTx2l/J2QOP9vN0ySsfAjG+JXDGmBCYM+TuJY8sSjPSRUcczVn9Pl1Quls1Ys2i8kcpl23RBKrx+0fvw1hvZKxBtL/erJQJoq2186WFvGFFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738507554; c=relaxed/simple;
	bh=RT9UwSY+DiXfBXtAU47EJbS8l9KL8+nN65ZfRmQzYaA=;
	h=To:Subject:From:Message-Id:Date; b=HoPPasWl1b5K6BVG8Ma+7CjCmcAgZruv9NlMEmK5igioVdg0aZZ7JnCObzDMuUgqbuk9fK9QP/znhOYZsnrpONGJF1NnI0XM4ZZvbcp9bBijEIydNdLzhwr5eLS12kaKMdb5XKy0xpqxE9Q9CIOkjce7y7rYZTOy7e613S1U3OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3VKS8v5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3VKS8v5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FC5C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738507553;
	bh=RT9UwSY+DiXfBXtAU47EJbS8l9KL8+nN65ZfRmQzYaA=;
	h=To:Subject:From:Date:From;
	b=s3VKS8v5tQQhNuNSDkKNHx9tyZZSu0Ap2wU8Ayfkyzt3uHzda3bYBeFu4fgdg4v4F
	 gS6eKJ1X2Fvsp+3/MHipcI8XZx3IgXsKLWomsVuWhgpnJ3c+qZ6rN+++smlm8b7Wtv
	 K/gVR9rgTgLxhxEtDNbCQaAz5KI5XWTtp9o78EwdAQ5i9mDU/jxdslWPoWsFtbHCL7
	 C16UjogWIPShwc/QuAGtXBvJUqLEjdwOlg3q0dgJXlJySBwLr2mtRklZ3rJLhQbeyw
	 2AS25fKrUlGb3wSFcANRuHl5LAnNdVk6w3gYyNpSGzOUK8n1YAlOyJ67WQ7Yd2bdt7
	 E8IIkIJo0LS9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A53DC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173850755359.12073.11769357208996035245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7085d06214fe4a5942266391a26e70599f419fb539bd2beab506eda8db58a5bc
Date: Sun, 02 Feb 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738507553
