Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1C2261B64
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762333794; cv=none; b=suFt/6HsgClFGE5siCTEL7r3xFB+/BLgj88tUChu9KZTs22THAYa+ffogXNPQ0Rav1kJ3xxltrOpzUCeT/PAI7oxie/OUaBp2LxybhDuyQEjqvKjh9ZOunnzwRqSGPYvp2xdEEupM4cgQ9P8eaz47KAsWURmoXYPr0COWnIb4KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762333794; c=relaxed/simple;
	bh=smb4Pbs9FoGramNnr0ZFf+AGg5Z5JWLc/0ZA1KhGh2E=;
	h=To:Subject:From:Message-Id:Date; b=A1x7xWPwcyz/tZ7f6yVm+utM/ShZ2+easZagbn87do0iXC50Kl8XA6PnqNuGrCZpoFothbMtIs2DOjZNVGQvqW666Eysm3LMmc/zW8Alaj7OWO5PyreNdF4Uz9Ayx5pAr2DB+aOIVhLOX9zRRWC5qnOSeoOqbEp69CfM7oY9Pa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWBtoiUQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWBtoiUQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9431C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762333793;
	bh=smb4Pbs9FoGramNnr0ZFf+AGg5Z5JWLc/0ZA1KhGh2E=;
	h=To:Subject:From:Date:From;
	b=RWBtoiUQ32kw9yYizQPscjz94PaGjO4/7QiyqSydl7POZgzf28XZMXiTAQOiYzvd7
	 yiQrgAH4rshuCpu5kBAOh7YeNBhthSl2BJYJWnTwMA1YxoGfE3bhj8Gh1NWfq0cjxR
	 D/cl/ESxO8LDzdigScJmTeDqmA9umEBIFNpRkHM/gILJ3i/WDmqhB9T0Jm3hHhkvYR
	 ZawTamaxyScUAmt1waG/y7R8d0+O4DgpCbI8dyd/Lumj62MA5nJUopIUclIQ48a6nI
	 F5lauRghY5zF3gtqH0fEOaPyIgN1lP7We23Ao35tKNKv9t3soDNaCrT/jbr1htF4Q5
	 6isjWAGsd9Z3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A27CCFA07
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176233379361.12589.4974322310347664662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f317575953e98d647f9b1d7ad4f3bfb3ee464035b5dda03a41eb6eee58e3fa95
Date: Wed, 05 Nov 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762333793
