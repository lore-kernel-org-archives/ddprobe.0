Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58914242D7B
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784944234; cv=none; b=ErezPYmcv7Esi5hjtACJN+H8SIJ3ZS4JwkzFT8JMl1td4jD7ioO4+T5cYc0bsWSUprDebJl6rko8sCmIWH5Jhhkm8QZKnjh9wWW4HYDRKfMm4gc0nsq/PI8ixMU51+y8a12fBU8x58cBt3LR6IrkwVsutX/KXk6h3s+jcm/qmL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784944234; c=relaxed/simple;
	bh=dTtd0K8Yo2wqK65E7L2dyJGUrX4j3OhyKYq51Pvu4Ck=;
	h=To:Subject:From:Message-Id:Date; b=C0bOwlNlvcY5Jyz/OF8n3bP8d37/DCOLx6b+Lu2Ztf6IXHjQ+2sYObt0JAdFhBcqjrcVib5T5LBhaema+xRkTnC4597AmusgP4BGgrt2vXgwhNEcQPAvqcLkIjSqneoadxB5f+XwPv8bFlVp+2UkVTMCmlfGvjj1YCOHPUzlNiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAzbJpGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAzbJpGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB217C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784944233;
	bh=dTtd0K8Yo2wqK65E7L2dyJGUrX4j3OhyKYq51Pvu4Ck=;
	h=To:Subject:From:Date:From;
	b=BAzbJpGHzb1WFsON53jD2Qkzt8nfNyRCyBZPbLj2gKl5MM2CR7MDeROGt+GJ44e9f
	 Mp5CssHitQODOQ9xY3+5JiQjKMak1MrUTnhR/oD4zQAzEzV5TZK54dn9xD4I/REu1h
	 LYU/bDqrWY0sv1cZDi9HGDI6jCFGta6J/EQI5Uw53qqsNF9274CxxBC8t4VUx6YPuM
	 YumFbmqYpM6TvZsUL8yLXT7HolsI0OZ+p0NRZ7PjZxdCmfqvivZjktLh6tOXJzp9Ca
	 seh4C4rvzrh9NgfFBNaKU9oAfnOiLehD2XPIpBbv9OvVfaOIud/YFTR4fseODM/flo
	 zvyA+/B0PSULA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2E6C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178494423368.11981.56001536356333466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a19ddd0507a6813c167ab32af570d346d6976cd155e9a2a86985562a26d05ba
Date: Sat, 25 Jul 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784944233
