Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4221FF1B5
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762691994; cv=none; b=WzZpUgYJlGJXrfZyCextqFNdXZCOWTcyMheeF70rzwRmyNs8SopCoF4WntZwHRbyCriGR/KX+bdPjN4iIJgsbsszKawu18kyeJUb09aBrLSQ0WkbimtB6JbHa7RWe6lVru1B4moMjQbMNG57wpt9TP/ddzlPhxu5ysNVCXCLNU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762691994; c=relaxed/simple;
	bh=zQE22gNt3KTHTfpONXtwbRslvTJC5Tkky1dSTRX96XM=;
	h=To:Subject:From:Message-Id:Date; b=CCzZoll+jl+bBZXzkzIfRERZ4Uhs3yhNxp1B1GL7dMLsdTqP4fUp7fSipUAU1d3zx9AaX9PAaq2mf4LStwLDfmk5aoA0HBmVqQ9pRjSQQ9gopJRwHUO82v+MW5crXDJVoE6R7+XnEtZ2jISZtdyJybzuBCW9s4eCyTDraINsu6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQLv9K2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQLv9K2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AB97C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762691993;
	bh=zQE22gNt3KTHTfpONXtwbRslvTJC5Tkky1dSTRX96XM=;
	h=To:Subject:From:Date:From;
	b=kQLv9K2DsnLK7JCM7RDuGqI5eTZOyglwCCTLj+xrRqD0PIQvPo+Csw0zbb7umyFIH
	 FjvioCNox4ufkssk9uWitRxftFCWlYZfpO9C1T5tcfpzYsLJrMSZ3qiURW1YcjEhE9
	 0+8sLkV0BMRahLHUs2DSpML2g4RncPpH6mrCMD7LmwLEXHqCRjdAKkv6DQgG/na/X6
	 ucYro8kNHwTfqzeYWlcW4lHL3dqLDxVzCIqDIvCcnv6xfbU/VdvVcIgWTGsk0JUSAq
	 P9iClqZXdBvq7dvgtkmTSKcqHbkJZGBa4QF89H1mQDsnUO4tWSPnhpGM7jM0RcnE2O
	 zMkRAo2LUDy7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903DACCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176269199358.4667.4434874707701047735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782a8df888efadd3a01623d4eed504152e04dd20bfcedea62f06b5dd16d37540
Date: Sun, 09 Nov 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762691993
