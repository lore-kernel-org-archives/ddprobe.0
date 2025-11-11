Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139553587AC
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762861194; cv=none; b=gTsTL0GEEiYvFJZdGJJlMAgfPHS3L1Q8KyC7+6bk/yoPmbW7dgV9oqQe6C1HevRapkSotJiPA3KkoXwnlkgGBmTh6/2X2uLdFopq7f5Iwy09LVNA4fPq3dE337BLjlYZDNJaSeYEpG4V3MAnVCi4pGMbwUHNjuuZlhKfpeYWNuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762861194; c=relaxed/simple;
	bh=pAojVLEYQXE8nRR3oGNYPwUmXqaDC/6wc5cblgtZdnk=;
	h=To:Subject:From:Message-Id:Date; b=IxDYrFE3OTsmGMcD/5HiRhrrW2yI2zH5ws3734b7F0xia4akluoOj9cn0FFvzFNTBOXWOm0xKZ9JcOSGut4syuFrrMH4AgAM1ZcxDTgQY+zibuOCPYmY+eJMP3nzTq24NtoXqVk8/kQQFtZJ09VU9KI3Mhf0y6IDfnZMvaio39g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+2DgW6o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+2DgW6o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B454C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762861193;
	bh=pAojVLEYQXE8nRR3oGNYPwUmXqaDC/6wc5cblgtZdnk=;
	h=To:Subject:From:Date:From;
	b=d+2DgW6oCZ+3mvmteCJ7OwXK+3Un3l9ykz3IXa38qX8D/LCUyvkAfMGCjPawOxziu
	 swNUU/hX65X/GEEtOEAvfRfDZZmydssullE9GB5bKXZ8YjJCbbcM76y9qp4FH8jPie
	 IJbhFb0AiP6uVRYhn4yK1rBmGKGxeUGQ9OWOD/MncQaXmxHICUC2UEivKyNCZfzuJm
	 1SdA+yB0h0o5uS9y+M38aWjx0KC4deSs+70HuLnhwrNy4riC4c7dos48VoJrjVuT7s
	 BsXmUjhENtGkuwsjXibCVUCRBZggtvS7/p5/XvjE3atjsZd4/G3lsw8vNfZh4XWI/f
	 VjVUvfXBszXMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907BECCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176286119358.1941.896997934224304038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b59582f2687c0eaf6fc9fee6df9f4ac744da65361edd6243c8a3b82f0220a999
Date: Tue, 11 Nov 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762861193
