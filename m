Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBC34683
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 04:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735964754; cv=none; b=t+ISB1WDAibs/9roFUEGJmdmg1koxhJCM8Svyt5pUZPA05ZY7oEtPKohM16Dir8yX082Qy6Ezq08bZJH2xVsnEhLt90PLHzfG4XfA8g6Hl3t/Jg3sA19Mec3gxpUQHhVw3/UmANwz4nLZ7FYNq9ipyawwIwayVkidP1HmcMKXLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735964754; c=relaxed/simple;
	bh=VPISs4rsJDQx0Tqc9RfaI7rNXaqR+Djt0OFLtYvaQrQ=;
	h=To:Subject:From:Message-Id:Date; b=kj2SKZLfy/jsjIgkGOj8HYCeiIVFoxGyG4Nhrfl+jFzHZSv6mbSsXOczBKezwR5EcVLhTVKOYrdLPOI7rf9YKkWia2N1RzTPwSCnd8A28PeZctFGt3pEXRRvqlAR4hd0kx7l+JT0lWg+49vY7V9FTGnTnzuINAxStv/P6RN4PZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vR75BTX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vR75BTX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF2C9C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735964753;
	bh=VPISs4rsJDQx0Tqc9RfaI7rNXaqR+Djt0OFLtYvaQrQ=;
	h=To:Subject:From:Date:From;
	b=vR75BTX6rO3WKkP/FeR+mI7atBHXy1NMhJj1BNy9u3VSRru9DbNxdUlj2duE+/gPF
	 cwPs1fCD8dd4WAqE6T1FP8bvP78Oe5As/Wl4IQOYOnKkxpG0nelNfgxA4DoPWNkOXl
	 NiYaqAvJo/PD+ukkxSYQgGBTgqTnJtLFQCMn0Y0eUt+f23SNu8UPnLd5Vxs+NXzVvR
	 KNcBmneRi+E0yY8j/blc6AvKKyCaCKv7YDu/k62p9g+ssYTw2v6mAy/bxAvrRA9unx
	 3XFV3knXFqn3yNz0IXyw0oe8LW8G5T7eetb6AOdcsHwSy02wv6vWW5jaOOtr0x6rT4
	 dc/Z0jf5fxA5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E350E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173596475360.12777.3087591866701263262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a1d0496b86b0f2a42d446e6dd1bea735266bb3aa1ebfcf6e4aad97374b78f5
Date: Sat, 04 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735964753
