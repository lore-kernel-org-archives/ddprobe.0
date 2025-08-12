Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D5A1A9FA6
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754975394; cv=none; b=ZKpVi6kaS9LY6YMNnujvuq/CEqDt7crebf9ApGxcE25aDMhH6J8eciBf0IYkk2auOEaLPTU9AE5Gt+sdzxhQSDXNHDXPXAWCeN59qPvkpIwCeB96819Zn2qBWVi1U4Y8o+CJCbAPzRMfymj90KXihYKNqf2t4Z8zK6h3FSsYTeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754975394; c=relaxed/simple;
	bh=MEOU/XxC3om6wSBYpocn4CStlfX7CRC3os6rJ2JBnJ0=;
	h=To:Subject:From:Message-Id:Date; b=Vfc4pvZYFLjtd3EWBjiCiOldiPTlhufz+M+YNfBcfKdL8K2afknRcwye0z9CpBM2TehvHacF0jBRheyJFfSdK6eaTgLUaVU4hD5sJwrf3sp7bd5tUg46poAiLmZlLOhlNpTcwbbny/1vXadIaWx8e0pUQHfocuD1+XqlQfnaEUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJTNIjwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJTNIjwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BC2C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754975393;
	bh=MEOU/XxC3om6wSBYpocn4CStlfX7CRC3os6rJ2JBnJ0=;
	h=To:Subject:From:Date:From;
	b=UJTNIjwTyprvZPIaKf0KppSOo9wgCvkAqiSeirywUGN4cGUEMXP/ENJmb6KMV1YX1
	 TeHgyBpt4YkoPJcJEwTEaT8IsBSrpJey9z2paDdP2orU5MuIe/176vsh4VUPlzkcKQ
	 79DYZnCFmGzlc6a7bcm0oBljQgvEHByABmwTJ58P/aEDfW2ZZXL2F7BIaOfuTGhyoL
	 8L0E47QxbGNX+nZFj3WYAuBmf4Y33k/Sn3pbXkUqDwLVbdlyyfh9aNij+fB4zIBZZs
	 kH2QxeQH9t3Oehs/vUYY3zQhrjKDaAVdtU76e/NR2RVchvcf87ujTkD6KjvPeRAvhK
	 AXfm13Wb3nczQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C62CC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175497539362.13034.921633472195273109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e6f14fc29dfc34c0112460cc863f14aaefd77c7b1686d2fdcb7378855936224
Date: Tue, 12 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754975393
