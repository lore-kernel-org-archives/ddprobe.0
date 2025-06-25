Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1376A367
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750813194; cv=none; b=X77KUzmSPBrdwfo8zGTJ47pkodcB8Dm0nh4J0KFBPn2+kXb+K7PDiWJKb8J3vgMzt/IXjXv2X0ZUKoEcx7HWRSTDnrS7n9E/y+jIeTsnJdnNEqXnx7fwVY1PBiivkOHal7qWi89OyvGhlYZ0mBpdRGjayUFZXMsVdtE7+WTaCSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750813194; c=relaxed/simple;
	bh=DbIw5EYFo884Cxz3FTIr1Xd4zlsODiSQ3M9knhkaSI4=;
	h=To:Subject:From:Message-Id:Date; b=q/C75D/HEeK1oJGypeNTYDJEuRISuo95c64tTP7isMwsFEBJsm02ygImrQCnWmJjxd9lnrKjT6OBzbPUYrrRaZsm/Ud4CzQneUmh1NwC76vcnQdwFW3Ewzr07EgTYMcB7q/FwHn6wQIAxQzszBCnUzMtHwZLdPNHRTsGkzJ2pKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgvAtTF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgvAtTF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4030C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750813193;
	bh=DbIw5EYFo884Cxz3FTIr1Xd4zlsODiSQ3M9knhkaSI4=;
	h=To:Subject:From:Date:From;
	b=CgvAtTF6FhKsNARzfIX66Lwkwq7sPXg7LUIbg3tLMNuNysB8iIUiBcrvKSkuSBY/W
	 Dncum26kC/OXeS6rkdjd+HgjyWFbBRJi5fxvEpEndL2F8ew2myMQ80bXDDzIqdQAAV
	 G9G/AdARv/sPOLxWqFZHJTILpda4P79jufw/tqLTFxhf2zgo0uscgu9lt9g6fSvO3Y
	 tDWt5tKIeUZmx1h+VGz17UzzXg2+itSRFKmN+jj3ibZ8zQfqIDxKdcNiw51hfNq/+d
	 BTQx52DNPcuhYguZKGnnM2GikdsmiT1JOS9iy+Y7CdazkG6Sgtwn7CplC0nxhdMPzo
	 puTQmdQc8xVtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D49C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175081319358.17069.11776700181903319469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4210bcf033d289f9decb2bb42f7fd912326592fbb90c48ac1b12d1f0c467a8dd
Date: Wed, 25 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750813193
