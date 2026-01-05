Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CBC30C353
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767636234; cv=none; b=EnGMa9eYgEIniSUOyBe5DP55yXOmWT+DE/WXiACjjJLTeuNLp8IDvYQddGw+eWQxLvCNFaL27w9qCBWIJqOVtI/CmJplb4gYsCymFhNUgYzqte0/eCKNvQt++d5kCPt4vTsiMwe3yJ2zVonffpKDUmsphO7DO+liRs0HrAnTl/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767636234; c=relaxed/simple;
	bh=Q950rp5cJtrIOBKBxyhjFD9syVQkz6bdmEWB+h/Ds00=;
	h=To:Subject:From:Message-Id:Date; b=OCAUX7sBhVLDr6MrY1JulunoYxRohgq/HHDPhHYrcRZrsscxwNsXOgfpXJVW8isiMTyfM67SG3/g00Wx+gt7WwlTUCZvcjLVXa1xRFgA8o+TYht/vugK4u5BdeYfAA6D7yFZAM3DNDPZghmPc6g1dJU9JEd1xSc4aXQAU4/kqbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9siurck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9siurck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5CDC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767636233;
	bh=Q950rp5cJtrIOBKBxyhjFD9syVQkz6bdmEWB+h/Ds00=;
	h=To:Subject:From:Date:From;
	b=A9siurck1rKiHyDQZ2FfWWYB28ZYoJhUamHnLgl4vVoMcG4YUylS1GYcQpVpzq5et
	 Bdff15KZLw3sGjlB6cpHwDS7cffIxnEX6CVZt3xuhGwBfc69eESLfK0HPtVWMJrQoy
	 kZBQog/4q/91B3B49AZ3QYDenCs/Vvte8NbJbt+MXa3Oz7qcQGTJbepjTQ/NtxQ9Z1
	 4hBTtRz4gtDwUacCKHVSjZAQlQlE5/yw81J4mXnG6uRqtL91ABE4kKdABMzynf5cb7
	 hAMgMSAd5wLsuPS+B7QB0pgkbSJrZQh4+cL23oJnvg3sFReUujbJ3gAa8v7ix4Qs6Y
	 d34a8e7/o648A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D434C79FAD
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176763623362.2623.11783352259368583857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 729e81b93d9361834ce8b56ef809cde01421e0d0541c9295f163cde04921210c
Date: Mon, 05 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767636233
