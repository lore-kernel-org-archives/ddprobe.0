Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1223CF047
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 23:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782775714; cv=none; b=DkNWKOyjmD0hwwiTXx+lhnkiMFfQY1ofDUcj87z8XljS50LBCV7e9dB5SiXhpIS9OIO7Zi4LyTVl69RplDKFv8ra/6epJ2KtzurWm2fgf6G/pvMjwSKuqn+3sxCip2txQ9i/CsoxdOU1ufpUL1AMImlQsENDrwrxfUpEJUEtV90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782775714; c=relaxed/simple;
	bh=Qdp2Mtuu8Uwpsnu1VWroetQv4OzCuTDtLY8l//+jT8k=;
	h=To:Subject:From:Message-Id:Date; b=IlPs4gCVATcr/H5s5oReYDLd1uBaQjfl0nC1aEkstpm2S79gx3FXyykGC4sfTqX4JoRDHwWGYfLPG7yVvO76sw7OiSHb+nxdPzK9Rq2wrRt+z3kVK31M4m5BRnzt1G7hyh2rBMGxotLNeMo2kds67ixcsfClvxIxCFHOCzXd+h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6WrYF2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6WrYF2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3820C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782775713;
	bh=Qdp2Mtuu8Uwpsnu1VWroetQv4OzCuTDtLY8l//+jT8k=;
	h=To:Subject:From:Date:From;
	b=T6WrYF2JO09Y+Fujn4N0xAq+kPuDh4prF+mZyCU1JpKDA8yBAp1qbnO44dd8Z25ev
	 ltodqTGBasaJCj2lEwKDE1701s6HfXqWzl4LkJ3ibGe6Pd/Y0iwI/tBcd2MbiROE2Y
	 o6FbCH0bA9f7i1eLNw+ctPUxX1uE0MgdXZWIRuKjXqivMer3QqUb6vod08MZR4e6kD
	 v9ZLyiYzLF9WVjvLhJVHMgxXtu+0+1LPDZoEImhEYfmpLzgNB3UFYEfLP8OQLMCFCs
	 VOy9YVY3SLz4cvW/NEPLlB6T0x1q2313GR9mgpPkDPxfa6XbZSogwE94SHn2G6BPty
	 o3GAJHHiYCtnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7E4C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178277571368.26633.12042381437522059190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6f9ab7e2a01545e0414f5e42d4af4352bf2397668ba9307f98c6feb851fccd
Date: Mon, 29 Jun 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782775713
