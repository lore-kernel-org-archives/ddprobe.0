Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE112E040E
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 14:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779027035; cv=none; b=XZqv6mfClBymeHKXDMBW7B+M4yy8xl+VMEYVXQFThN8A9x/+ClEmLzuOwwFVojGMTjjcsTVbEFz7YXkfYttBxqyvSQll/cF9TE30sT3K/MNbwmBOePakCSvjkk+P6eUu9XKr+nZkcOPZcgeLLmbsZMp5B0K8COIIxfhP2dmOn3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779027035; c=relaxed/simple;
	bh=CZr28l6jxtQS2ZAg6/926Uv+L7nJji+/8h8U/yOXPCE=;
	h=To:Subject:From:Message-Id:Date; b=kYE1rql8ceMaO18yW5cSbWyB07Sp6f9aanR3TxZnkKg9YZRaIWtpqbQLQOKrFdTkW/vmpNndMsbuQKoYBfapV3UA6YkFbfDqM3caauBZP9sLUDMLMqaM+/A7Wn32oi5Qps25r3UeCGFAhRv7ERCgtpBu2jjtbCw/z0ZPt1f9vkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZS1lpXyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZS1lpXyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1B2C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779027033;
	bh=CZr28l6jxtQS2ZAg6/926Uv+L7nJji+/8h8U/yOXPCE=;
	h=To:Subject:From:Date:From;
	b=ZS1lpXyjd0bMzurKGzohA1cn0K3f0gIhlpuOUQ328eMfh3ljyeQ08gssccZ8DK4dY
	 xS1sMBU75or8wrzot0upDHQedum/GjdDzgiBFjhNp/iSkU6qNYRBxqBBRqh3KyVCVt
	 ecxVYVrFEhucO5xJGtQllsuYZ/Q7ppDtjR5EnEEo2QtdZfoxIyOwiHqOXwETc23AdB
	 G4QB8wqVOvO2a9Vto310DqTHxc1oh67P3oSteiYcof7oTVlglgp7WBIMYoZJnoCSn7
	 kDvWlkyUyWd0DAQeUKiEhIpgPmJCvkaTbB7yhu6lfdOELzFKxUB4iV5XJ5V5WHTXFD
	 kuI8Ac6aO6orA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B94F2CD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177902703372.9821.4654793422920525473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bde24b2445fceb6f6e3a8f101f3eec0335717d22884352f903a750c135772ee
Date: Sun, 17 May 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779027033
