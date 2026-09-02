Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E6838F929
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788339034; cv=none; b=uiwMgW90WuYspC6XwINZWJOXHC4zY+uX8ga+VE777K5p2RacwvQsdG+pewF23PGJ5aZSBkUcA0fYC3aCOUMNXfJ2bW2tSP+052oN+eZIRCwUXmFi/3rGMzaXnINokQMxzitSjTOoLs3ybHWPruP8LRLCZO/etv4SmlNlScjAQDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788339034; c=relaxed/simple;
	bh=04GzECjLHwIJ3E1N0OGjeJIgsqJsdwOIKqqhmKOJZAA=;
	h=To:Subject:From:Message-Id:Date; b=Va5fHEhmQzSlbHMbOEoBLkMzJ5kLz5kVi6ORSumXZ5ZMEiWs8qj7YSNBBDw9z2c59FHHC2vB9VkukhFjCPjt4vRaY8JDfnLV7kiHZps7lLFGC924aSPM/HDZgCDn6SGaosFnTn4aZZeVExsyuFzaXlYrrkXrQlOR7bOZnB3LT3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCErvHbn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCErvHbn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBEAC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788339033;
	bh=04GzECjLHwIJ3E1N0OGjeJIgsqJsdwOIKqqhmKOJZAA=;
	h=To:Subject:From:Date:From;
	b=nCErvHbnQ7qncV4W853sAANy/W8eHzyUoObZT8jykMorImMA8VjWlyYN9xkTXSW6F
	 JGmZEocLSsrJcpRS5pNz1jfLcq/9h8+z2M2NcLlyCMDIG1VlK1BRpzkgqcNALrgGVC
	 vnku5ifczCR/eTDl7LnYJtc3Cow//uFZJNtMnAb7juqv5L91fnluEzlx9QXYI1Yeuh
	 ovF39A10UILQgJ+UkfP4Xj27nlHD4GoYde1PDhoo+YBZEhd9jFlo9QdQoRxLO1k7ql
	 MDKJvdC1HPZIULX1SiwDlST/wGlcXC6+I1znVqCawxhWQYmKLhN1fZdQhftD3DoIlK
	 q2q0iz9hibR3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B90C624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178833903368.10396.12965747890673343824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81dbd11be3b0b48e8c56ab151e5db022d9cb82eb5e193264eb9e8a006161259
Date: Wed, 02 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788339033
