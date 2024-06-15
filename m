Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0FD2E400
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 15:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718465903; cv=none; b=Rm3201P7qVb/TOi+BqhvVfFeEiiAiPpNlv7mafkRHp5jng4pbPKBZrIPoJjCu+L1dfgScvMfiYoLPY/nvcTwvhGYYw2TdY32XX47x9RAq5YIKU6jZTd5EkVAotn/GZ9ITTIxiiBtSKagY4X05CyXimgD3kgq6Vb+9p7SEWUZrnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718465903; c=relaxed/simple;
	bh=rN1ieHOSYR8aB3PWbyhzn8zfFL1JDRwMSGRwSf+88d4=;
	h=To:Subject:From:Message-Id:Date; b=HogQvyi9qY2z9htvC/dBjSFWKWbEovDcWveSmbBJ7ZERv+veeyxMZhzXJgbl5hg54sxWkMNmyJGYisS7KoOs+bF2jg6vKTe/4FuPXlAb5eARag5n//J5wg6kfyE+Bo/bmWgU7fhbCPaMlHbh8A+uvIEkF+H0jeegBImImj/Ooz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwE56gSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwE56gSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74EAC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 15:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718465902;
	bh=rN1ieHOSYR8aB3PWbyhzn8zfFL1JDRwMSGRwSf+88d4=;
	h=To:Subject:From:Date:From;
	b=rwE56gSRxdHQ4hUBra8YEuq2aVlfegGrJP4lznnSqkHAr1N/N3AZgjNPmc3MaHURF
	 HexyJtuifJk60Ot8DRfURh+HDQa90wwt9lArdTqm0i3r5NRWozOp2CFKN2g9UQ2UYw
	 Ayb9F/ZB9kOJeDjUYGNzxVdiAmosG8NVEAG+4zGePmN3h4gXbHu2ZX3hAReMCMhYX2
	 j619OrAqNyH+QnjHZNq7TwegFnRYbN330Wn/qchSD+7JDWIbwfGOHLkH4wyi6teICE
	 d3rMKppCnLlkn+E38DvsHZpVL5O+d3S7mhqJV0fyNwpp1Wwkz+f7RNWQM9ZUoNMxBb
	 wGwY96Ytasn/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6BF9C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 15:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171846590280.12172.13347301249029806800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7384ec583523c4428302ecf4f1dc2592204146cdcf185953292481b674276548
Date: Sat, 15 Jun 2024 15:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718465902
