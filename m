Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CF2155C82
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748185794; cv=none; b=kLSm2y57ZSjU0m3RFQkfxCcXzG9ifwtNWVPETJ4QvYzV6vritx6TM5ZqmZ3chrzh0taBNoHHuThdCMOZJDCxSfOIbw7ZRtau5TIBBAjXMkeB4ehpF7Z8Ch/1bYD943YZVKcWKrLcD0PCSPq7MWz5YQeBFIRZYTO5xI8l0FewYYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748185794; c=relaxed/simple;
	bh=52OOfJRtwmSOuOxZE1w/jtC4Ok8bL5ZJeGM62E4GhX0=;
	h=To:Subject:From:Message-Id:Date; b=VWEY24JxglEWFCE82mrRJlXgz66HIklULeslXsL5BzhQqp3Rfo4qBSc8XnWvqmmYkfq8ppfzBhnE3JX7vBy7o3+0LXAisl4ka74yS1vqxK35EbKbxFhu2mp4f+/jaxBfmb+MuV5hjYgxBp+hcLYpJmIFU1sbAjfH9tcE8iWrlws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcS23Mm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcS23Mm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA98DC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748185793;
	bh=52OOfJRtwmSOuOxZE1w/jtC4Ok8bL5ZJeGM62E4GhX0=;
	h=To:Subject:From:Date:From;
	b=bcS23Mm8OZwmt/zeYvTsyiRWaqYuhhIpG72O4j+Ox6nISJEA93vhKrrcmlAMkYUB6
	 zuFojOYzNvoDj8t3oncQ38TdtIxN0aiAGPPrSZwj+prIm8ZRTFKzvfwkyhLZz69UFx
	 QswjnDOHV7kJDRY3TzUbdel57KVopPp3MangwX+x/nxs0VtE0SgcFJVdmnqG6gM4Td
	 pO/QfF8sKqbztBYktjAnYKdpj9YkonDEK5k+apyWNv6aM1XAI8bokUQdH+nroRFmoE
	 M5cnV/bb4ajjeLzR7IS0iS14LknTLk2vcm1R1zPa+qfsMKSxMoBgyeyrh5yiUDbCw3
	 G+D+Llh8qE8SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E66C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174818579357.7519.17988438963697931234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 069a5787713279b284d7bacb4b5ec368930ee0a2e058e326ecffc26b170ae9e0
Date: Sun, 25 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748185793
