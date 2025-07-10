Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2D014884C
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752185993; cv=none; b=tZEdVqcz41FC1uBceaA+exT7qKdGsc6df8S5xyFsbb1bc8UlI2yEVNhpwvlBAKDn1SkqO7S/VKI+ELt4qE7Y/5zGg6t8OPOMr9oOSq5eZHMQZmhrEU+ablUVFVpn9FAGzr7r/jhsxDrMGzoN67hh/rLu/NqnII+8jbd6MZZCLMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752185993; c=relaxed/simple;
	bh=12hqD5ozqa3jLcNYtLSBYAIQPAoO5J4v2Dw6UvjUpOU=;
	h=To:Subject:From:Message-Id:Date; b=kzN44i7GjsJYZC8pxwwlwKwI1oJv9z01DKYp0lJ05VBd8m7327AZctylHAzO41gxFOWqc54IgFNWDktHmJp41d0CffDUoFkQM4Htcvjv89UfFlJxrirHH1rjTVaUXp8P8lHGg6rK7WmvcDjvAfcCbk3mB+Qfe9CGaJMT0nzqtr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVGpXgml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVGpXgml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3FEC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752185993;
	bh=12hqD5ozqa3jLcNYtLSBYAIQPAoO5J4v2Dw6UvjUpOU=;
	h=To:Subject:From:Date:From;
	b=RVGpXgmlKBuuJZMylV8Nbrpm2feDuiFbHF0O2CuD2z6LC35I2ofJQIIPxgnBdsB0y
	 YdKagIPp2yva5AplXhrvQGHIsUbrGECJpr7/BOrxL0xDRLw/YQMgzARSic7yfspdHH
	 IJdvFBpAZxtUJGYWRCYZBIFzRWN5ELxQx31V5DxrV/C1mWzhE37R0bPynsbFnhxr5k
	 NoxSd01QMdyMgtcwLUSFz90sKXbLE8cGpGJsy2K/t5i/MzYL+odMtO0b7HC1euVNLA
	 5SW/9gZ1xt/s1UFA4bQQ4yrgDS74l9v7nKX0YMk02nAqSKYvbp1RcQ27QxLrYR0dnE
	 II6qL5vy7fzrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDF0C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175218599357.8094.12524254225064840765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450988f06e3a1fe092e3b9c40a341d49ceb9d2285976a60973a429d0a35d2240
Date: Thu, 10 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752185993
